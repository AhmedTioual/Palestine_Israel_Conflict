import requests
import time
from concurrent.futures import ThreadPoolExecutor, as_completed

#---------------------------------------------------------------

def getNameFromUrl(strUrl) :
    # Find the indices of the start and end substrings
    start_index = strUrl.find("by-date-of-incident/") + len("by-date-of-incident/")
    end_index = strUrl.find("/all?section=overall")

    # Extract the substring between start and end indices
    extracted_string = strUrl[start_index:end_index]

    return extracted_string+".xlsx"

#---------------------------------------------------------------
def automateExtractionData(url,payload):
    payload = payload 
    headers = {
        "Accept": "application/json, text/plain, */*",
        "Accept-Encoding": "gzip, deflate, br",
        "Accept-Language": "en-US,en;q=0.5",
        "Connection": "keep-alive",
        "Content-Length": "451",
        "Content-Type": "application/json",
        "Cookie": "deflect_challenge3=JSa+O9xGLjM7TJb4NWQ0Wc3YmwYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABJwAAAABlc/i/; deflect_session=sSA%2FxHmWe58AAAAAZXOWTw%3D%3D",
        "Host": "statistics.btselem.org",
        "Origin": "https://statistics.btselem.org",
        "Referer": url,
        "Sec-Fetch-Dest": "empty",
        "Sec-Fetch-Mode": "cors",
        "Sec-Fetch-Site": "same-origin",
        "TE": "trailers",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0",
    }

    response = requests.post("https://statistics.btselem.org/php/download.php?lang=en", json=payload, headers=headers)

    # Check if the request was successful (status code 200)
    if response.status_code == 200:
        # Save the response content to a file
        new_location = "C:\\Users\\tioua\\OneDrive\\Desktop\\BI PROJECT\\Data\\NumberOfDeaths\\"+getNameFromUrl(url)
        with open(new_location, "wb") as f:
            f.write(response.content)
        print("File downloaded successfully.")
    else:
        print(f"Failed to download file. Status code: {response.status_code}")

#--------------------------------------------------------------

def automateExtractionData_parallel(pages):
    try:
        with ThreadPoolExecutor(max_workers=4) as executor:
            # Use list comprehension to submit tasks to the ThreadPoolExecutor
            tasks = [executor.submit(automateExtractionData, key,value) for key,value in pages.items()]
            
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

#--------------------------------------------------------------

pages = {
    "https://statistics.btselem.org/en/all-fatalities/by-date-of-incident/pal-by-israel-sec/all?section=overall" : {"query":{"bool":{"must":[{"bool":{"must":[{"range":{"EventDate":{"gte":970185600000,"lte":1696633199000}}},{"bool":{"filter":{"term":{"not_inc":True}}}},{"bool":{"must":[{"terms":{"EventRegionName.key.keyword":["b40f813","5f6a04e","65b3a57"]}},{"terms":{"tot_nifga_kibuz.key.keyword":["75c9ac7"]}},{"terms":{"tot_pogea_kibuz.key.keyword":["4d9ecf3"]}},{"term":{"not_inc":True}}]}}]}}]}},"sort":[{"EventDate":{"order":"desc"}}],"aggs":{},"size":10000},
    "https://statistics.btselem.org/en/all-fatalities/by-date-of-incident/pal-by-israel-civ/all?section=overall" : {"query":{"bool":{"must":[{"bool":{"must":[{"range":{"EventDate":{"gte":970185600000,"lte":1696633199000}}},{"bool":{"filter":{"term":{"not_inc":True}}}},{"bool":{"must":[{"terms":{"EventRegionName.key.keyword":["b40f813","5f6a04e","65b3a57"]}},{"terms":{"tot_nifga_kibuz.key.keyword":["75c9ac7"]}},{"terms":{"tot_pogea_kibuz.key.keyword":["a14a397"]}},{"term":{"not_inc":True}}]}}]}}]}},"sort":[{"EventDate":{"order":"desc"}}],"aggs":{},"size":10000},
    "https://statistics.btselem.org/en/all-fatalities/by-date-of-incident/israel-civ-by-pal/all?section=overall" : {"query":{"bool":{"must":[{"bool":{"must":[{"range":{"EventDate":{"gte":970185600000,"lte":1696633199000}}},{"bool":{"filter":{"term":{"not_inc":True}}}},{"bool":{"must":[{"terms":{"EventRegionName.key.keyword":["b40f813","5f6a04e","65b3a57"]}},{"terms":{"tot_nifga_kibuz.key.keyword":["a14a397"]}},{"terms":{"tot_pogea_kibuz.key.keyword":["75c9ac7"]}},{"term":{"not_inc":True}}]}}]}}]}},"sort":[{"EventDate":{"order":"desc"}}],"aggs":{},"size":10000},
    "https://statistics.btselem.org/en/all-fatalities/by-date-of-incident/israel-sec-by-pal/all?section=overall" : {"query":{"bool":{"must":[{"bool":{"must":[{"range":{"EventDate":{"gte":970185600000,"lte":1696633199000}}},{"bool":{"filter":{"term":{"not_inc":True}}}},{"bool":{"must":[{"terms":{"EventRegionName.key.keyword":["b40f813","5f6a04e","65b3a57"]}},{"terms":{"tot_nifga_kibuz.key.keyword":["4d9ecf3"]}},{"terms":{"tot_pogea_kibuz.key.keyword":["75c9ac7"]}},{"term":{"not_inc":True}}]}}]}}]}},"sort":[{"EventDate":{"order":"desc"}}],"aggs":{},"size":10000},
    "https://statistics.btselem.org/en/all-fatalities/by-date-of-incident/pal-by-israel-un/all?section=overall"  : {"query":{"bool":{"must":[{"bool":{"must":[{"range":{"EventDate":{"gte":970185600000,"lte":1696633199000}}},{"bool":{"filter":{"term":{"not_inc":True}}}},{"bool":{"must":[{"terms":{"EventRegionName.key.keyword":["b40f813","5f6a04e","65b3a57"]}},{"terms":{"tot_nifga_kibuz.key.keyword":["75c9ac7"]}},{"terms":{"tot_pogea_kibuz.key.keyword":["e91ad76"]}},{"term":{"not_inc":True}}]}}]}}]}},"sort":[{"EventDate":{"order":"desc"}}],"aggs":{},"size":10000}
}

#Execute automateExtractionData() function 

automateExtractionData_parallel(pages)