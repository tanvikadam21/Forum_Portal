SELECT * FROM category;

INSERT INTO category VALUES (1, "Idea");
INSERT INTO category VALUES (2, "Others");

SELECT * FROM tag;

INSERT INTO tag VALUES (1, "Automation");
INSERT INTO tag VALUES (2, "Excel");
INSERT INTO tag VALUES (3, "Idea");

SELECT * FROM topic_state;

INSERT INTO topic_state VALUES (1, "POC");
INSERT INTO topic_state VALUES (2, "Implemented");
INSERT INTO topic_state VALUES (3, "Started");

SELECT * FROM topic;

INSERT INTO topic VALUES (1, "Topic 1", 1, 1, 0, "sys", null,  "sys", null, "Topic 1 description");
INSERT INTO topic VALUES (2, "Topic 2", 2, 1, 0, "sys", null,  "sys", null, "Topic 2 description");
INSERT INTO topic VALUES (3, "Topic 3", 1, 1, 0, "sys", null,  "sys", null, "Topic 3 description");

SELECT * FROM comments;

INSERT INTO comments VALUES (1, 1, "sys", null,  "sys", null, "Comment 1 description");
INSERT INTO comments VALUES (2, 2, "sys", null,  "sys", null, "Comment 2 description");
INSERT INTO comments VALUES (3, 1, "sys", null,  "sys", null, "Comment 3 description");

SELECT * FROM like_description_mapping;

INSERT INTO like_description_mapping VALUES ("user1", 1, true);
INSERT INTO like_description_mapping VALUES ("user2", 2, false);
INSERT INTO like_description_mapping VALUES ("user3", 1, false);
INSERT INTO like_description_mapping VALUES ("user4", 2, true);

SELECT * FROM tag_description_mapping;

INSERT INTO tag_description_mapping VALUES (1, 1, true);
INSERT INTO tag_description_mapping VALUES (1, 2, false);
INSERT INTO tag_description_mapping VALUES (2, 1, false);
INSERT INTO tag_description_mapping VALUES (2, 2, true);


ALTER USER 'test_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'testuser21';
FLUSH PRIVILEGES