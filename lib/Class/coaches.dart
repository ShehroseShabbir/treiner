import 'dart:core';
import 'package:treiner/Class/enums.dart';

class coaches {
  BigInt id;
  String club;
  bool is_company;
  String business_registration_number;
  coaches_qualification_enum qualification;
  int years_coaching;
  int treiner_fee;
  String stripe_token;
  String age_groups_coached; //TODO type check
  String session_types; //TODO type check
  String profile_summary;
  String profile_session;
  String profile_philosophy;
  String profile_playing;
  coaches_verification_status_enum verification_status;
  DateTime created_at;
  DateTime updated_at;
  DateTime deleted_at;
  int location_id;

  coaches({
      this.id,
      this.club,
      this.is_company,
      this.business_registration_number,
      this.qualification,
      this.years_coaching,
      this.treiner_fee,
      this.stripe_token,
      this.age_groups_coached,
      this.session_types,
      this.profile_summary,
      this.profile_session,
      this.profile_philosophy,
      this.profile_playing,
      this.verification_status,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.location_id});

  getId(){
    return this.id;
  }
  getClub(){
    return this.club;
  }
  getIsCompany(){
    return this.is_company;
  }
  getBusinessRegistrationNumber(){
    return this.business_registration_number;
  }
  getQualification(){
    return this.qualification;
  }
  getYearsCoaching(){
    return this.years_coaching;
  }
  getTreinerFee(){
    return this.treiner_fee;
  }
  getStripe_token(){
    return this.stripe_token;
  }
  getAgeGroupCoached(){
    return this.age_groups_coached;
  }
  getSessionType(){
    return this.session_types;
  }
  getProfileSummary(){
    return this.profile_summary;
  }
  getProfileSession(){
    return this.profile_session;
  }
  getProfilePhilosophy(){
    return this.profile_philosophy;
  }
  getProfilePlaying(){
    return this.profile_playing;
  }
  getVerificationStatus(){
    return this.verification_status;
  }
  getCreatedAt(){
    return this.created_at;
  }
  getUpdatedAt(){
    return this.updated_at;
  }
  getDeletedAt(){
    return this.deleted_at;
  }
  getLocationId(){
    return this.location_id;
  }
}
