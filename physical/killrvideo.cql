DROP KEYSPACE IF EXISTS killrvideo;

CREATE KEYSPACE killrvideo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE killrvideo;

CREATE TABLE users_by_email (
   email TEXT PRIMARY KEY,
   password TEXT,
   userid UUID
);

CREATE TABLE latest_videos (
   video_bucket INT,
   videoid TIMEUUID,
   title TEXT,
   type TEXT,
   tags SET<TEXT>,
   preview_thumbnails MAP<INT,BLOB>,
   PRIMARY KEY (video_bucket, videoid))
WITH CLUSTERING ORDER BY (videoid DESC);

CREATE TABLE users (
   userid UUID PRIMARY KEY,
   email TEXT,
   firstname TEXT,
   lastname TEXT,
   registration_date TIMESTAMP
);

CREATE TABLE videos_by_user (
   userid UUID,
   videoid TIMEUUID,
   title TEXT,
   type TEXT,
   tags SET<TEXT>,
   preview_thumbnails MAP<INT,BLOB>,
   PRIMARY KEY (userid, videoid))
WITH CLUSTERING ORDER BY (videoid DESC);

CREATE TABLE comments_by_user (
   userid UUID,
   posted_timestamp TIMESTAMP,
   videoid TIMEUUID,
   comment TEXT,
   title TEXT,
   type TEXT,
   tags SET<TEXT>,
   preview_thumbnails MAP<INT,BLOB>,
   PRIMARY KEY (userid, posted_timestamp, videoid))
WITH CLUSTERING ORDER BY (posted_timestamp DESC, videoid ASC);

CREATE TABLE comments_by_video (
   videoid TIMEUUID,
   posted_timestamp TIMESTAMP,
   userid UUID,
   comment TEXT,
   title TEXT STATIC,
   type TEXT STATIC,
   tags SET<TEXT> STATIC,
   preview_thumbnails MAP<INT,BLOB> STATIC,
   PRIMARY KEY (videoid, posted_timestamp, userid))
WITH CLUSTERING ORDER BY (posted_timestamp DESC, userid ASC);

CREATE TABLE ratings_by_video (
   videoid TIMEUUID PRIMARY KEY,
   num_ratings COUNTER,
   sum_ratings COUNTER
);

CREATE TYPE encoding_type (
   height int,
   width int,
   encoding TEXT,
   bitrates SET<INT>
);

CREATE TABLE videos (
   videoid TIMEUUID PRIMARY KEY,
   userid UUID,
   title TEXT,
   description TEXT,
   duration INT,
   type TEXT,
   url TEXT,
   encoding FROZEN<encoding_type>,
   tags SET<TEXT>,
   preview_thumbnails MAP<INT,BLOB>,
   genres SET<TEXT>,
   release_date TIMESTAMP,
   mpaa_rating TEXT
);

CREATE TABLE trailers_by_video (
   videoid TIMEUUID,
   title TEXT,
   trailerid TIMEUUID,
   type TEXT,
   tags SET<TEXT>,
   preview_thumbnails MAP<INT,BLOB>,
   PRIMARY KEY (videoid, title, trailerid)
);

CREATE TABLE actors_by_video (
   videoid TIMEUUID,
   actor_name TEXT,
   character_name TEXT,
   PRIMARY KEY (videoid, actor_name)
);

CREATE TABLE video_interactions_by_user_video (
   userid UUID,
   videoid TIMEUUID,
   event_timestamp TIMESTAMP,
   event_type TEXT,
   video_timestamp TIMESTAMP,
   PRIMARY KEY ((userid, videoid), event_timestamp))
WITH CLUSTERING ORDER BY (event_timestamp DESC);
