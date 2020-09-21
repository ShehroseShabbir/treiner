class job_invitations{
  BigInt id;
  int coach_id;
  int job_post_id;
  DateTime created_at;
  DateTime updated_at;

  job_invitations(this.id, this.coach_id, this.job_post_id, this.created_at,
      this.updated_at);

  getId(){
    return this.id;
  }
  getCoachId(){
    return this.coach_id;
  }
  getJobPostId(){
    return this.job_post_id;
  }
  getCreatedAt(){
    return this.created_at;
  }
  getUpdatedAt(){
    return this.updated_at;
  }
}