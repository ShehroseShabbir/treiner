class blog_posts{
  int id;
  String image_id;
  int coach_id;
  String title;
  String excerpt;
  String content;
  DateTime created_at;
  DateTime updated_at;

  blog_posts(this.id, this.image_id, this.coach_id, this.title, this.excerpt,
      this.content, this.created_at, this.updated_at);

  getId(){
    return this.id;
  }
  getImageId(){
    return this.image_id;
  }
  getCoach_id(){
    return this.coach_id;
  }
  getTitle(){
    return this.title;
  }
  getExcerpt(){
    return this.excerpt;
  }
  getContent(){
    return this.content;
  }
  getCreatedAt(){
    return this.created_at;
  }
  getUpdatedAt(){
    return this.updated_at;
  }
}