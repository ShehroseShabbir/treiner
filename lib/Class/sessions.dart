class sessions {
  BigInt id;
  BigInt coach_id;
  BigInt Location_id;
  DateTime stars;
  int length;
  int fee;
  bool group_min;
  bool group_max;
  String type;
  String status;
  DateTime deleted_at;
  DateTime created_at;
  DateTime updated_at;
  String zoom_number;
  bool supports_cash_payments;

  sessions({
    this.id,
    this.coach_id,
    this.Location_id,
    this.stars,
    this.length,
    this.fee,
    this.group_min,
    this.group_max,
    this.type,
    this.status,
    this.deleted_at,
    this.created_at,
    this.updated_at,
    this.zoom_number,
    this.supports_cash_payments,
  });

  getId() {
    return this.id;
  }

  getCoach_Id() {
    return this.coach_id;
  }

  getIsLocation_Id() {
    return this.Location_id;
  }

  getStars() {
    return this.stars;
  }

  getLength() {
    return this.length;
  }

  getGroup_min() {
    return this.group_min;
  }

  getGroup_max() {
    return this.group_max;
  }

  getType() {
    return this.type;
  }

  getStatus() {
    return this.status;
  }

  getDeleted_at() {
    return this.deleted_at;
  }

  getCreated_at() {
    return this.created_at;
  }

  getUpdated_at() {
    return this.updated_at;
  }

  getZoom_number() {
    return this.zoom_number;
  }

  getSupports_cash_payments() {
    return this.supports_cash_payments;
  }
}
