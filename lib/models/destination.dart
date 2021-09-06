import 'package:travel_app/models/trip.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Trip> trips;

  Destination({
    required this.imageUrl,
    required this.description,
    required this.city,
    required this.country,
    required this.trips,
  });
}

List<Destination> destinations = [
  new Destination(
    city: "Venice",
    country: "Italy",
    description:
        "Deserunt cillum sit enim aliquip do reprehenderit duis velit.",
    imageUrl:
        "https://exp.cdn-hotels.com/hotels/34000000/33650000/33641200/33641198/2efd19a6_z.jpg?impolicy=fcrop&w=500&h=333&q=medium",
    trips: trips,
  ),
  new Destination(
    city: "Berlin",
    country: "Germany",
    description:
        "Deserunt cillum sit enim aliquip do reprehenderit duis velit.",
    imageUrl:
        "https://assets.buendiatours.com/s3fs-public/styles/highlight_large/public/2019-11/berlin-por-que-visitar-vista-aerea-noche_4.jpg?VersionId=Hn5MEzXrBpeYSWDlp19Yu6il4Nt1p3uS&itok=wbeD35Qm",
    trips: trips,
  ),
  new Destination(
    city: "Seattle",
    country: "USA",
    description:
        "Deserunt cillum sit enim aliquip do reprehenderit duis velit.",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Space_Needle002.jpg/1200px-Space_Needle002.jpg",
    trips: trips,
  ),
];
