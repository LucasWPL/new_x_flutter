import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_x/data/controllers/tweet_controller.dart';
import 'package:new_x/app/components/tweet_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TweetController tweetController = Get.put(TweetController());

    return Scaffold(
      body: Obx(() {
        if (tweetController.tweets.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: tweetController.tweets.length,
          itemBuilder: (context, index) {
            final tweet = tweetController.tweets[index];
            return TweetCard(tweet: tweet);
          },
        );
      }),
    );
  }
}
