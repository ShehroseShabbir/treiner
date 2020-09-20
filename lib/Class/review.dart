class reviews {
  BigInt id;
  int rating;
  String Content;
  DateTime create_at;
  BigInt session_player_id;

  reviews({
    this.id,
    this.rating,
    this.Content,
    this.create_at,
    this.session_player_id,});

  getId(){
    return this.id;
  }
  getRating(){
    return this.rating;
  }
  getContent(){
    return this.Content;
  }
  getCreated_at(){
    return this.create_at;
  }
  getSession_palyer_id(){
    return this.session_player_id;
  }
}
