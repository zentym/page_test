import 'user.dart';

class Post {
  final String createdDate;
  final String title;
  final String content;
  final String status;
  final List<String> photos;
  final User user;
  Post(this.createdDate, this.title, this.content, this.status, this.photos,
      this.user);
}
