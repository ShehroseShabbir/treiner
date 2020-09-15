class Report {
  final int id;
  final int complaint_id;
  final String complaint_type;
  final int defendant_id;
  final String defendant_type;
  final int session_id;
  final String content;
  final int resolved;
  final String created_at;
  final String updated_at;

  Report(
      this.id,
      this.complaint_id,
      this.complaint_type,
      this.defendant_id,
      this.defendant_type,
      this.session_id,
      this.content,
      this.resolved,
      this.created_at,
      this.updated_at);
}
