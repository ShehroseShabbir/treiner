import 'dart:convert';

import 'package:flutter/services.dart';

class camps {
  BigInt id;
  BigInt session_id;
  String image_id;
  String title;
  String description;
  String tos;
  String ages;
  DateTime start_time;
  DateTime end_time;
  int days;
  DateTime deleted_at;
  DateTime created_at;
  DateTime updated_at;

  camps({
    this.id,
    this.session_id,
    this.image_id,
    this.title,
    this.description,
    this.tos,
    this.ages,
    this.start_time,
    this.end_time,
    this.days,
    this.deleted_at,
    this.created_at,
    this.updated_at,
  });

  getId() {
    return this.id;
  }

  getSession_Id() {
    return this.session_id;
  }

  getImage_Id() {
    return this.image_id;
  }

  getTitle() {
    return this.title;
  }

  getDescription() {
    return this.description;
  }

  getTos() {
    return this.tos;
  }

  getAges() {
    return this.ages;
  }

  getStart_Time() {
    return this.start_time;
  }

  getEnd_Time() {
    return this.end_time;
  }

  getDays() {
    return this.days;
  }

  getCreated_at() {
    return this.created_at;
  }

  getUpdated_at() {
    return this.updated_at;
  }
}
