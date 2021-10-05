CREATE TABLE subscriptions(
	id serial PRIMARY KEY,
	follower_id bigint references "user"(id),
	author_id bigint references "user"(id)
);

INSERT INTO "user" (id,first_name, last_name, username, password, birth_date, gender, user_pic)
VALUES (1, 'Bob', 'Li', 'Bob_Li', 'qwerty', '2000-02-02', 'TRUE', null),
		(2, 'Jo', 'Ji', 'Jo_Ji','123', '2001-03-03', 'TRUE', null);

INSERT INTO subscriptions (follower_id, author_id)
VALUES (1, 2);

INSERT INTO tweet (id, user_id, text, photo, pub_date, replies_to, retweets)
VALUES (1, 2, 'Have a good day!', '', '2021-10-05', null, null);

INSERT INTO hashtag (id, text)
VALUES (1, 'tag');

INSERT INTO tweethashtag (id, tweet_id, hashtag_id)
VALUES (1, 1, 1);

INSERT INTO user_like(id, user_id, tweet_id)
VALUES (1, 1, 1);
