class User {
  int? id;
  String? email;
  List<String>? roles;
  String? fullName;
  List<String>? demands;
  List<String>? suggetions;
  List<String>? news;

  User(
      {this.id,
      this.email,
      this.roles,
      this.fullName,
      this.demands,
      this.suggetions,
      this.news});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    roles = json['roles'].cast<String>();
    fullName = json['fullName'];
    demands = json['demands'].cast<String>();
    suggetions = json['suggetions'].cast<String>();
    news = json['news'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['roles'] = roles;
    data['fullName'] = fullName;
    data['demands'] = demands;
    data['suggetions'] = suggetions;
    data['news'] = news;
    return data;
  }
}
