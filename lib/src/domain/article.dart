class Article {
  String title;
  String author;
  String thumbnail;
  String overview;
  String created_at;

  Article(
      {required this.title,
      required this.author,
      required this.thumbnail,
      required this.overview,
      required this.created_at});

  factory Article.fromJson(Map<String, dynamic> json) => Article(
      title: json['title'],
      author: json['author'],
      thumbnail: json['thumbnail'],
      overview: json['overview'],
      created_at: json['created_at']);
}
