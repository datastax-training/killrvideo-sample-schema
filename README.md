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

 - Display video with related movie metadata
 - Lookup of movie trailer videos by title and year
 - Lookup of movie trailer videos by actor
 - Lookup of movie trailer videos by director
 - Lookup of movie trailer videos by genre


List of queries
======================

Original
Q1: Find user by email
Q2: Find user by userid
Q3: Find video by tag
Q4: Find video by videoid
Q5: Find videos by adddate (latest first)
Q6: Find videos by userid (latest first)
Q7: Find comments by videoid (latest first)
Q8: Find comments by userid (latest first)
Q9: Find ratings by videoid


Extended
Q10: Find movie by title and year
Q11: Find movie by videoid
Q12: Find movie by actor (latest first)
Q13: Find movie by director (latest first)
Q14: Find movie by genre (latest first)
