-- create database
CREATE DATABASE FORUM;
-- use database
USE FORUM;

-- Tables creation

-- master tables
CREATE TABLE category (category_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
					   category_name VARCHAR(100));
CREATE TABLE tag (tag_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
				  tag_name VARCHAR(100));
CREATE TABLE topic_state (topic_state_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
						  topic_state_name VARCHAR(100));

-- forum tables
CREATE TABLE topic (topic_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
					topic_summary VARCHAR(1000) NOT NULL, 
                    category_id INT,
					topic_state_id INT,
                    description_text MEDIUMTEXT,
                    vote_count INT,
                    created_by VARCHAR(50),
                    created_on DATETIME,
                    updated_by VARCHAR(50),
                    updated_on DATETIME,
                    FOREIGN KEY (category_id) REFERENCES category(category_id),
                    FOREIGN KEY (topic_state_id) REFERENCES topic_state(topic_state_id));  
CREATE TABLE comments (comment_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
					   topic_id INT NOT NULL, 
                       description_text TEXT,
                       created_by VARCHAR(50),
                       created_on DATETIME,
                       updated_by VARCHAR(50),
					   updated_on DATETIME,
					   FOREIGN KEY (topic_id) REFERENCES topic(topic_id));
CREATE TABLE like_description_mapping (login_id VARCHAR(50), 
									   id INT,
									   is_topic BOOL);
CREATE TABLE tag_description_mapping (tag_id INT, 
									  id INT,
									  is_topic BOOL,
									  FOREIGN KEY (tag_id) REFERENCES tag(tag_id));
-- user profile tables
CREATE TABLE user_role (role_id INT NOT NULL PRIMARY KEY, 
						role_name VARCHAR(50));
CREATE TABLE user_role_mapping (role_id INT, 
								login_id VARCHAR(50), 
                                FOREIGN KEY(role_id) REFERENCES user_role(role_id));
CREATE TABLE user_profile (login_id VARCHAR(50), 
						   role_id INT, 
                           FOREIGN KEY(role_id) REFERENCES user_role(role_id));

