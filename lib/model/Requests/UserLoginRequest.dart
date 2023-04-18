class UserLoginRequest {
  final String email;
  final String password;
  UserLoginRequest(this.email, this.password);
  Map<String, dynamic> toJson() {
    return {"email": email, "password": password};
  }
}
