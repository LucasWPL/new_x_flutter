import 'package:get/get.dart';
import 'package:new_x/data/models/tweet.dart';
import 'package:new_x/data/repositories/tweet_repository.dart';

class TweetController extends GetxController {
  var tweets = <Tweet>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadTweets();
  }

  Future<void> loadTweets() async {
    final repository = TweetRepository();
    tweets.value = await repository.fetchTweets();
  }
}
