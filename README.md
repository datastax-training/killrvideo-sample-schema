killrvideo-sample-schema
===============================

Sample schema for Apache Cassandra 2.1, to demonstrate the usage and features of CQL. 
The schema has been extended to include functionality needed to demonstrate concepts in DataStax training courses.

Application
===========

This data model is for a fictitious video sharing web site. The features we'll be supporting are:

 - User creation
 - Video file upload with metadata
 - Lookup of videos per user
 - Lookup of videos by tag
 - Comments on each video
 - Lookup of all comments made a particular user
 - Playback tracking per video with the intent of resuming video where they left it.

For the extended schema, we also support:

 - Display video with movie metadata
 - Lookup of videos by movie metadata

List of queries
======================

*Original*
Find a user with a specified email
Find a user with a specified user id
Find videos with a specified tag (latest first)
Find a video with a specified video id
Find videos with a specified upload timestamp range (latest first)
Find videos with a specified user id (latest first)
Find comments with a specified video id (latest first)
Find comments with a specified user id (latest first)
Find a rating with a specified video id


*Extended*
Find videos with a specified title (latest first)
Find a video with a specified title and release year (latest first)
Find videos with a specified actor and release date year (latest first)
Find videos with a specified genre and release date year (latest first)
Find videos with a specified actor and genre and date year (latest first)
Find videos with a specified country (latest first)
