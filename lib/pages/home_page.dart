import 'package:experiment2/constants.dart';
import 'package:experiment2/widgets/default_layout.dart';
import 'package:experiment2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      selectedIndex: 0,
      child: Padding(
        padding: Constants.horizontalPadding,
        child: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: CircularProgressIndicator(
                  strokeWidth: 8,
                  strokeCap: StrokeCap.round,
                ),
              ),
            ),
            const ProfileRow(
              imagePath: 'images/profile2.png',
              name: 'Dinobalwise',
              level: '13',
            ),
            const ProfileRow(
              imagePath: 'images/profile.png',
              name: 'Thoorin',
              level: '24',
            ),
            Card(
              child: Padding(
                padding: Constants.primaryPadding,
                child: Row(
                  children: [
                    Image.asset(
                      'images/profile2.png',
                      width: 150.0,
                    ),
                    const Expanded(
                      child: Text(
                        'Hello, World!',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DefaultButton(
              onPressed: () {},
              child: const Text('Hello'),
            ),
            DefaultButton(
              onPressed: () {},
              child: const Text('Fuck off!'),
            ),
            const Card(
              child: Padding(
                padding: Constants.primaryPadding,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                ),
              ),
            ),
            DefaultButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            DefaultButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            DefaultButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
          ],
        ),
      ),
    );
  }
}
