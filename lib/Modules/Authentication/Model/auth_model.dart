class AuthModel {
  User? user;
  String? token;
  String? status;
  String? messgage;

  AuthModel({this.user, this.token, this.status, this.messgage});

  AuthModel.fromJson(Map<String, dynamic> json) {
    user = json['User'] != null ? User.fromJson(json['User']) : null;
    token = json['Token'];
    status = json['Status'];
    messgage = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (user != null) {
      data['User'] = user!.toJson();
    }
    data['Token'] = token;
    data['Status'] = status;
    data['Message'] = messgage;
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  String? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['email_verified_at'] = emailVerifiedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
