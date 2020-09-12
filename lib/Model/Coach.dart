class Coach {
  final String coachID;
  final String club;
  final bool is_company;
  final String business_registration_number;
  final String qualification;
  final String years_coaching;
  final String treiner_fee;
  final String stripe_token;
  final String age_groups_coaches;
  final String session_types;
  final String profile_summary;
  final String profile_philosophy;
  final String profile_playing;
  final String verification_status;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final String location_id;
  const Coach(
      this.club,
      this.is_company,
      this.business_registration_number,
      this.qualification,
      this.years_coaching,
      this.treiner_fee,
      this.stripe_token,
      this.age_groups_coaches,
      this.session_types,
      this.profile_summary,
      this.profile_philosophy,
      this.profile_playing,
      this.verification_status,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.location_id,
      {this.coachID});
}
