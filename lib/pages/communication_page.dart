import 'package:experiment2/constants.dart';
import 'package:experiment2/widgets/default_layout.dart';
import 'package:flutter/material.dart';

class CommunicationPage extends StatelessWidget {
  const CommunicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      selectedIndex: 2,
      child: Padding(
        padding: Constants.horizontalPadding,
        child: Column(
          children: [
            SearchBar(
              hintText: 'Search for a user',
              trailing: [
                IconButton(
                  iconSize: 48.0,
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: Constants.primaryStrokeWidth,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Stack(
                    children: [
                      Image.asset(
                        'images/background.png',
                      ),
                      Image.asset(
                        'images/table.png',
                        width: 200,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
