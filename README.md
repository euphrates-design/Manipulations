# Star Wars Data Manipulation and Cleaning Project
Overview
This project involves manipulating and cleaning the starwars dataset from the dplyr package in R. The dataset contains information on characters from the Star Wars movies, including their names, genders, heights, masses, species, and other attributes. The goal is to demonstrate various data manipulation and cleaning techniques using functions from the tidyverse package.

#Libraries Required
tidyverse
#Steps and Code
1. Loading the Required Library
Load the tidyverse library, which is essential for data manipulation.

2. Viewing and Exploring the Data
View the entire dataset.
Observe the structure of the dataset.
Get a glimpse of the dataset to understand its overall shape and summary.
3. Exploring Specific Variables
Identify unique values in specific variables like gender and eye_color.
4. Changing Variable Classes
Convert the eye_color variable to a factor and verify the conversion.
5. Handling Missing Data
Calculate the mean height while excluding missing values.
Filter out rows with missing data in selected columns to ensure complete cases.
6. Data Manipulation with dplyr
Select specific variables and manipulate the dataset:
Select variables such as name, height, mass, species, and gender.
Filter for specific conditions, such as species being "Human".
Remove rows with missing values.
Modify the mass variable and rename the height variable.
7. Filtering Data Based on Conditions
Select names of characters with birth year above 40 or light skin color.
Filter for specific characters like Luke Skywalker and select relevant attributes.
8. Grouping and Summarizing Data
Calculate mean height and mass for different species, such as Humans and Droids, and group by species.
9. Additional Filtering Examples
Select names with mass close to 70 (±10).
Filter names with mass between 40 and 50.
Select names with non-missing hair color.
#Conclusion
This project demonstrates the use of tidyverse functions for data manipulation and cleaning, focusing on the starwars dataset. By applying these techniques, we can effectively prepare and analyze data to derive meaningful insights
