class Token {
  int? iat;
  int? exp;
  List<String>? roles;
  String? username;
  String? email;
  int? id;

  Token({this.iat, this.exp, this.roles, this.username, this.email, this.id});

  Token.fromJson(Map<String, dynamic> json) {
    iat = json['iat'];
    exp = json['exp'];
    roles = json['roles'].cast<String>();
    username = json['username'];
    email = json['email'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['iat'] = iat;
    data['exp'] = exp;
    data['roles'] = roles;
    data['username'] = username;
    data['email'] = email;
    data['id'] = id;
    return data;
  }
}
