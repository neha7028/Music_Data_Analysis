--Q1: Who is the senior most employee based on job title?

select * from employee
order by levels desc
limit 1

--Q2:Which countries have the most invoices?

select count(*) as a, billing_country
from invoice
group by billing_country
order by a desc

--Q3: What are top 3 values of total invoice

select total from invoice
order by total desc
limit 3

--Q4: Which city has the best customers? we would like to throw a promotional Music Festival in the city we made the most money.
--Write a query that returns one city that has the highest sum of invoice totals. 
--Return both the city name & sum of all invoice totals

select sum(total) as invoice_total, billing_city
from invoice
group by billing_city
order by invoice_total desc

-- Q5: Who is the best customer? the customer who has spent the most money will be declared the best customer. 
-- Write a query that returns the person who has spent the most money 

select * from customer
select * from invoice

select customer.customer_id, customer.first_name, customer.last_name, sum(invoice.total) as total
from customer
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc
limit 1

