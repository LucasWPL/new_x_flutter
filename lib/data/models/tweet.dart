class Tweet {
  final String name;
  final String username;
  final DateTime creationDate;
  final String text;
  final String? profilePicturePath;

  Tweet({
    required this.name,
    required this.username,
    required this.creationDate,
    required this.text,
    required this.profilePicturePath,
  });
}
