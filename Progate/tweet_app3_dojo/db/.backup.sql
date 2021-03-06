PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20170331045923');
INSERT INTO schema_migrations VALUES('20170418070645');
INSERT INTO schema_migrations VALUES('20200811074752');
INSERT INTO schema_migrations VALUES('20200811080836');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2017-03-31 05:21:00.324397','2017-03-31 05:21:00.324397');
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO posts VALUES(1,'次は何の本を読もうかな。','2017-03-31 05:24:15.529063','2017-03-31 05:24:15.529063');
INSERT INTO posts VALUES(2,'今日のランチおいしかった。','2017-03-31 05:24:32.004378','2017-03-31 05:24:32.004378');
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_name" varchar, "password" varchar);
INSERT INTO users VALUES(1,'aaaa','aaaaa','2020-08-11 07:52:07.140268','2020-08-11 08:50:05.567237','default_user.jpg','aiueo');
INSERT INTO users VALUES(2,'asai','aaaaaaa','2020-08-11 09:11:57.713441','2020-08-11 09:11:57.713441',NULL,'jjjjjj');
INSERT INTO users VALUES(3,'aaaaaaa','aaaaaaaaaa','2020-08-11 09:26:20.623632','2020-08-11 09:26:20.623632','default_user.jpg','aaaaaaaaaaaa');
INSERT INTO users VALUES(4,'aaa','ereee','2020-08-11 09:49:06.087679','2020-08-11 09:49:06.087679','default_user.jpg','errerre');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('posts',2);
INSERT INTO sqlite_sequence VALUES('users',4);
COMMIT;
