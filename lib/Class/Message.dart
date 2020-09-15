class Converstaion {
  final int id;
  final int from_id;
  final int to_id;
  final String subject;
  final String created_at;
  final String updated_at;

  Converstaion(this.id, this.from_id, this.to_id, this.subject, this.created_at,
      this.updated_at);
}

class Message {
  final int id;
  final int from_id;
  final int to_id;
  final int conversation_id;
  final String content;
  final int seen;
  final String created_at;
  final String updated_at;

  Message(this.id, this.from_id, this.to_id, this.conversation_id, this.content,
      this.seen, this.created_at, this.updated_at);
}

class Comments {
  final int id;
  final int commentable_id;
  final String commentable_type;
  final int user_id;
  final String content;
  final String created_at;
  final String updated_at;

  Comments(this.id, this.commentable_id, this.commentable_type, this.user_id,
      this.content, this.created_at, this.updated_at);
}
