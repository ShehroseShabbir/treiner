import 'package:treiner/Class/enums.dart';

class TUsers {
  int id;
  int role_id;
  String role_type;
  String first_name;
  String last_name;
  String email;
  String phone;
  users_gender_enum gender;
  users_notification_preference_enum notification_preference;
  String password;
  String currency;
  String image_id;
  DateTime dob;
  String email_verified_at;
  String phone_verified_at;
  users_permissions_enum permissions;
  DateTime created_at;
  DateTime updated_at;
  String remember_token;
  DateTime deleted_at;

  TUsers({
    this.id,
    this.role_id,
    this.role_type,
    this.first_name,
    this.last_name,
    this.email,
    this.phone,
    this.gender,
    this.notification_preference,
    this.password,
    this.currency,
    this.image_id,
    this.dob,
    this.email_verified_at,
    this.phone_verified_at,
    this.permissions,
    this.created_at,
    this.updated_at,
    this.remember_token,
    this.deleted_at,
  });
}
