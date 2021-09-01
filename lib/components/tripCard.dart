import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TripCard extends StatefulWidget {
  final String title;
  TripCard({Key? key, required this.title}) : super(key: key);

  @override
  _TripCardState createState() => _TripCardState();
}

class _TripCardState extends State<TripCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://exp.cdn-hotels.com/hotels/34000000/33650000/33641200/33641198/2efd19a6_z.jpg?impolicy=fcrop&w=500&h=333&q=medium"),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 8),
                          spreadRadius: 4,
                          blurRadius: 6.5,
                          color: Colors.black45.withOpacity(
                            (0.2),
                          ),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Venice',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(2, 2.5),
                                    blurRadius: 4.0,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ]),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_city,
                                color: Colors.grey,
                              ),
                              Text(
                                'Italy',
                                style: TextStyle(
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(2, 2.5),
                                      blurRadius: 4.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Text(
                  "125 Activities",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
                Text(
                    "Aliquip exercitation ipsum labore est qui minim do aliquip et ullamco ipsum consectetur sint.",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Theme.of(context).textTheme.subtitle1?.color))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
