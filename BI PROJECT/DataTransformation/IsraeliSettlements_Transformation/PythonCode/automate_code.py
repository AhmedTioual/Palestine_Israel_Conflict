import requests
import time
import os
import io
import pandas as pd
from concurrent.futures import ThreadPoolExecutor, as_completed


def process_Settlements_data(data,year):
    data = pd.read_excel(data,skiprows=10)
    data = data[['Locality Code','Locality name\n\n','District']]
    data.columns = ['Settlement_ID','Settlement_Name','District_Name']
    data["year"] = year
    return data
def get_years():
    try:
        # Sending POST request
        response = requests.post("https://boardsgenerator.cbs.gov.il/Handlers/WebParts/YishuvimHandler.ashx?dataMode=Yeshuv&language=English&mode=Filters&subject=BaseData")

        # Check if the request was successful (status code 200)
        if response.status_code == 200:
            # Parse and return the JSON response
            return response.json()
        else:
            print(f"Error: {response.status_code} - {response.text}")
            return False

    except requests.RequestException as e:
        print(f"Request error: {e}")
        return False

#getting years from json file     
years = get_years()["Years"]
years.reverse()
print(years)
def get_token(year,max_retries=5): 
    try:
        for retry_count in range(max_retries):
                headers = {
                        "Content-Type": "application/x-www-form-urlencoded",
                }
                data = {
                        "mode": "excel",
                        "drillDownMode": "undefined",
                        "board": "WebPartYishuvim",
                        "query": '{"mode":"GridData","dataMode":"Yeshuv","subject":"BaseData","filters":{"Years":'+str(year)+'},"filtersearch":"","pageNumber":1,"search":"","language":"English"}',
                        "filters": "",
                        "cartDataImage": "",
                        "cartDataImageOnly": "undefined",
                        "lang": "English",
                }
                token_response = requests.post("https://boardsgenerator.cbs.gov.il/Handlers/General/ExportData.ashx", headers=headers, data=data)
                # Check the response
                if token_response.status_code == 200:
                        return token_response.text
                else:
                        print(f'Failed to get token for year {year}. Retrying...')
                        time.sleep(1)
    except Exception as e: 
        print(f'Token Error {e}')

def get_file_size(file_content): return len(file_content.content) / 1024

def automateExtractionData(year, max_retries=10):
    try:
        headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0'}
        
        # Retry the request up to max_retries times
        for retry_count in range(max_retries):
            download_response = requests.get('https://boardsgenerator.cbs.gov.il/Handlers/General/Downloader.ashx?type=excel&token='+get_token(year), headers=headers)
            if download_response.status_code == 200 and download_response.content and get_file_size(download_response) > 3:
                #result = pd.concat([result, process_Settlements_data(io.BytesIO(download_response.content), year)], ignore_index=True)
                data_result = process_Settlements_data(io.BytesIO(download_response.content), year)
                return True, year,data_result
            else:
                #print(f'Failed to download data for year {year}. Retrying...')
                time.sleep(2)  # Add a short delay before retrying

        print(f'Exceeded maximum retry attempts for year {year}.')
        return False, year,"Null"

    except Exception as e:
        print(f'Extraction Error: {e}')
        return False, year

#Create an empty data frame
result = pd.DataFrame()

def automateExtractionData_parallel(year_start, year_end):
    global result
    try:
        with ThreadPoolExecutor(max_workers=30) as executor:
            # Use list comprehension to submit tasks to the ThreadPoolExecutor
            tasks = [executor.submit(automateExtractionData, year) for year in range(year_start,year_end+1)]
            
            # Collect results
            results = [task.result() for task in as_completed(tasks)]

            # Iterate through results and print a summary
            for success, year_result,data_result in results:
                if success:
                    print(f'Data for year {year_result} downloaded successfully')
                    result = pd.concat([result, data_result], ignore_index=True)
                else:
                    print(f'Failed to download data for year {year_result}')

            #Save Result data frame in a single file 
            result.sort_values(by='year', ascending=True,inplace=True)     
            result.to_excel("C:\\Users\\tioua\\OneDrive\\Desktop\\BI PROJECT\\Data\\IsraeliSettlements\\IsraeliSettlements_Data.xlsx", index=False)
    except Exception as e:
        print(f"Error: {e}")

automateExtractionData_parallel(years[0],years[len(years)-1])