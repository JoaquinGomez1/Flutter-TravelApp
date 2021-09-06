class Trip {
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;

  Trip({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.startTimes,
    required this.rating,
    required this.price,
  });
}

List<Trip> trips = [
  new Trip(
    imageUrl:
        "https://ep01.epimg.net/elviajero/imagenes/2017/05/26/actualidad/1495804610_660965_1495807385_noticia_normal.jpg",
    name: "Viena",
    startTimes: ["09:00", "11:00"],
    price: 350,
    rating: 4,
    type: "Type",
  ),
  new Trip(
    imageUrl:
        "https://pix10.agoda.net/hotelImages/495/49565/49565_17101805150057910027.jpg?s=1024x768",
    name: "Venice",
    startTimes: ["11:00", "12:00"],
    price: 400,
    rating: 5,
    type: "Plane",
  ),
  new Trip(
    imageUrl:
        "https://a.cdn-hotels.com/gdcs/production54/d92/42eebd50-a527-11e8-85aa-0242ac110006.jpg",
    name: "Walk trough Berlin",
    startTimes: ["09:30", "14:00"],
    price: 185,
    rating: 4,
    type: "Walk",
  ),
  new Trip(
    imageUrl:
        "https://www.lavanguardia.com/files/content_image_mobile_filter/uploads/2019/09/23/5fa539866b6a1.jpeg",
    name: "Viena",
    startTimes: ["09:00", "11:00"],
    price: 350,
    rating: 4,
    type: "Type",
  ),
];
