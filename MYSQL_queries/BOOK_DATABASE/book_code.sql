-- SELECT 
-- 	CONCAT
-- 	(
-- 		SUBSTRING(title,1,10),
-- 		'...'
-- 	)
-- FROM books;

-- SELECT 
-- 	SUBSTRING(
-- 		REPLACE(title,'e','3'),
-- 		1,
-- 		10
-- 	) AS 'weird string'
-- FROM books;

-- SELECT
-- 	CONCAT(
-- 		author_fname,
-- 		REVERSE(author_fname)
-- 	) AS 'palindrome'
-- FROM books;

-- SELECT author_lname,
-- 	CONCAT(
-- 		author_lname,
-- 		' is ',
-- 		CHAR_LENGTH(author_lname),
-- 		' characters long'
-- 		) AS 'name length'
-- FROM books;

-- SELECT REVERSE(
-- 	UPPER( "Why does my cat look at me with such hatred?"));
-- 	
-- SELECT REPLACE(
-- 	title,
-- 	' ',
-- 	'->'
-- 	) AS 'title'
-- FROM books; 
-- 
-- SELECT author_lname AS 'forwards',
-- 	REVERSE(author_lname) AS 'backwards'
-- FROM books;
-- 
-- SELECT UPPER(
-- 	CONCAT(author_fname,' ',author_lname)
-- 	) AS 'Full name'
-- FROM books;
-- 
-- SELECT CONCAT(
-- 	title,' was released in ', released_year
-- 	) AS blurb
-- FROM books;
-- 
-- SELECT 
-- 	SUBSTRING(title,1,10) AS 'short title',
-- 	CONCAT(author_lname,',',author_fname) AS 'author',
-- 	CONCAT(stock_quantity,' in stock') AS quantity
-- FROM books;

SELECT title FROM books
	WHERE title LIKE '%stories%';
	
SELECT title,pages FROM books
	ORDER BY pages DESC
	LIMIT 1;
	
SELECT CONCAT(title,'-',released_year) AS 'summary' FROM books
	ORDER BY released_year DESC
	LIMIT 3;
	
SELECT title,author_lname FROM books
	WHERE author_lname LIKE '% %';
	
SELECT title,released_year,stock_quantity FROM books
	ORDER BY stock_quantity,title LIMIT 3;
	
SELECT title,author_lname FROM books
	ORDER BY author_lname,title;
	
	
SELECT  UPPER(
		CONCAT(
			'my favourite author is ',
			author_fname,
			' ',	
			author_lname,
			'!'
		)
	) AS 'Yell'
	FROM books ORDER BY author_lname;


-- 	SELECT DISTINCT UPPER( 
-- 		CONCAT(
-- 			'my favourite author is ',
-- 			author_fname,
-- 			' ',	
-- 			author_lname,
-- 			'!'
-- 		)
-- 	) AS 'Yell' FROM books;


	
SELECT DISTINCT table1.Yell FROM
(
SELECT  UPPER(
		CONCAT(
			'my favourite author is ',
			author_fname,
			' ',	
			author_lname,
			'!'
		)
	) AS Yell, author_lname
	FROM books ORDER BY author_lname
) AS table1	
ORDER BY table1.author_lname;






	