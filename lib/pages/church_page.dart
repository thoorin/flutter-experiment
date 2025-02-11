import 'package:experiment2/constants.dart';
import 'package:experiment2/widgets/default_layout.dart';
import 'package:experiment2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChurchPage extends StatelessWidget {
  const ChurchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      selectedIndex: 3,
      child: Padding(
        padding: Constants.horizontalPadding,
        child: ListView(
          children: [
            const TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Write a message...',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: DefaultButton(
                onPressed: () {},
                child: const Text('Send'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
