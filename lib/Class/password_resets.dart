class password_resets{
  String email;
  String token;
  DateTime created_at;

  password_resets(this.email, this.token, this.created_at);
  getEmail(){
    return this.email;
  }
  getToken(){
    return this.token;
  }
  getCreatedAt(){
    return this.created_at;
  }
}
