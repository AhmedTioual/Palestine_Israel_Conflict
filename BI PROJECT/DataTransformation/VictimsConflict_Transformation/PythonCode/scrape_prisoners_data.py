import requests
from bs4 import BeautifulSoup
import pandas as pd
from concurrent.futures import ThreadPoolExecutor, as_completed
import time

def get_links():
    try:
        headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0'}
        response = requests.get("https://www.addameer.org/statistics",headers=headers)

        # Check if the request was successful (status code 200)
        if response.status_code == 200:
            # Parse the HTML content of the page
            soup = BeautifulSoup(response.text, 'html.parser')

            # Find all 
            links = soup.find_all('a', href=lambda href: href and '/statistics/' in href and len(href.split('/')) == 4)

            # Extract the href values
            href_list = [link['href'] for link in links]

            # Create a DataFrame
            df = pd.DataFrame({'Links': href_list}) 
            df.drop_duplicates(inplace=True)

            # Extract year and month from the links
            df['year'] = df['Links'].str.extract(r'(\d{4})/\d{2}')
            df['month'] = df['Links'].str.extract(r'\d{4}/(\d{2})')

            # Convert 'year' and 'month' columns to numeric
            df['year'] = pd.to_numeric(df['year'])
            df['month'] = pd.to_numeric(df['month'])

            # Find the latest month for each year
            latest_month_per_year = df.groupby('year')['month'].max().reset_index()

            # Create links for the latest month of each year
            latest_links = latest_month_per_year.apply(lambda row: f"/statistics/{row['year']}/{row['month']:02d}", axis=1)

            return latest_links
        else :
            return None
    except : 
        print("Error")
def get_data(link,year):
    try :
        headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0'}
        response = requests.get("https://www.addameer.org"+link, headers=headers)

        # Check if the request was successful (status code 200)
        if response.status_code == 200:
            # Parse the HTML content of the page
            soup = BeautifulSoup(response.text, 'html.parser')

            # Extract values using BeautifulSoup
            values = {}
            for div in soup.find_all('div', class_='views-field'):
                span = div.find('span')
                div_content = div.find('div')

                if span is not None and div_content is not None:
                    label = span.text.strip()
                    value = div_content.text.strip()
                    values[label] = value

            # Create a DataFrame from the extracted values
            data = pd.DataFrame(list(values.items()), columns=['Category', 'NumberOfPrisoners'])

            data['Category'] = data['Category'].str.lower()
            selected_categories = ['total number of political prisoners', 'child prisoners', 'female prisoners']
            new_data = data[data['Category'].isin(selected_categories)]

            # Replace the values in the 'Category' column
            replacement_dict = {'total number of political prisoners': 'M',
                        'child prisoners': 'C',
                        'female prisoners': 'F'}

            new_data['Category'].replace(replacement_dict, inplace=True)

            new_data['NumberOfPrisoners'] = new_data['NumberOfPrisoners'].astype(int)

            new_data.loc[new_data['Category'] == 'Male', 'NumberOfPrisoners'] -= new_data.loc[new_data['Category'] != 'Male', 'NumberOfPrisoners'].sum()
            #Add year
            new_data['Year'] = year
            new_data['Country'] = 'PALESTINE'
            return True,new_data
    except : 
        return False,None
result = pd.DataFrame()
def automateExtractionData_parallel():
    global result
    try:
        with ThreadPoolExecutor(max_workers=5) as executor:
            # Use list comprehension to submit tasks to the ThreadPoolExecutor
            tasks = [executor.submit(get_data, link,int(link.split('/')[2])) for link in get_links()]
            
            # Collect results
            results = [task.result() for task in as_completed(tasks)]
            
            time.sleep(2)
            # Iterate through results and print a summary
            for success, data in results:
                if success:
                    result = pd.concat([result, data], ignore_index=True)
                else:
                    print(f'Failed to download data')
            #Save Result data frame in a single file 
            result.sort_values(by='Year', ascending=True,inplace=True)     
            result.to_excel("C:\\Users\\tioua\\OneDrive\\Desktop\\BI PROJECT\\Data\\NumberOfPrisoners\\Prisoners_Data.xlsx", index=False)
    except Exception as e:
        print(f"Error: {e}")
#Execute Code : 
automateExtractionData_parallel()