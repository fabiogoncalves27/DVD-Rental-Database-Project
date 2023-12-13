# DVD Rental Database Project

## Dataset:

The dataset used for this project was the Sakila DVD Rental database that holds information about a company that rents DVD movies. In this project I used PostgreSQL to query the database in order to answer the questions presented below. 
The schema for the DVD Rental database is provided below.

![dvd-rental-sample-database-diagram](https://github.com/fabiogoncalves27/DVD-Rental-Database-Project/assets/152866565/9646f042-e640-4d3e-ab01-bb2ea90ff3ac)


    actor — contains actors data including first name and last name.
    film — contains films data such as title, release year, length, rating, etc.
    film_actor — contains the relationships between films and actors.
    category — contains film’s categories data.
    film_category — containing the relationships between films and categories.
    store — contains the store data including manager staff and address.
    inventory — stores inventory data.
    rental — stores rental data.
    payment — stores customer’s payments.
    staff — stores staff data.
    customer — stores customer’s data.
    address — stores address data for staff and customers
    city — stores the city names.
    country — stores the country names.


## Objectives & Goals:

In this project, I queried the database to answer the following questions:

    1: How many movies has each actor played in?
    2: Are there movies that are not in the inventory and if yes how many are there?
    3: Get the number of times each movie which is available for rent has been rented and their total revenue
    4: Get the movies rental_rate that are not in the inventory.
    5: How many customers have not returned more than 1 DVD?
    6: How many movies has each customer rented?
    7: Most rented movies by genre and how much were payed for them
    8: Rental Count and Revenue by Genre and Date
    9: How many times each movie was rented by genre (for the movies which are available for rent)
    11: How many rented movies were returned late, early, and on time?
    12: What were Total Rental for Family Movies?
    13: How many movies in each category due by duration quartile?
    14: What is the number of rentals per month for each store?
    15: How much did our top customers pay in each month in 2007?
 
## Analysis:

You can consult the queries I created for every question above.
