class Demands {
  int? id;
  String? fullName;
  int? tel;
  String? topic;
  String? description;
  String? owner;
  List<String>? responses;

  Demands(
      {this.id,
      this.fullName,
      this.tel,
      this.topic,
      this.description,
      this.owner,
      this.responses});

  Demands.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    tel = json['tel'];
    topic = json['topic'];
    description = json['description'];
    owner = json['owner'];
    responses = json['responses'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['fullName'] = fullName;
    data['tel'] = tel;
    data['topic'] = topic;
    data['description'] = description;
    data['owner'] = owner;
    data['responses'] = responses;
    return data;
  }
}
