class TourismPlace {
  String name;
  String location;
  String imageAsset;

  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset,
  });
}

List tourismPlaceList = [
  TourismPlace(
      name: "Surabaya Submarine Monument",
      location: "Jalan Pemuda",
      imageAsset: "assets/images/kapal.jpg"),
  TourismPlace(
      name: "Kelenteng Sanggar Agung",
      location: "Kenjeran",
      imageAsset: "assets/images/kelenteng.jpeg"),
  TourismPlace(
      name: "House of Sampoerna",
      location: "Krembengan Utara",
      imageAsset: "assets/images/sampoerna.jpg"),
  TourismPlace(
      name: "Tugu Pahlawan",
      location: "Alun-Alun Contong",
      imageAsset: "assets/images/tugu_pahlawan.jpg"),
  TourismPlace(
      name: "Patung Suro Boyo",
      location: "Wonokromo",
      imageAsset: "assets/images/patung_suro_boyo.jpg"),
];
