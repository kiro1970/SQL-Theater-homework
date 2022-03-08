create table if not exists Customer(
	customer_id serial PRIMARY KEY,
	first_name varchar(120) NOT NULL,
	last_name varchar(120) NOT NULL,
	first_visit date,
	recent_visit date
);

CREATE TABLE IF NOT EXISTS Concessions(
	transaction_id serial PRIMARY KEY,
	customer_id integer not null references Customer,
	purchased_item varchar(100) NOT NULL ,
	amount MONEY,
	payment_type varchar(20)
);

CREATE TABLE IF NOT EXISTS Movies(
	movie_id serial PRIMARY KEY, 
	movie_name varchar(100) NOT NULL,
	movie_rating varchar(5) NOT NULL,
	release_date Date NOT NULL,
	end_date Date
	
);

CREATE TABLE IF NOT EXISTS Showtimes(
	show_id serial PRIMARY KEY,
	movie_id integer not null references Movies, 
	show_time TIME NOT NULL,
	show_date DATE NOT NULL, 
	theater_number integer NOT NULL
);

CREATE TABLE IF NOT EXISTS Tickets(
	ticket_id serial PRIMARY KEY, 
	show_id integer NOT null references Showtimes,
	customer_id integer NOT null references Customer ,
	ticket_type varchar(20) NOT NULL,
	payment_type varchar(20)
	
);
