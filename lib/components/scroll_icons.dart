import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollIcons extends StatefulWidget {
  final List<IconData> iconsList;
  ScrollIcons({Key? key, required this.iconsList}) : super(key: key);

  @override
  _ScrollIconsState createState() => _ScrollIconsState();
}

class _ScrollIconsState extends State<ScrollIcons> {
  int _selectedIndex = 0;

  Widget _buildIcon(int index, context) {
    return GestureDetector(
      onTap: () => setSelected(index),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: isSelected(index)
              ? Theme.of(context).accentColor
              : Colors.grey[300],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          widget.iconsList[index],
          size: isSelected(index) ? 30 : 25,
          color:
              isSelected(index) ? Theme.of(context).primaryColor : Colors.grey,
        ),
      ),
    );
  }

  bool isSelected(i) {
    return _selectedIndex == i;
  }

  void setSelected(i) {
    setState(() {
      _selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: widget.iconsList
          .asMap()
          .entries
          .map((MapEntry map) => _buildIcon(map.key, context))
          .toList(),
    );
  }
}
