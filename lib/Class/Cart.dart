class CartItems {
  final int id;
  final int session_id;
  final int player_id;
  final int players;
  final String created_at;
  final String updated_at;
  final String idempotency_key;
  final int coupon_player_id;

  CartItems(
      this.id,
      this.session_id,
      this.player_id,
      this.players,
      this.created_at,
      this.updated_at,
      this.idempotency_key,
      this.coupon_player_id);
}
