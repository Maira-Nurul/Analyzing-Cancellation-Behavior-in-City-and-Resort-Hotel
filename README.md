<h1> Analyzing Cancellation Behavior in City and Resort Hotel </h1>

<h2>Description</h2>

<p align="justify"> This project aims to analyze booking and cancellation data to gain insights into customer behavior and cancellation rate, thereby evaluating the effectiveness of the reservation process in City and Resort Hotel.  The project  focuses on two types of bookings: successful bookings, completed with customer check-ins, and cancellations.  By examining this data, The Hotels can identify areas for improvement, develop strategies to reduce cancellations, and create more appealing offers tailored to customer preferences, ultimately boosting satisfaction and loyalty.</p>

Insights and recommendation are provided on the following key areas:
- <p align="justify"> Hotel cancellation rate. This project analyzes hotel cancellation rates, focusing on factors such as lead time and country of origin, and provides strategies to reduce cancellation rates for City and Resort Hotels.</p>
- <p align="justify"> Monthly trends in City and Resort hotel.  The project also evaluates monthly trends in City and Resort Hotels, analyzing sales patterns, revenue, reservation status, and room assignment issues.</p>

Python visualization can be found [here](https://github.com/Maira-Nurul/Analyzing-Cancellation-Behavior-in-City-and-Resort-Hotel/blob/main/City_and_Resort_Hotel.ipynb)

Targeted SQL queries regarding various business questions can be found [here](https://github.com/Maira-Nurul/Analyzing-Cancellation-Behavior-in-City-and-Resort-Hotel/blob/main/Resort%20and%20City%20Hotel/Scripts/Script1.sql)


<h2>Tools Used</h2>

- <b>Ms Excel</b> 
- <b>SQL</b>
- <b>Python</b> 


<h2>Data Structure and Initial Checks</h2>
<p align="justify"> The dataset utilized in this project is organized into one tables, as can be seen below. The hotel data table contains records of all booking transactions involving in 2015-2017.  The data includes room reservation, number of special request, reservation status, arrival date, booking lead time, number of guests, country of origin, and other key metrics</p>


<p align="center">
<br/>
<img src="https://github.com/Maira-Nurul/Analyzing-Cancellation-Behavior-in-City-and-Resort-Hotel/blob/main/Docs2/Screenshot%202025-01-08%20155034.png" height="20%" width="20%">
<br />

Prior to analysis, data cleaning and standardization was performed to ensure data quality.  The pyhton code utilized can be found [here](https://github.com/Maira-Nurul/Analyzing-Cancellation-Behavior-in-City-and-Resort-Hotel/blob/main/City_and_Resort_Hotel.ipynb)


<h2>Executive Summary</h2>

<p align="justify"> City Hotel cancellation rates are highly fluctuating, while Resort Hotel cancellations show a steady annual increase, indicating the need for improved system integration with Online Travel Agents and enhanced room management to reduce cancellations.  Special requests have minimal impact on lead time, suggesting hotels should focus on fulfilling these requests to enhance customer satisfaction and retention, regardless of booking timing.  Resort Hotels experience significant seasonal revenue variations, especially during holidays, whereas City Hotels maintain steady revenue throughout the year, highlighting the need for targeted promotions based on demand patterns.</p>

Below is the overview page from pyhton visualization for data exploration and analysis.  The entire visualizaiton can be seen [here](https://github.com/Maira-Nurul/Analyzing-Cancellation-Behavior-in-City-and-Resort-Hotel/blob/main/City_and_Resort_Hotel.ipynb)

<p align="center">
<br/>
<img src="https://github.com/Maira-Nurul/Analyzing-Cancellation-Behavior-in-City-and-Resort-Hotel/blob/main/Docs2/Screenshot%202025-01-08%20165303.png" height="70%" width="70%">
<br />


<b>Cancellation Rate Analysis</b>
- <p align="justify"> The cancellation rate for City Hotels is notably higher than that for Resort Hotels, with a fluctuating pattern and a peak in 2015. Resort Hotels, on the other hand, exhibit a consistent upward trend in cancellations from 2015 to 2017, increasing by 0.5% between 2015-2016 and 1.4% between 2016-2017. These findings highlight the need for improved system integration with Online Travel Agents and better room management, especially as trend shows that shorter lead time tends to be associated with higher cancellation rates.</p>
- <p align="justify"> Cancellations are highest among bookings made through Online Travel Agents and direct channels, particularly last-minute reservations.</p>
- <p align="justify"> Portugal shows the highest cancellation rates, prompting the need for stricter cancellation policies, such as requiring full payment or making reservations non-refundable closer to the check-in date.</p>


<b> Trend Analysis</b>
- <p align="justify"> Revenue trends show significant seasonality for Resort Hotels, with peaks during holiday months like June, August, and December, suggesting the need for dynamic pricing and targeted holiday promotions. Conversely, City Hotels maintain relatively stable revenue throughout the year, driven by corporate and non-seasonal travelers, allowing for consistent pricing strategies.</p>
- <p align="justify"> January exhibits the highest frequency of last-minute bookings, which often lead to overbooking and room mismatches, particularly for Room Types A and D. Enhancing room management and increasing the availability of popular room types like Type A during high-demand months could improve customer satisfaction and reduce cancellations. </p>
- <p align="justify"> The average daily rate (ADR) is lowest for bookings made within 0-14 days before check-in, indicating that last-minute bookings are often associated with lower revenue. Conversely, bookings with longer lead times (85-98 days) show a higher ADR.</p>


<h2>Recommendations</h2>
Based on the uncovered insights, the following recommendation has been provided

- <p align="justify"> Shorter lead time are associated with higher cancellation rates. Stricter cancellation policies, such as requiring full payment closer to the check-in date, could mitigate cancellations, particularly for markets like Portugal, which shows the highest cancellation frequency.</p>
- <p align="justify"> Room mismatches are most frequent during high last-minute booking periods, particularly in January. These mismatches, especially for Room Types A and D, can negatively affect customer satisfaction and cancellation rates.  Improving room allocation management, and increasing high-demand room types are essential to minimize these issues.</p>
- <p align="justify"> The seasonal revenue peaks for Resort Hotels during holidays indicate the importance of aligning marketing campaigns with peak periods. Resort Hotels should focus on holiday-specific promotions, bundlings, and flexible room rates to maximize revenue during high-demand months.  City Hotels should target corporate clients with loyalty programs, weekday discounts, and business-focused marketing to maintain consistent revenue. </p>
- <p align="justify"> Analysis shows no strong correlation between lead time and ADR, but last-minute bookings (lead time under 14 days) yield lower revenue, which can be mitigated by increasing rates for such bookings.</p>
- <p align="justify">Portugal shows the highest cancellation rates, prompting the need for stricter cancellation policies, such as requiring full payment or making reservations non-refundable closer to the check-in date.</p>
