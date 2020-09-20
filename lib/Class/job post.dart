class job_post{
  BigInt id;
  String title;
  BigInt player_id;
  BigInt location_id;
  String details;
  int fee;
  int lenght;
  String idempotency_key;
  DateTime deleted_at;
  DateTime created_at;
  DateTime updated_at;


  job_post({
    this.id,
    this.player_id,
    this.title,
    this.location_id,
    this.details,
    this.fee,
    this.lenght,
    this.deleted_at,
    this.created_at,
    this.updated_at,
});
  etId(){
    return this.id;
  }
  getPlayer_Id(){
    return this.player_id;
  }
  getIsLocation_Id(){
    return this.location_id;
  }
  getDetails(){
    return this.details;
  }
  getFee(){
    return this.fee;
  }
  getlength(){
    return this.lenght;
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