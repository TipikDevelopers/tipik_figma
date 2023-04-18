class UserModel {
  String token;
  UserModel(this.token);
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(json['token']);
  }
}
