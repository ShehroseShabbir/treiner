class reviews {
  BigInt id;
  BigInt coach_id;
  String camp_id;
  DateTime accepted_at;
  DateTime created_at;
  DateTime updated_at;

  reviews({
    this.id,
    this.coach_id,
    this.camp_id,
    this.accepted_at,
    this.created_at,
    this.updated_at,
  });

  getId(){
    return this.id;
  }
  getCoach_id(){
    return this.coach_id;
  }
  getCamp_id(){
    return this.camp_id;
  }
  getAccepted_at(){
    return this.accepted_at;
  }
  getCreated_at(){
    return this.created_at;
  }
  getUpdated_at(){
    return this.updated_at;
  }
}