import 'package:experiment2/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      /*********************************************************
       ** Setting ThemeData
       *********************************************************/
      theme: ThemeData(
        /*********************************************************
         ** Setting ColorScheme
         *********************************************************/
        colorScheme: const ColorScheme(
          primary: Colors.black,
          background: Constants.backgroundColor,
          secondary: Constants.tertiaryColor,
          surface: Constants.primaryColor,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        /*********************************************************
         ** END Setting ColorScheme
         *********************************************************/

        iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(
              Constants.tertiaryColor,
            ),
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: Constants.primaryTextStyle,
          bodyMedium: Constants.primaryTextStyle,
        ),
        cardTheme: const CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: Constants.primaryBorderRadius,
            side: Constants.primaryBorderSide,
          ),
          margin: EdgeInsets.only(bottom: 16.0),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: Constants.primaryTextStyle,
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: Constants.primaryBorderSide,
            borderRadius: Constants.secondaryBorderRadius,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: Constants.primaryBorderSide,
            borderRadius: Constants.secondaryBorderRadius,
          ),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Constants.secondaryColor,
        ),
        menuButtonTheme: MenuButtonThemeData(
          style: ButtonStyle(
            textStyle: WidgetStateProperty.all<TextStyle>(
              Constants.primaryTextStyle,
            ),
            //backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
          ),
        ),
        searchBarTheme: const SearchBarThemeData(
          textStyle: WidgetStatePropertyAll(Constants.primaryTextStyle),
          backgroundColor: WidgetStatePropertyAll(Colors.white),
          elevation: WidgetStatePropertyAll(0),
          side: WidgetStatePropertyAll(
            Constants.primaryBorderSide,
          ),
        ),

        /*********************************************************
         ** Setting DropdownMenuTheme
         *********************************************************/
        dropdownMenuTheme: const DropdownMenuThemeData(
          inputDecorationTheme: InputDecorationTheme(
            //fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: Constants.primaryBorderSide,
              borderRadius: Constants.secondaryBorderRadius,
            ),
          ),
          textStyle: Constants.primaryTextStyle,
          menuStyle: MenuStyle(
            side: WidgetStatePropertyAll(
              Constants.primaryBorderSide,
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: Constants.secondaryBorderRadius,
              ),
            ),
            padding: WidgetStatePropertyAll(
              EdgeInsets.zero,
            ),
          ),
        ),
        /*********************************************************
         ** END Setting DropdownMenuTheme
         *********************************************************/

        switchTheme: SwitchThemeData(
          trackOutlineColor: WidgetStateProperty.resolveWith(
            (states) {
              return states.contains(WidgetState.selected)
                  ? Colors.black
                  : Colors.black;
            },
          ),
          trackOutlineWidth: WidgetStateProperty.all(2.0),
          trackColor: WidgetStateProperty.resolveWith(
            (states) {
              return states.contains(WidgetState.selected)
                  ? Constants.tertiaryColor
                  : const Color(0x34000000);
            },
          ),
          thumbColor: WidgetStateProperty.resolveWith(
            (states) {
              return states.contains(WidgetState.selected)
                  ? Constants.secondaryColor
                  : Colors.white;
            },
          ),
        ),

        /*********************************************************
         ** Setting ElevatedButtonThemeData
         *********************************************************/
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              Constants.secondaryColor,
            ),
            side: WidgetStateProperty.all<BorderSide>(
              Constants.primaryBorderSide,
            ),
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              Constants.primaryPadding,
            ),
            textStyle: WidgetStateProperty.all<TextStyle>(
              Constants.primaryTextStyle,
            ),
            elevation: WidgetStateProperty.all<double>(0),
          ),
        ),
        /*********************************************************
         ** END Setting ElevatedButtonThemeData
         *********************************************************/

        useMaterial3: true,
      ),
      /*********************************************************
       ** END Setting ThemeData
       *********************************************************/

      home: const HomePage(),
    );
  }
}
