import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/components/scroll_icons.dart';
import 'package:travel_app/components/top_destinations.dart';
import 'package:travel_app/components/tripCard.dart';
import 'package:travel_app/models/destination.dart';
import 'package:travel_app/models/hotel.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<IconData> _iconsList = [
    Icons.airplanemode_active,
    Icons.bed,
    Icons.paragliding,
    Icons.bike_scooter,
    Icons.sports_tennis
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'What would you like to find? ',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ScrollIcons(iconsList: _iconsList),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Top destinations',
                        style: Theme.of(context).primaryTextTheme.headline2),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 19,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 280,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 5.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotels.length,
                    itemBuilder: (context, index) {
                      Hotel hotel = hotels[index];
                      return TripCard(
                        hotel: hotels[index],
                      );
                    },
                  ),
                ),
              ),
              TopDestinations(
                destinations: destinations,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.local_pizza),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage(
                "https://pbs.twimg.com/profile_images/1426563581332623365/hzac1Oiy_normal.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
