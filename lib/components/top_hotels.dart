import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopHotels extends StatefulWidget {
  const TopHotels({Key? key}) : super(key: key);

  @override
  _TopHotelsState createState() => _TopHotelsState();
}

class _TopHotelsState extends State<TopHotels> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exclusive Hotels",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
