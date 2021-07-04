class Post {
  String detachment;
  int totalMissingItems;

  Post({this.detachment, this.totalMissingItems});

  Post.fromJson(Map<String, dynamic> json) {
    detachment = json['detachment'];
  }

  // // RETURN TYPE function_name(){}
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['userId'] = this.userId;
  //   data['id'] = this.id;
  //   data['title'] = this.title;
  //   data['body'] = this.body;
  //   data['likes'] = this.likes;
  //   return data;
  // }
}
