DROP TABLE IF EXISTS teacher;
CREATE TABLE IF NOT EXISTS teacher (
 id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 user_name VARCHAR(60) NOT NULL,
 email VARCHAR(254) NOT NULL
);

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  user_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_name varchar(10) NOT NULL DEFAULT '',
  user_email varchar(50) NOT NULL DEFAULT '',
  user_password varchar(10) DEFAULT '',
  user_icon varchar(100) NOT NULL DEFAULT '',
  introduce varchar(10) DEFAULT NULL,
  user_role varchar(10) NOT NULL,
  admin boolean ,
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (`user_id`)
);


--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  post_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) unsigned DEFAULT '0',
  post_category varchar(10) unsigned DEFAULT '',
  post_title varchar(50) DEFAULT NULL,
  post_body varchar(200) unsigned DEFAULT '',
  post_created_at datetime,
  post_updated_at datetime,
  PRIMARY KEY (post_id)
);

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
  comments_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id int(10) DEFAULT NULL,
  post_id int(10) DEFAULT NULL,
  comment_body varchar(200) unsigned DEFAULT '0',
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (`comments_id`)
);

--
-- Table structure for table 'likes'
--

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  like_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id varchar(10) DEFAULT NULL,
  post_id varchar(20) DEFAULT NULL,
  created_at datetime,
  PRIMARY KEY (like_id)
);

--
-- Table structure for table `recipe_records`
--

DROP TABLE IF EXISTS recipe_records;
CREATE TABLE recipe_records (
  record_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id varchar(200) DEFAULT NULL,
  record_date date DEFAULT NULL,
  category_id varchar(32) NOT NULL DEFAULT '',
  ingredients varchar(200) DEFAULT NULL,
  recipe_time int(10) unsigned DEFAULT '0',
  recipe_cost int(10) unsigned DEFAULT '0',
  created_at datetime,
  updated_at datetime,
  PRIMARY KEY (`record_id`)
);

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
  category_id int(10) NOT NULL DEFAULT '',
  category_code varchar(10) DEFAULT '',
  subcategory_name varchar(200) DEFAULT NULL,
  PRIMARY KEY (category_id)
);
