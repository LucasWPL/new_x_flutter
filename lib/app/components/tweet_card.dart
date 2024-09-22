import 'package:flutter/material.dart';
import 'package:new_x/data/models/tweet.dart';

class TweetCard extends StatefulWidget {
  final Tweet tweet;

  const TweetCard({
    super.key,
    required this.tweet,
  });

  @override
  State<TweetCard> createState() => _TweetCardState();
}

class _TweetCardState extends State<TweetCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const BeveledRectangleBorder(),
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                widget.tweet.profilePicturePath ??
                    "assets/images/default_avatar.png",
                height: 55,
                width: 55,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey,
                    height: 55,
                    width: 55,
                  );
                },
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.tweet.name,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text('@${widget.tweet.username}'),
                    ],
                  ),
                  Text(
                    widget.tweet.text,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
