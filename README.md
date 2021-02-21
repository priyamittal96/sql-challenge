# sql-challenge

## Employee Database: A Mystery in Two Parts
This particular database consists of employee data for employees at Pewlett Hackard from the 1980s to the 1990s. Using both data engineering and data anlysis I have generated a series of SQL queries and answer questions about the data. 

## Technologies
Using a database diagram, I have created an ERD of the tables given to map out the appropriate primary and foreign keys and note which tables are junction tables. Then using postgresql and jupyter notebooks, ran the queries and analysis required. 

## ERD
Using the csv files noted in the EmployeeSQL folder, I generate the ERD to include all 6 employee data tables that highlight various key details about the employees. The diagram maps out each of the primary and foreign keys as well as takes into account instances of junctions tables that connect the data. This is then used for the table schemata and is the basis for the query generation.

## Queries
The queries, generated in postgresql, first generate the table schemata from the schema.sql file that mimic the ERD table schemata. Then referencing the queries.sql file, the respective queries upload the csv files from my personal folder into the respective table. 

Please note that the upload of csv files will differ between a Mac operating system and a Windows operating system. Import the csv files in a method compatible to your operating system. 

The following 8 queries generate various tables detailing various pieces of information of employees based on certain criteria, which are also noted in the .sql file.

## Bonus 
In the Bonus.ipynb file you will find the data connection to the postgres database and generation of the corresponding dataframes for each of the different tables. 
Please insert your own username and passwords into the config file to appropriately access the postgresql database. 

Two visualizations regarding employee salary are generated at the end of the notebook and saved into the Visualizations folder. 
