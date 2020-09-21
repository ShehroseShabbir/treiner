class Coupons {
  final String code;
  final int percent_off;
  final int amount_off;
  final int times_redeemable_per_person;
  final int times_redeemable_total;
  final int coach_id;
  final String redeem_by;
  final String currency;
  final String created_at;
  final String updated_at;

  Coupons(
      this.code,
      this.percent_off,
      this.amount_off,
      this.times_redeemable_per_person,
      this.times_redeemable_total,
      this.coach_id,
      this.redeem_by,
      this.currency,
      this.created_at,
      this.updated_at);
}

class CouponPlayer {
  final int id;
  final String coupon_id;
  final int player_id;
  final String created_at;
  final String updated_at;

  CouponPlayer(this.id, this.coupon_id, this.player_id, this.created_at,
      this.updated_at);
}
