import 'package:flutter/material.dart';
import 'Widgets/home_widget.dart';
import 'package:spotifyy/Data/data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const AppBars(),
          const SizedBox(height: 12),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GridPopular(data: gridPopularData),
                  const SizedBox(height:20),
                  const Advertisement(),
                  const SizedBox(height:20),
                  const STitle( title: 'Your Top Mixes',),
                  const SizedBox(height:8),
                  SliderWidget1(data: topMixes),
                  const SizedBox(height:20),
                  const STitle(title: 'Artists',),
                  const SizedBox(height:8),
                  SliderWidget2(data: artists),
                  const SizedBox(height:20),
                  const STitle(title: 'Search',),
                  const SizedBox(height:8),
                  SliderWidget3(data: topHit),
                  const SizedBox(height:20),
                  const STitle(title: 'Podcasts',),
                  const SizedBox(height:8),
                  SliderWidget4(data: podCast),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

