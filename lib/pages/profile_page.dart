import 'package:experiment2/constants.dart';
import 'package:experiment2/widgets/default_layout.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      selectedIndex: 1,
      child: Padding(
        padding: Constants.horizontalPadding,
        child: Column(
          children: [
            Switch(
              value: _isSwitched,
              onChanged: (val) {
                setState(() {
                  _isSwitched = val;
                });
              },
            ),
            const DropdownMenu(
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 'sda', label: '0'),
                DropdownMenuEntry(value: ' gh yg', label: '1'),
                DropdownMenuEntry(value: 's7777', label: '2')
              ],
            )
          ],
        ),
      ),
    );
  }
}
