import 'package:flutter/material.dart';
import 'package:spotifyy/constants/colors.dart';
import 'package:spotifyy/Data/data.dart';

class AppBars extends StatelessWidget {
  const AppBars({super.key}); // <-- make constructor const

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Avatar Container
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(15)),
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
        SizedBox(width: 10),
        Text(
          'Search',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
        Spacer(),
        Icon(Icons.camera_alt_outlined, color: Colors.white, size: 30),
      ],
    );
  }
}

class SearchBars extends StatelessWidget {
  const SearchBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: Colors.black87),
          hintText: 'What do you want to listen to?',
          hintStyle: TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class GridPopulars extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  const GridPopulars({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4, // or more
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, // max width per tile
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 3, // Wider tile shape
      ),
      itemBuilder: (context, index) {
        final item = data[index];
        return Container(
          decoration: BoxDecoration(
            color: hexToColor(item['color']),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    item['title'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Transform.rotate(
                angle: 0.3, // tilt in radians (~11.5 degrees)
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(item['image']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Videos extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  const Videos({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // height of the video tiles
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];

          return Container(
            width: 150,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(item['image']),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    item['title'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class GridPopularcategory extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  const GridPopularcategory({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: data.length, 
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, // max width per tile
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 2.5, // Wider tile shape
      ),
      itemBuilder: (context, index) {
        final item = data[index];
        return Container(
          decoration: BoxDecoration(
            color: hexToColor(item['color']),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    item['title'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Transform.rotate(
                angle: 0.3, // tilt in radians (~11.5 degrees)
                child: Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(item['image']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}