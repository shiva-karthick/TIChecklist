class Post {
  Map<String, dynamic> json;
  Post(this.json);

  factory Post.fromJson(dynamic data) {
    assert(data is Map);

    return Post(data);
  }
}
