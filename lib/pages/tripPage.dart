import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/components/tripDestinationCard.dart';
import 'package:travel_app/models/hotel.dart';
import 'package:travel_app/models/trip.dart';

class TripPage extends StatelessWidget {
  final Hotel hotel;
  const TripPage({Key? key, required this.hotel}) : super(key: key);
  final String pageTitle = 'Travel App';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width / 1.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    hotel.imageUrl,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(15),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color(0x88000000),
                            Color(0x44000000),
                            Color(0x00000000)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                          bottom: 15.0,
                        ),
                        child: _topNavigation(context),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                          bottom: 15.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hotel.city,
                              style:
                                  Theme.of(context).primaryTextTheme.headline1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  hotel.country,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle1,
                                ),
                                Icon(
                                  Icons.location_city_rounded,
                                  size: 32.0,
                                  color: Colors.white.withOpacity(
                                    0.50,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0,),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 16.0,
                    ),
                    child: ListView.builder(
                      itemCount: hotel.trips.length,
                      itemBuilder: (context, i) {
                        Trip trip = hotel.trips[i];
                        return TripDestinationCard(trip: trip);
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _topNavigation(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.menu_rounded),
          ],
        )
      ],
    );
  }
}
