class Post {
  Map<String, dynamic> json;
  Post(this.json);

  factory Post.fromJson(dynamic data) {
    assert(data is Map);

    return Post(data);
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
