PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20170331045923');
INSERT INTO schema_migrations VALUES('20170418070645');
INSERT INTO schema_migrations VALUES('20170427063848');
INSERT INTO schema_migrations VALUES('20170515060224');
INSERT INTO schema_migrations VALUES('20200811231024');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2017-03-31 05:21:00.324397','2017-03-31 05:21:00.324397');
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer);
INSERT INTO posts VALUES(1,'次は何の本を読もうかな。','2020-08-11 23:25:39.298833','2020-08-11 23:25:39.298833',1);
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_name" varchar, "password" varchar);
INSERT INTO users VALUES(1,'にんじゃわんこ','wanko@prog-8.com','2017-04-18 08:06:52.739295','2017-04-18 08:06:52.739295','default_user.jpg','ninjawanko');
INSERT INTO users VALUES(2,'ひつじ仙人','hitsuji@prog-8.com','2017-04-18 11:23:07.328713','2017-04-18 11:23:07.328713','2.jpg','hitsujisennin');
INSERT INTO users VALUES(3,'ベイビーわんこ','baby@prog-8.com','2017-04-18 12:23:07.328713','2017-04-18 12:23:07.328713','3.jpg','babywanko');
INSERT INTO users VALUES(4,'しょう','sho@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','4.jpg','sho4649');
INSERT INTO users VALUES(5,'みちこ','michiko@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','5.jpg','michi5');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('users',5);
INSERT INTO sqlite_sequence VALUES('posts',1);
COMMIT;
