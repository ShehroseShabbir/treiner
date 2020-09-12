class Payments {
  final String id;
  final String billing_address_id;
  final String player_id;
  final String coach_id;
  final String amount;
  final String currency;
  final String charge_id;
  final String created_at;
  final String updated_at;

  const Payments(
      this.id,
      this.billing_address_id,
      this.player_id,
      this.coach_id,
      this.amount,
      this.currency,
      this.charge_id,
      this.created_at,
      this.updated_at);
}

class BillingAddresses {
  final String id;
  final String first_name;
  final String last_name;
  final String street_address;
  final String locality;
  final String state;
  final String country;
  final String postcode;

  BillingAddresses(
      this.id,
      this.first_name,
      this.last_name,
      this.street_address,
      this.locality,
      this.state,
      this.country,
      this.postcode);
}
