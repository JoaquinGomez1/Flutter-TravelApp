import 'package:travel_app/models/trip.dart';

class Hotel {
  String name;
  String imageUrl;
  String country;
  String city;
  String description;
  List<Trip> trips;

  Hotel({
    required this.name,
    required this.city,
    required this.country,
    required this.description,
    required this.imageUrl,
    required this.trips,
  });
}

List<Hotel> hotels = [
  new Hotel(
    city: "Venice",
    country: "Italy",
    description:
        "Deserunt cillum sit enim aliquip do reprehenderit duis velit.",
    name: "Travel by Gondola",
    imageUrl:
        "https://exp.cdn-hotels.com/hotels/34000000/33650000/33641200/33641198/2efd19a6_z.jpg?impolicy=fcrop&w=500&h=333&q=medium",
    trips: trips,
  ),
  new Hotel(
    city: "Berlin",
    country: "Germany",
    description:
        "Deserunt cillum sit enim aliquip do reprehenderit duis velit.",
    name: "A Walk trough the streets of Berlin",
    imageUrl:
        "https://assets.buendiatours.com/s3fs-public/styles/highlight_large/public/2019-11/berlin-por-que-visitar-vista-aerea-noche_4.jpg?VersionId=Hn5MEzXrBpeYSWDlp19Yu6il4Nt1p3uS&itok=wbeD35Qm",
    trips: trips,
  ),
  new Hotel(
    city: "Seattle",
    country: "USA",
    description:
        "Deserunt cillum sit enim aliquip do reprehenderit duis velit.",
    name: "Roadtrip across the norteast region of the US",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Space_Needle002.jpg/1200px-Space_Needle002.jpg",
    trips: trips,
  ),
];
