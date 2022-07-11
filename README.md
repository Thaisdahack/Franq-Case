![logo](https://user-images.githubusercontent.com/101371267/178369149-3e5dae91-d467-4843-9604-e5e31db5e070.png)

<img src ="https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue" /> <img src="https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white" /> <img src="https://img.shields.io/badge/PowerBI-F2C811?style=for-the-badge&logo=Power%20BI&logoColor=white" />

# Franq Open Banking (Study Case)

## Goals
Carry out an exploratory analysis and set up a presentation with the insights found, in as a dashboard. In addition, reporting the characteristics observed in the data and the types of treatment applied.

## Exploratory data analysis
The first step towards exploratory data analysis was to place the dataset made available in Python using the pandas library and checking for duplicates and data missing. So I chose not to eliminate any row with unfilled data, and replaces these values with 'none'.
It is observed that some sales values can be estimated from the value of the commission and commissioning policy and also that some request dates
and sale are with inverted values (sale_date <request_date).
After checking the dataset structure, I exported the data to PowerBI(PBI) to make a general analysis of the data, creating a dashboard to extract some insights
which are described below:

![dash3](https://user-images.githubusercontent.com/101371267/178370144-633122fd-c269-4d0c-945d-bb8ce5658365.png)


## Insights
In the PBI, some measurements were made in DAX to have a general financial idea of how much to the parameters passed in the dataset.
First, the total sales in the sampled period which was 98 and the total value gross sales of R$8,138,240. The total amount of commissions paid was R$359,725.
The average sales ticket is around R$83,043. In addition to the measurements that provide an overview of finances, a auxiliary calendar table with day, month and year, so that dates could be manipulated of transactions, mediating the temporal analysis of the data.
From this approach, sales were filtered by quarter, and showed very similar in terms of this temporal distribution. Also from the dates of request and sale of the product, it was observed that the minimum number of trading days (request_date – sale_date) was 2 days and a maximum of 128 days.
Moving on to spatial analysis, most customers reside in the state of São Paulo and the state where there is the largest number of sellers working is Rio de Janeiro,
followed by Rio Grande do Sul and São Paulo.
The most sold products are “A”, “D” and “F” and the most applied is the “un.” followed by “0.026%” on top of the product value.
A ranking was also prepared with the sellers who had the best performance regarding the sales value of the products, and the seller “V-25” was in first place,
with a total value of R$2,002,000, making a total of four sales. followed by seller of id “V_05” with R$1,716,000 in sales value with two transactions
finished.

## Recommendations
It would be possible to make a modeling using the Pycaret library of Python, to check which products are most likely to be sold in each state of sellers' performance. The model to be more robust would need more data complete, with the description of the customer's status and also the information about the product value, which could be an important parameter for decision making of customers. Unfortunately I couldn't try to do this analysis, because I had a problem with my jupyter notebook (tool I use to work with python) and would not have time to make a reliable analysis, in addition to the absence of important data
for the same.




