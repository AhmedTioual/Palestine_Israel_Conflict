import requests
import time
import os
import re
import pandas as pd
from concurrent.futures import ThreadPoolExecutor, as_completed

#This function for process each excel file and convert it to a dataframe
def process_population_data(file_path, year):
    # Read the Excel file
    data = pd.read_excel(file_path)
    
    # Drop rows with all NaN values
    data.dropna(how="all", inplace=True)
    
    # Skip the first row
    data = data.iloc[1:]
    
    # Extract column names with NaN values in the first row
    first_row = data.iloc[0]
    columns_with_null = first_row[first_row.isnull()].index
    
    # Drop columns with NaN values
    data.drop(columns=columns_with_null, inplace=True)
    
    # Rename columns
    data.columns = ['LocalityCode', 'LocalityName', 'Total', 'Male', 'Female']
    
    data[["LocalityCode", "Total"]] = data[["LocalityCode", "Total"]].astype(int)

    # Add year column
    data["year"] = year

    rows_index = data[(data["Male"].isna()) | data["Female"].isna()][["Male","Female"]].index

    if len(rows_index) != 0 : 
        if len(rows_index) == 1 :
            data.loc[rows_index,["Male","Female"]] = [(data.loc[rows_index,["Total"]]*0.5).astype(int),(data.loc[rows_index,["Total"]]*0.5).astype(int)]
        elif len(rows_index) > 1 : 
            data.loc[rows_index,["Male","Female"]] = [(data.loc[rows_index,["Total"]]*0.5).astype(int)["Total"],(data.loc[rows_index,["Total"]]*0.5).astype(int)["Total"]]
    # Convert specific columns to integer type
    data[["Female", "Male"]] = data[["Female", "Male"]].astype(int)
    
    # Reshape the DataFrame using pd.melt
    data = pd.melt(data, id_vars=['LocalityCode', 'LocalityName', 'year'],value_vars=['Male', 'Female'], var_name='Gender', value_name='TotalPopulation')
    
    return data

#This function for append all data in one excel file ----------------------------------------
def save_to_excel(file="C:\\Users\\tioua\\OneDrive\\Desktop\\BI PROJECT\\Data\\NumberOfInhabitants\\populationData.xlsx", data_frame=""):
    try:
        # Check if the file exists
        if os.path.exists(file):
            # Load existing Excel file
            existing_df = pd.read_excel(file)

            # Append new data frame to the existing data
            updated_df = pd.concat([existing_df, data_frame], ignore_index=True)
        else:
            # If the file doesn't exist, use the new data frame
            updated_df = data_frame

        # Save the updated data frame back to the Excel file
        updated_df.to_excel(file, index=False)
        print("Data appended successfully.")

    except Exception as e:
        print(f"Error: {e}")

#This function for getting years from data source (www.cbs.gov.il)
def get_years():
    try:
        # Sending POST request
        response = requests.post("https://boardsgenerator.cbs.gov.il/Handlers/WebParts/YishuvimHandler.ashx?dataMode=Yeshuv&language=English&mode=Filters&subject=Population")

        # Check if the request was successful (status code 200)
        if response.status_code == 200:
            # Parse and return the JSON response
            return response.json()
        else:
            print(f"Error: {response.status_code} - {response.text}")
            return None

    except requests.RequestException as e:
        print(f"Request error: {e}")
        return None

#getting years from json file     
years = get_years()["Years"]
years.reverse()

#this function for getting token from (www.csb.gov.il) -> we use it for donwload data 
def get_token(year):
    try:
        headers = {
            "Content-Type": "application/x-www-form-urlencoded",
        }

        data = {
            "mode": "excel",
            "drillDownMode": "undefined",
            "board": "WebPartYishuvim",
            "query": '{"mode":"GridData","dataMode":"Yeshuv","subject":"Population","filters":{"Years":'+str(year)+'},"filtersearch":"","pageNumber":1,"search":"","language":"English"}',
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
            return None
    except : 
        print("Token Error")

#this function provide size of file (KB)
def get_file_size(file_content): return len(file_content.content) / 1024

#main function : this function for automate process of downloading data 
def automateExtractionData(year, max_retries=6):
    try:
        headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0'}
        
        # Retry the request up to max_retries times
        for retry_count in range(max_retries):
            download_response = requests.get('https://boardsgenerator.cbs.gov.il/Handlers/General/Downloader.ashx?type=excel&token='+get_token(year), headers=headers)
            
            if download_response.status_code == 200 and download_response.content and get_file_size(download_response) > 3: 
                # Save the downloaded file
                new_location = "C:\\Users\\tioua\\OneDrive\\Desktop\\BI PROJECT\\Data\\NumberOfInhabitants"
                file_path = f'{new_location}\\IsraeliSettlements_Inhabitants_data_{year}.xlsx'
                with open(file_path, 'wb') as file:
                    file.write(download_response.content)
                
                print(f'Data for year {year} downloaded successfully')
                return True
            else:
                print(f'Failed to download data for year {year}. Retrying...')
                time.sleep(5)  # Add a short delay before retrying

        print(f'Exceeded maximum retry attempts for year {year}.')
        return False

    except Exception as e:
        print(f'Extraction Error: {e}')
        return False

#this function use concurrent.futures model for downlaod multiple file at sometime
def automateExtractionData_parallel(year_start,year_end):
    try:
        with ThreadPoolExecutor(max_workers=20) as executor:
            # Use list comprehension to submit tasks to the ThreadPoolExecutor
            tasks = [executor.submit(automateExtractionData, year) for year in range(year_start,year_end+1)]
            
            # Collect results
            results = [task.result() for task in as_completed(tasks)]

            # Iterate through results and print a summary
            for success, year_result in results:
                if success:
                    print(f'Data for year {year_result} downloaded successfully')
                else:
                    print(f'Failed to download data for year {year_result}')

    except Exception as e:
        print(f"Error: {e}")

#this function for append all excel files
def append_all_excel_files():
    data_directory = "C:\\Users\\tioua\\OneDrive\\Desktop\\BI PROJECT\\Data\\NumberOfInhabitants"
    files = os.listdir(data_directory)
    for file in files : 
        file_path = data_directory+"\\"+file
        year = int(re.search(r'\d{4}',file).group())
        save_to_excel(data_frame=process_population_data(file_path,year))

#Execute automate Extraction Data code : ---------------------------------------------------------------------------
automateExtractionData_parallel(years[0],years[len(years)-1])
#Append All Data
append_all_excel_files()