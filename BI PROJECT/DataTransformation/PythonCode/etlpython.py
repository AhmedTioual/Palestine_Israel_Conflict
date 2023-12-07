#Import Library -----------------------------------------------------------------------------------------------
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import os
import shutil
import time

#-------------------------------------------------------------------------------------------------------------

def wait_for_files(directory_path, timeout=30, poll_interval=1):
    end_time = time.time() + timeout

    while time.time() < end_time:
        if any(os.listdir(directory_path)):
            return True  # Files found, exit the loop
        time.sleep(poll_interval)

    return False  # Timeout reached without finding files

#-------------------------------------------------------------------------------------------------------------

def getNameFromUrl(strUrl) :
    # Find the indices of the start and end substrings
    start_index = strUrl.find("by-date-of-incident/") + len("by-date-of-incident/")
    end_index = strUrl.find("/all?section=overall")

    # Extract the substring between start and end indices
    extracted_string = strUrl[start_index:end_index]

    return extracted_string+".xlsx"

#--------------------------------------------------------------------------------------------------------------

def rename_file(direcotry_name_source,download_path_source,url):
    try:
        '''files = os.listdir(direcotry_name_source)
        old_filename = os.path.join(direcotry_name_source, files[0])'''
        new_filename = os.path.join(direcotry_name_source, getNameFromUrl(url))
        os.rename(download_path_source, new_filename)
        #print(f"File renamed successfully to {getNameFromUrl(url)}")
    except Exception as e:
        print(f"Error renaming the file: {e}")

#--------------------------------------------------------------------------------------------------------------

status = False

def automateExtractionData(url):
    # Set up WebDriver (you may need to download the appropriate driver for your browser)
    try:
        options = webdriver.FirefoxOptions()
        driver = webdriver.Firefox(options=options)

        # Open the website
        driver.get(url) 
        button = WebDriverWait(driver, 40).until(EC.presence_of_element_located((By.XPATH, "/html/body/div/div/div/div/main/div/div/div/div/div/div/div[3]/div[2]/div/div/div/div/div/div/div[3]/div/div/div[2]/div[1]/div/div/button[1]")))
        button.click()

        if wait_for_files("C:\\Users\\tioua\\Downloads"):
            print("Files found! Proceeding with the code...")

            download_path = "C:\\Users\\tioua\\Downloads"  # Replace with your desired directory
            files = os.listdir(download_path) 

            # Assuming only one file is downloaded, you can get its name
            downloaded_file = os.path.join(download_path, files[0])

            rename_file(download_path, downloaded_file, url)

            files = os.listdir(download_path)
            
            # Assuming only one file is downloaded, you can get its name
            new_file = os.path.join(download_path,files[0])
            
            #   Move the file to your project directory
            new_location = "C:\\Users\\tioua\\OneDrive\\Desktop\\BI PROJECT\\Data\\NumberOfDeaths"
            
            shutil.move(new_file, new_location)
            # Close the WebDriver
            driver.quit()
        else:
            print("Timeout reached. No files found in the specified directory.")
    except : 
            status = False
            driver.quit()

#Execute Code -----------------------------------------------------------------------------------------------------------------

try:
    automateExtractionData("https://statistics.btselem.org/en/all-fatalities/by-date-of-incident/pal-by-israel-sec/all?section=overall")
    automateExtractionData("https://statistics.btselem.org/en/all-fatalities/by-date-of-incident/pal-by-israel-civ/all?section=overall")
    automateExtractionData("https://statistics.btselem.org/en/all-fatalities/by-date-of-incident/israel-civ-by-pal/all?section=overall")
    automateExtractionData("https://statistics.btselem.org/en/all-fatalities/by-date-of-incident/israel-sec-by-pal/all?section=overall")
    automateExtractionData("https://statistics.btselem.org/en/all-fatalities/by-date-of-incident/pal-by-israel-un/all?section=overall")
    status = True
except : 
    status = False