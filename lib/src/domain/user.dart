class User {
  String name;
  String about;
  int followers;

  User({required this.name, required this.about, this.followers = 0});

    factory User.fromJson(Map<String, dynamic> json) => User(
      name: json['name'],
      about: json['about'],
      followers: json['followers'],
    );
}
