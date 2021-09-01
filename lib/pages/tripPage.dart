import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TripPage extends StatelessWidget {
  const TripPage({Key? key}) : super(key: key);
  final String pageTitle = 'Travel App';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            Row(
              children: [
                Icon(Icons.search),
                Icon(Icons.menu_rounded),
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Text('Hellow'),
      ),
    );
  }
}
