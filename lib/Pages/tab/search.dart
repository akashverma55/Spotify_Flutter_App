import 'package:flutter/material.dart';
import 'Widgets/search_widget.dart';
import 'package:spotifyy/Data/data.dart';
import 'Widgets/home_widget.dart' hide AppBars;

class SearchPage extends StatelessWidget {
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
          const SearchBars(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height:20),
                  const STitle( title: 'Start Browsing',),
                  const SizedBox(height:12),
                  GridPopulars(data: gridPopularDataC),
                  const SizedBox(height:20),
                  const STitle(title: 'Discover something new'),
                  const SizedBox(height:12),
                  Videos(data: videos),
                  const SizedBox(height:20),  
                  const STitle(title: 'Browse all'),
                  const SizedBox(height:12),
                  GridPopulars(data: gridPopularDataC),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}