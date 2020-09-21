class failed_jobs{
  BigInt id;
  String connection;
  String queue;
  String payload;
  String exception;
  DateTime failed_at;

  failed_jobs(this.id, this.connection, this.queue, this.payload,
      this.exception, this.failed_at);
  getId(){
    return this.id;
  }
  getConnection(){
    return this.connection;
  }
  getQueue(){
    return this.queue;
  }
  getPayload(){
  return this.payload;
  }
  getException(){
    return this.exception;
  }
  getFailedAt(){
    return this.failed_at;
  }
}