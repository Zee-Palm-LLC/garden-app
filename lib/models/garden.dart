class GardenModel {
  String image;
  String name;
  GardenModel({
    required this.image,
    required this.name,
  });
}

List<GardenModel> dummyGardenList = [
  GardenModel(image: 'assets/banana.jpg', name: 'Banana\nGarden'),
  GardenModel(image: 'assets/mango.jpg', name: 'Mango\nGarden'),
];
