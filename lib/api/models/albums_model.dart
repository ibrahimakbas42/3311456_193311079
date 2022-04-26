// import 'dart:convert';
//
// List<Albums> albumsFromJson(String str) =>
//     List<Albums>.from(json.decode(str).map((x) => Albums.fromJson(x)));
//
// String albumsToJson(List<Albums> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Albums {
  int? userId;
  int? id;
  String? title;

  Albums({this.userId, this.id, this.title});

  Albums.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    return data;
  }
}
