-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name FROM users
ORDER BY last_name;



-- Exercise 4
SELECT id, user_id, image_url FROM posts WHERE user_id=26;



-- Exercise 5
SELECT id, image_url, user_id FROM posts WHERE user_id=26 or user_id=12;



-- Exercise 6
SELECT count(*) FROM posts;



-- Exercise 7
SELECT user_id, count(user_id) FROM comments, 
GROUP BY user_id, ORDER BY count(user_id) desc;



-- Exercise 8
SELECT id, image_url, user_id FROM posts WHERE user_id=26 or user_id=12
INNER JOIN users ON posts.user_id = user.id;


-- Exercise 9
SELECT id, pub_date FROM posts WHERE user_id=26
INNER JOIN following ON posts.user_id = following.following_id;



-- Exercise 10
SELECT id, pub_date FROM posts WHERE user_id=26, ORDER BY pub_date desc
INNER JOIN following ON posts.user_id = following.following_id
INNER JOIN users ON users.username = posts.username;


-- Exercise 11
INSERT INTO bookmarks(user_id, post_id) values(26, 219);
INSERT INTO bookmarks(user_id, post_id) values(26, 220);
INSERT INTO bookmarks(user_id, post_id) values(26, 221);

-- Exercise 12
DELETE FROM bookmarks(user_id, post_id) values (26, 219);
DELETE FROM bookmarks(user_id, post_id) values (26, 220);
DELETE FROM bookmarks(user_id, post_id) values (26, 221);

-- Exercise 13
UPDATE users
SET email="knick2022@gmail.com"
WHERE user_id=26;


-- Exercise 14
SELECT id, caption, count(comments) FROM posts WHERE user_id=26;