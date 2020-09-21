class verification_date{
  int id;
  int coach_id;
  String verification_type;
  String verification_number;
  DateTime created_at;
  DateTime updated_at;

  verification_date(this.id, this.coach_id, this.verification_type,
      this.verification_number, this.created_at, this.updated_at);

  getId(){
    return this.id;
  }
  getCoachId(){
    return this.coach_id;
  }
  getVerificationType(){
    return this.verification_type;
  }
  getVerificationNumber(){
    return this.verification_number;
  }
  getCreatedAt(){
    return this.created_at;
  }
  getUpdatedAt(){
    return this.updated_at;
  }
}