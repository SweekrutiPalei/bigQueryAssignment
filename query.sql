#problem1- how many countries are there in this dataset?
#SELECT COUNT(DISTINCT(country_name)) FROM `bigquery-public-data.world_bank_intl_debt.international_debt`
#result 134
#problem2-How to arrange the top 100 results in descending order?
#SELECT * FROM `bigquery-public-data.world_bank_intl_debt.international_debt`
#ORDER by value DESC
#LIMIT 100
#problem3- Extracting data from country INDIA
#SELECT * FROM `bigquery-public-data.world_bank_intl_debt.international_debt`WHERE country_code="MIC"
#problem4-What is PPG, bilateral (DIS, current US$)?
#SELECT * FROM `bigquery-public-data.world_bank_intl_debt.international_debt`WHERE INDICATOR_NAME like "PPG, bilateral (DIS, current US$)" 
#Problem5 What is the highest debt value in the data set?
#SELECT MAX(VALUE) FROM `bigquery-public-data.world_bank_intl_debt.international_debt` 
#RESULT 2.82588E13
#PROBLEM6 find the min value of each country
#SELECT COUNTRY_NAME,MIN(VALUE) FROM `bigquery-public-data.world_bank_intl_debt.international_debt` GROUP BY COUNTRY_NAME
#PROBLEM7 Avg debt of all the countries for year 2021
#SELECT AVG(VALUE) FROM `bigquery-public-data.world_bank_intl_debt.international_debt` WHERE YEAR=2021
#RESULT 3.2539706452964654E9
#PROBLEM8 
#SELECT SUM(VALUE) FROM `bigquery-public-data.world_bank_intl_debt.international_debt`WHERE COUNTRY_CODE='IND'
#RESULT 1.0628994816216286E14
#PROBLEM9 FINDING MAX(VALUE) FOR AFG USING INNER JOIN
#SELECT S.VALUE FROM `bigquery-public-data.world_bank_intl_debt.international_debt`S INNER JOIN(SELECT MAX(VALUE) AS VAL FROM `bigquery-public-data.world_bank_intl_debt.international_debt` B WHERE B.COUNTRY_CODE='AFG') ON S.VALUE=VAL
#Problem10 
#SELECT AVG(VALUE) FROM `bigquery-public-data.world_bank_intl_debt.international_debt`WHERE indicator_name='PPG, multilateral (AMT, current US$)' AND COUNTRY_CODE='IND'
#RESULT=1.6746229280196428E9
