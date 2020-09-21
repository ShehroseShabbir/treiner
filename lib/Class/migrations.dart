class migrations {
  int id;
  String migration;
  int batch;

  migrations(this.id, this.migration, this.batch);

  getId() {
    return this.id;
  }

  getMigration() {
    return this.migration;
  }

  getBatch() {
    return this.batch;
  }
}
