INSERT INTO authors (author_name) VALUES
('George Orwell'),
('Aldous Huxley');

INSERT INTO genres (genre_name) VALUES
('Dystopian'),
('Classics');

INSERT INTO books (title, publication_year, author_id, genre_id) VALUES
('1984', 1949, 1, 1),
('Brave New World', 1932, 2, 1);

INSERT INTO users (username, email) VALUES
('Ivan Ivanov', 'ivan.ivanov@example.com'),
('Anna Kravchenko', 'anna.kravchenko@example.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
(1, 1, '2024-09-15', '2024-10-15'),
(2, 2, '2024-09-20', '2024-10-20');

SELECT * FROM borrowed_books;