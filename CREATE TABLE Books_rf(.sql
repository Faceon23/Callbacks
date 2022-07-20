CREATE TABLE Books_rf(
    id INT PRIMARY KEY,
    Title TEXT,
    Genre TEXT,
    Author TEXT,
    Quantity INT
)

CREATE TABLE Users_rf(
    id INT PRIMARY KEY,
    F_name TEXT,
    L_name TEXT,
    Email VARCHAR(200) UNIQUE NOT NULL
)

ALTER TABLE Users_rf
MODIFY Column Email VARCHAR(200) UNIQUE NOT NULL;

CREATE TABLE Checkout_rf(
id INT PRIMARY KEY,
book_id INT,
user_id INT,
checkout_date TEXT,
return_date DATETIME,
FOREIGN KEY (book_id) REFERENCES Books_rf(id),
FOREIGN KEY (user_id) REFERENCES Users_rf(id)
)


INSERT INTO Books_rf(id,title,genre,author)
VALUES(1,"The Old Man and the Sea","Fiction","Ernest Hemingway")


SELECT * FROM Books_rf

UPDATE Books_rf
SET Quantity =1000
WHERE id = 1

INSERT INTO Books_rf
VALUES
(2, "Tuesday with Maury","Fiction", "Mitch Albom", 2000),
(3, "Rich Dad Poor Dad", "Self Help", "Robert Kiyosaki", 200),
(4, "Tales of 2 Cities", "Fiction", "Charles Dickens", 1)