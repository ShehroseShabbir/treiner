class Locations {
  final int id;
  final double latitude;
  final double longitude;
  final String street_address;
  final String locality;
  final String country;
  final String timezone;
  final String created_at;
  final String updated_at;

  Locations(
      this.id,
      this.latitude,
      this.longitude,
      this.street_address,
      this.locality,
      this.country,
      this.timezone,
      this.created_at,
      this.updated_at);
}
