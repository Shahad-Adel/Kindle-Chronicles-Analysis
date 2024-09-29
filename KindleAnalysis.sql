-- 1st: Genre Distribution
SELECT Genre, COUNT(*) AS total_books
FROM kindlebooks_cleaned
GROUP BY Genre
ORDER BY total_books DESC;

-- 2nd: Average Ratings by Genre
SELECT Genre, AVG(stars) AS avg_rating
FROM kindlebooks_cleaned
GROUP BY Genre
ORDER BY avg_rating DESC;

-- 3rd: Price Analysis Across Genres
SELECT Genre, AVG(price) AS avg_price
FROM kindlebooks_cleaned
GROUP BY Genre
ORDER BY avg_price;

-- 4th: Trend Over Time (Books Published per Year by Genre)
SELECT publishedYear, Genre, COUNT(*) AS total_books
FROM kindlebooks_cleaned
GROUP BY publishedYear, Genre
ORDER BY publishedYear, total_books DESC;

-- 5th: Kindle Unlimited Analysis by Genre
SELECT Genre, COUNT(*) AS ku_books
FROM kindlebooks_cleaned
WHERE isKindleUnlimited = 1
GROUP BY Genre;

-- 6th: Correlation Between Price and Ratings by Genre
SELECT Genre, AVG(price) AS avg_price, AVG(stars) AS avg_rating
FROM kindlebooks_cleaned
GROUP BY Genre
ORDER BY avg_rating DESC;
