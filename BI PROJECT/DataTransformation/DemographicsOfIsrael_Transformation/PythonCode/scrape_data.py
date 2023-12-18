import requests
from bs4 import BeautifulSoup
import pandas as pd

def scrape_data():
    global status
    status = None
    try:
        # Send a GET request to the URL
        headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0'}
        response = requests.get("https://www.macrotrends.net/countries/ISR/israel/population",headers=headers)

        # Check if the request was successful (status code 200)
        if response.status_code == 200:
            # Parse the HTML content of the page
            soup = BeautifulSoup(response.text, 'html.parser')

            # Find all <tr> tags
            table = soup.find('div', {'class': 'col-xs-6'})

        # Check if the table is founds
            if table:
                # Extract data from the table
                rows = table.find_all('tr')

                # Extract data from individual cells within the rows
                data = []
                for row in rows:
                    cells = row.find_all(['td', 'th'])
                    row_data = [cell.get_text(strip=True) for cell in cells]
                    data.append(row_data)
                
                # Convert the list of lists into a Pandas DataFrame
                df = pd.DataFrame(data[1:], columns=['Year','Population','GrowthRate'])
                df = df.iloc[1:]
                df.to_excel("C:\\Users\\tioua\\OneDrive\\Desktop\\BI PROJECT\\Data\\IsraelPopulation\\population.xlsx",index=False)
                status = True
            else:
                print("Table not found with the specified class.")
                status =  False
        else:
            print(f"Failed to retrieve the webpage. Status code: {response.status_code}")
            status = False
    except :
        status = False
    
scrape_data()