import 'package:flutter/material.dart';

class AppBars extends StatelessWidget {
  const AppBars({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 30,
          height: 30,
          margin: EdgeInsets.only(bottom: 10), // Space from bottom
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'A',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        Container(
          width: 45,
          height: 30,
          margin: EdgeInsets.only(left: 10, bottom: 10), // Space from bottom
          decoration: BoxDecoration(
            color: Colors.green[600],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              'All',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Container(
          width: 70,
          height: 30,
          margin: EdgeInsets.only(left: 5, bottom: 10), // Space from bottom
          decoration: BoxDecoration(
            color: Colors.grey[700],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              'Music',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Container(
          width: 90,
          height: 30,
          margin: EdgeInsets.only(left: 5, bottom: 10), // Space from bottom
          decoration: BoxDecoration(
            color: Colors.grey[700],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              'Podcasts',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class GridPopular extends StatelessWidget {
  const GridPopular({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Number of columns
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.0,
      ),
      itemCount: 8, // Adjust based on your data
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              'Popular $index',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}