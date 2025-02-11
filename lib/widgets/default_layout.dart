import 'package:experiment2/constants.dart';
import 'package:experiment2/pages/church_page.dart';
import 'package:experiment2/pages/communication_page.dart';
import 'package:experiment2/pages/home_page.dart';
import 'package:experiment2/pages/profile_page.dart';
import 'package:flutter/material.dart';

const navbarSize = 48.0;

typedef NavbarData = ({
  IconData icon,
  Widget page,
});

final List<NavbarData> _navbar = [
  (
    icon: Icons.home,
    page: const HomePage(),
  ),
  (
    icon: Icons.account_circle_rounded,
    page: const ProfilePage(),
  ),
  (
    icon: Icons.message,
    page: const CommunicationPage(),
  ),
  (
    icon: Icons.church,
    page: const ChurchPage(),
  ),
];

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    super.key,
    required this.child,
    required this.selectedIndex,
  });

  final int selectedIndex;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: child,
        ),
      ),
      bottomNavigationBar: IntrinsicHeight(
        child: Column(
          children: [
            const Divider(
              color: Colors.black,
              height: 0,
              thickness: Constants.primaryStrokeWidth,
            ),
            /***************************************************
             ** Navbar Content
             **************************************************/
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  for (var i = 0; i < _navbar.length; i++) ...[
                    if (i == selectedIndex)
                      /***************************************************
                     ** Selected Navbar Button
                     ***************************************************/
                      IconButton.outlined(
                        iconSize: navbarSize,
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              Constants.tertiaryColor),
                          side: WidgetStateProperty.all(
                              Constants.primaryBorderSide),
                          shape: _NavbarShape(),
                        ),
                        color: Constants.secondaryColor,
                        onPressed: () {},
                        icon: Icon(_navbar[i].icon),
                      )
                    /***************************************************
                     ** END Selected Navbar Button
                     ***************************************************/
                    else
                      /***************************************************
                     ** Non Selected Navbar Button
                     ***************************************************/
                      IconButton.outlined(
                        iconSize: navbarSize,
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              Constants.secondaryColor),
                          side: WidgetStateProperty.all(
                              Constants.primaryBorderSide),
                          shape: _NavbarShape(),
                        ),
                        color: Constants.tertiaryColor,
                        onPressed: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder: (context, _, __) => _navbar[i].page,
                            ),
                          );
                        },
                        icon: Icon(_navbar[i].icon),
                      ),
                    /***************************************************
                     ** END Non Selected Navbar Button
                     ***************************************************/
                    Expanded(child: Container()),
                  ],
                ],
              ),
            ),
            /***************************************************
             ** Navbar Content
             **************************************************/
          ],
        ),
      ),
    );
  }
}

class _NavbarShape extends WidgetStateProperty<OutlinedBorder> {
  _NavbarShape();

  @override
  OutlinedBorder resolve(Set<WidgetState> states) {
    return const RoundedRectangleBorder(
      side: Constants.primaryBorderSide,
      borderRadius: Constants.secondaryBorderRadius,
    );
  }
}
