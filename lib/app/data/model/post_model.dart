class PostModel {
  String profilepic, username, postings, description;

  bool isSponsored, isLiked;

  int likesCount;

  PostModel({
    required this.profilepic,
    required this.username,
    required this.postings,
    this.description = "",
    this.isSponsored = false,
    this.isLiked = false,
    required this.likesCount,
  });
}
