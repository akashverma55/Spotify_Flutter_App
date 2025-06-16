import 'package:flutter/material.dart';
import 'package:spotifyy/Pages/tab/Widgets/library_widget.dart';
import 'package:spotifyy/Data/data.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const appbarlibrary(),
          const SizedBox(height: 12),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const settings(),
                  const SizedBox(height: 20),
                  CustomListView(data: myListData)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
