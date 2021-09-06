import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/trip.dart';

class TripDestinationCard extends StatefulWidget {
  final Trip trip;
  const TripDestinationCard({Key? key, required this.trip}) : super(key: key);

  @override
  _TripDestinationCardState createState() => _TripDestinationCardState();
}

class _TripDestinationCardState extends State<TripDestinationCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  15,
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: 140,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 320,
                        padding: EdgeInsets.fromLTRB(90.0, 12, 12, 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 140,
                                  child: Text(
                                    widget.trip.name,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "\$${widget.trip.price}",
                                      style: TextStyle(
                                        color: Colors.green[600],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    Text("per pax"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [Text(widget.trip.type)],
                            ),
                            _buildRating(
                              widget.trip.rating,
                            ),
                            _buildTimes(
                              widget.trip.startTimes,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          8,
                        ),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          widget.trip.imageUrl,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ), // Body
      ],
    );
  }

  Row _buildRating(int rating) {
    return Row(
      children: List.filled(
        rating,
        Icon(
          Icons.star,
          color: Colors.yellow[700],
          size: 18,
        ),
      ),
    );
  }

  Widget _buildTimes(List<String> times) {
    return Row(
      children: [
        Container(
          width: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: times
                .asMap()
                .entries
                .map(
                  (x) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          8,
                        ),
                      ),
                    ),
                    child: Text(
                      x.value,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
