import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:new_x/data/models/tweet.dart';

class TweetRepository {
  Future<List<Tweet>> fetchTweets() async {
    final String contents =
        await rootBundle.loadString('assets/csv/tweets.csv');

    final List<Tweet> tweets = [];

    for (var line in LineSplitter.split(contents)) {
      final fields = line.split(';');

      if (fields.length >= 4) {
        tweets.add(Tweet(
          name: fields[0],
          username: fields[1],
          creationDate: DateTime.parse(fields[2]),
          text: fields[3],
          profilePicturePath: fields[4].isNotEmpty
              ? fields[4]
              : "assets/images/default_avatar.png",
        ));
      }
    }

    return tweets;
  }
}
