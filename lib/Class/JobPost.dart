class Job {
  final String job_id;
  final String title;
  final String player_id;
  final String location_id;
  final String starts;
  final String details;
  final String fee;
  final String type;
  final String length;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  Job(
      this.job_id,
      this.title,
      this.player_id,
      this.location_id,
      this.starts,
      this.details,
      this.fee,
      this.type,
      this.length,
      this.created_at,
      this.updated_at,
      this.deleted_at);
}
