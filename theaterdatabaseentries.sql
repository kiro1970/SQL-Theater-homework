INSERT INTO Customer (first_name, last_name, first_visit, recent_visit) VALUES ('John', 'Doe', '2021-09-05', '2022-03-07');
INSERT INTO Customer (first_name, last_name, first_visit, recent_visit) VALUES ('Jane', 'Doe', '2019-05-23', '2022-03-07');

INSERT INTO Concessions (customer_id, purchased_item,  amount, payment_type) VALUES (1, 'Large Popcorn combo', 9.99, 'credit card');
INSERT INTO Concessions (customer_id, purchased_item,  amount, payment_type) VALUES (2, 'Milk Duds', 2.99, 'cash' );

INSERT INTO Movies (movie_name, movie_rating, release_date, end_date) VALUES ('Star Wars 36', 'Pg-13', '2022-02-14', '2022-03-31');
INSERT INTO Movies (movie_name, movie_rating, release_date, end_date) VALUES ('Martix 9', 'R', '2022-03-01', null);

INSERT INTO Showtimes (movie_id, show_time, show_date, theater_number) VALUES (1, '14:30:00', '2022-03-07', 5);
INSERT INTO Showtimes (movie_id, show_time, show_date, theater_number) VALUES (2, '11:45:00', '2022-03-07', 2);

INSERT INTO Tickets (show_id, customer_id, ticket_type, payment_type) VALUES (1, 1, 'Senior', 'Credit card');
INSERT INTO Tickets (show_id, customer_id, ticket_type, payment_type) VALUES (2, 2, 'Adult', 'Cash');