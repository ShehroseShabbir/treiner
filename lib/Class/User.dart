<<<<<<< HEAD
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
=======
class TUsers {
  final int id;
  final int role_id;
  final String role_type;
  final String first_name;
  final String last_name;
  final String email;
  final String phone;
  final String gender;
  final bool notification_preference;
  final String password;
  final String currency;
  final String image_id;
  final String dob;
  final String email_verified_at;
  final String phone_verified_at;
  final String permissions;
  final String created_at;
  final String updated_at;
  final String remember_token;
  final String deleted_at;

  TUsers(
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
      {this.id});
>>>>>>> Janaki/master
}
