class Purchase {
  String image;
  String title;
  String size;
  double price;
  Purchase({
    required this.image,
    required this.title,
    required this.size,
    required this.price,
  });
}

List<Purchase> dummyList = [
  Purchase(
      image: 'assets/mango.jpg',
      title: 'Mango Tree',
      size: 'SMALL',
      price: 15.07),
  Purchase(
      image: 'assets/banana.jpg',
      title: 'Banana Tree',
      size: 'MEDIUM',
      price: 25.07),
  Purchase(
      image: 'assets/mango.jpg',
      title: 'Palm Tree',
      size: 'LARGE',
      price: 12.07),
  Purchase(
      image: 'assets/banana.jpg', title: 'Berry', size: 'SMALL', price: 50.42),
];
