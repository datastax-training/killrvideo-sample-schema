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

Original
Q1: Find a user with a specified email
Q2: Find a user with a specified user id
Q3: Find videos with a specified tag (latest first)
Q4: Find a video with a specified video id
Q5: Find videos with a specified upload timestamp range (latest first)
Q6: Find videos with a specified user id (latest first)
Q7: Find comments with a specified video id (latest first)
Q8: Find comments with a specified user id (latest first)
Q9: Find a rating with a specified video id


Extended
Q10: Find videos with a specified title (latest first)
Q11: Find a video with a specified title and release date (latest first)
Q12: Find videos with a specified actor and release date range (latest first)
Q13: Find videos with a specified director and release date range (latest first)
Q14: Find videos with a specified genre and release date range (latest first)
Q15: Find videos with a specified actor and genre and date range (latest first)
Q16: Find videos with a specified director and genre and date range (latest first)
Q17: Find videos with a specified country (latest first)

