class players {
  int id;
  DateTime created_at;
  DateTime updated_at;
  DateTime deleted_at;

  players(this.id, this.created_at, this.updated_at, this.deleted_at);

  getId() {
    return this.id;
  }

  getCreatedAt() {
    return this.created_at;
  }

  getUpdatedAt() {
    return this.updated_at;
  }

  getDeletedAt() {
    return this.deleted_at;
  }
}
