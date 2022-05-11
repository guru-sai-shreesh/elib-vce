class Book {
  late String author_name;
  late String book_name;
  late String? description;
  late int? quantity;
  late String? location;
  late String? image_address;
  late bool? isPhysicalBook;
  late bool? isEBook;
  Book(
      {required this.author_name,
      required this.book_name,
      this.description,
      this.isPhysicalBook,
      this.isEBook,
      this.image_address});
}
