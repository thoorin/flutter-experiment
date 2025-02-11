import 'package:experiment2/constants.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    super.key,
    required this.imagePath,
    required this.name,
    required this.level,
  });

  final String imagePath;
  final String name;
  final String level;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: Constants.primaryPadding,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Image.asset(
                imagePath,
                width: 50.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(level),
            ),
            Expanded(
              child: Text(name),
            ),
          ],
        ),
      ),
    );
  }
}
