import 'dart:convert';

class session_player{
  BigInt id;
  BigInt player_id;
  BigInt session_id;
  BigInt payment_id;
  bool review_email_sent;
  JsonCodec player_info;
  int players;
  DateTime deleted_at;
  DateTime created_at;
  DateTime updated_at;

  session_player({
    this.id,
    this.player_id,
    this.payment_id,
    this.session_id,
    this.players,
    this.review_email_sent,
    this.player_info,
    this.deleted_at,
    this.created_at,
    this.updated_at
});

  getId(){
    return this.id;
  }
  getPlayer_Id(){
    return this.player_id;
  }
  getSession_Id(){
    return this.session_id;
  }
  getPayment_id(){
    return this.payment_id;
  }
  getReview_email_sent(){
    return this.review_email_sent;
  }
  getPlayer_info(){
    return this.player_info;
  }
  getPlayers(){
    return this.players;
  }

  getDeleted_at(){
    return this.deleted_at;
  }
  getCreated_at(){
    return this.created_at;
  }
  getUpdated_at(){
    return this.updated_at;
  }

}