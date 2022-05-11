class Subscription {
  late String subscription_name;
  late String provider;
  late String? description;
  late String? image_address;
  late List<String>? tags;
  Subscription(
      {required this.subscription_name,
      required this.provider,
      this.description,
      this.tags,
      this.image_address});
}
