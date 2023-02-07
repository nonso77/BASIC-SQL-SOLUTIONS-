--Query all columns for all Ame-- cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
SELECT *
FROM CITY
WHERE POPULATION >100000 AND COUNTRYCODE='USA'

--Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
SELECT NAME
FROM CITY
WHERE POPULATION>120000 AND COUNTRYCODE ="USA"

--Query all columns (attributes) for every row in the CITY table.
SELECT *
FROM CITY

--Query all columns for a city in CITY with the ID 1661.
SELECT *
FROM CITY 
WHERE ID = 1661

--Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT *
FROM CITY
WHERE COUNTRYCODE='JPN'

--Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT NAME
FROM CITY
WHERE COUNTRYCODE ='JPN'

--Query a list of CITY and STATE from the STATION table.
SELECT CITY,STATE
FROM STATION

--Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT CITY
FROM STATION
WHERE (ID %2=0)

--Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT COUNT(CITY)-COUNT(DISTINCT(CITY))
FROM STATION

--Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
SELECT sum(city.population)
FROM city
join country
ON CITY.COUNTRYCODE=COUNTRY.CODE
WHERE CONTINENT ='asia'

--Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
SELECT CITY.NAME
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE=COUNTRY.CODE
WHERE CONTINENT='AFRICA'

--Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
SELECT COUNTRY.CONTINENT,FLOOR(AVG(CITY.POPULATION))
FROM COUNTRY
JOIN CITY
ON CITY.COUNTRYCODE=COUNTRY.CODE
GROUP BY CONTINENT;

--Query a count of the number of cities in CITY having a Population larger than 100000
SELECT COUNT(*)
FROM CITY
WHERE POPULATION >100000

--Query the total population of all cities in CITY where District is California.
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'CALIFORNIA'

--Query the average population of all cities in CITY where District is California.
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT='CALIFORNIA'

--Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT FLOOR(AVG(POPULATION))
FROM CITY

--Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE ='JPN'

--Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(POPULATION)-MIN(POPULATION) AS NEW_POPULATION
FROM CITY

--Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT NAME 
FROM EMPLOYEE
ORDER BY NAME

--Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000  per month who have been employees for less than 10  months. Sort your result by ascending employee_id.
SELECT NAME
FROM EMPLOYEE
WHERE SALARY>2000 AND MONTHS <10
ORDER BY EMPLOYEE_ID

