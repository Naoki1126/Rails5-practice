PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20170331045923');
INSERT INTO schema_migrations VALUES('20170418070645');
INSERT INTO schema_migrations VALUES('20170427063848');
INSERT INTO schema_migrations VALUES('20170515060224');
INSERT INTO schema_migrations VALUES('20200812061222');
INSERT INTO schema_migrations VALUES('20200812065603');
INSERT INTO schema_migrations VALUES('20200812075713');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2017-03-31 05:21:00.324397','2017-03-31 05:21:00.324397');
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer);
INSERT INTO posts VALUES(1,'sssssss','2020-08-12 06:19:03.474727','2020-08-12 06:19:03.474727',6);
INSERT INTO posts VALUES(2,'ssssssss','2020-08-12 06:43:44.719399','2020-08-12 06:43:44.719399',2);
INSERT INTO posts VALUES(3,'wwwww','2020-08-12 06:46:09.907897','2020-08-12 06:46:09.907897',1);
CREATE TABLE IF NOT EXISTS "likes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "post_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO likes VALUES(1,1,2,'2020-08-12 07:41:22.995981','2020-08-12 07:41:22.995981');
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_name" varchar, "password_digest" varchar);
INSERT INTO users VALUES(1,'にんじゃわんこ','wanko@prog-8.com','2017-04-18 08:06:52.739295','2020-08-12 08:00:15.069510','default_user.jpg','$2a$10$cHjv.EdX8v2pPGKwNxLFF.UBDgN3TmmvtTkg9EgAZEuSas7Fvyzge');
INSERT INTO users VALUES(2,'ひつじ仙人','hitsuji@prog-8.com','2017-04-18 11:23:07.328713','2017-04-18 11:23:07.328713','2.jpg',NULL);
INSERT INTO users VALUES(3,'ベイビーわんこ','baby@prog-8.com','2017-04-18 12:23:07.328713','2017-04-18 12:23:07.328713','3.jpg',NULL);
INSERT INTO users VALUES(4,'しょう','sho@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','4.jpg',NULL);
INSERT INTO users VALUES(5,'みちこ','michiko@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','5.jpg',NULL);
INSERT INTO users VALUES(6,'aaaa','aaaaa','2020-08-12 06:17:50.411422','2020-08-12 06:17:50.411422','default_user.jpg',NULL);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('posts',3);
INSERT INTO sqlite_sequence VALUES('likes',1);
INSERT INTO sqlite_sequence VALUES('users',6);
COMMIT;