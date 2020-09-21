class newsletter_subscriptions{
  String unsub_token;
  String email;
  DateTime created_at;
  DateTime updated_at;

  newsletter_subscriptions(this.unsub_token, this.email, this.created_at,
      this.updated_at);

  getUnsubToken(){
    return this.unsub_token;
  }
  getEmail(){
    return this.email;
  }
  getCreatedAt(){
    return this.created_at;
  }
  getUpdatedAt(){
    return this.updated_at;
  }
}