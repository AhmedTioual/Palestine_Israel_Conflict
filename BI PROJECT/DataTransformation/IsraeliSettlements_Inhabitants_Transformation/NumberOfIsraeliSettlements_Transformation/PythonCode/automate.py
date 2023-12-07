import requests
import zipfile
import io
import pandas as pd

try:
    url = "https://api.unhcr.org/population/v1/unrwa/?limit=20&dataset=unrwa&displayType=totals&columns%5B%5D=refugees&columns%5B%5D=asylum_seekers&columns%5B%5D=idps&columns%5B%5D=oip&columns%5B%5D=stateless&columns%5B%5D=hst&columns%5B%5D=ooc&yearFrom=1951&yearTo=2023&coo_all=true&coa_all=true&download=true"

    response = requests.get(url)
    z = zipfile.ZipFile(io.BytesIO(response.content))
    
    # Extract CSV file and load it into a DataFrame
    df = pd.read_csv(z.open("unrwa.csv"), skiprows=14)
    
    new_location = "C:\\Users\\tioua\\OneDrive\\Desktop\\BI PROJECT\\Data\\NumberOfPalestinianRefugees"
    
    # Save the modified DataFrame to a new CSV file
    df.to_csv(new_location + "\\unrwa.csv", index=False)
    
    status = True
except Exception as e:
    print(f"An error occurred: {e}")
    status = False