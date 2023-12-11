import os
import pandas as pd

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
