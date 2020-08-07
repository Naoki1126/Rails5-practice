PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20200807083607');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2020-08-07 08:37:26.967028','2020-08-07 08:37:26.967028');
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO posts VALUES(1,'今日からProgateでRailsの勉強するよー！','2020-08-07 08:42:02.155714','2020-08-07 08:42:02.155714');
INSERT INTO posts VALUES(2,'投稿一覧ページ作成中！','2020-08-07 08:42:39.680522','2020-08-07 08:42:39.680522');
INSERT INTO posts VALUES(3,'やっぱりプログラミングは楽しい！','2020-08-07 08:51:04.060645','2020-08-07 08:51:04.060645');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('posts',3);
COMMIT;
