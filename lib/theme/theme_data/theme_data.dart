import 'package:flutter/material.dart';
import 'package:notes/theme/font_sizes/font_sizes.dart';
import 'package:notes/theme/colors/colors.dart';
import 'package:notes/theme/spaces/spaces.dart';

class NoteApplicationThemeData {
  NoteApplicationThemeData._internal();
  static final NoteApplicationThemeData _noteAppTheme = NoteApplicationThemeData._internal();
  factory NoteApplicationThemeData() {
    return _noteAppTheme;
  }
  //////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////
  //------------------------COLORS-----------------------------//
  // static const _r9PrimaryColor = R9ColorPallete.lightOrange;
  // static const _r9SecondaryColor = R9ColorPallete.brownOne;
  // static const _r9BlackColor = R9ColorPallete.blackOne;
  // static const _r9WhiteColor = R9ColorPallete.whiteOne;
  // static const _r9UnassignedNamedGreenColor = R9ColorPallete.greenOne;
  // static const _r9UnassignedNamedBejColor = R9ColorPallete.bejOne;
  // static const _r9UnassignedNamedDarkOrangeColor = R9ColorPallete.darkOrange;
  //-----------------------COLORS------------------------------------//
  //////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////
//-----------------------------PRIVATE DECORATIONS-------------------------------//
  final _notesAppInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(NoteAppSpaces.kBorderRadius),
  );
  //---------------------------------TEXT THEME----------------------------------------//
  TextTheme _textThemeMain(BuildContext context) {
    return Theme.of(context).textTheme.copyWith(
          displayLarge: const TextStyle(fontSize: FontSizes.fontSizeBig, color: MainColors.blackColor, fontWeight: FontWeight.w600),
          displayMedium: const TextStyle(fontSize: FontSizes.fontSizeMedium, color: MainColors.blackColor),
          displaySmall: const TextStyle(fontSize: FontSizes.fontSizeSmall, color: MainColors.blackColor),
          bodyLarge: const TextStyle(fontSize: FontSizes.fontSizeMedium, color: MainColors.whiteColor),
          bodyMedium: const TextStyle(fontSize: FontSizes.fontSizeSmall, color: MainColors.whiteColor),
          bodySmall: const TextStyle(fontSize: FontSizes.fontSizeExtraSmall, color: MainColors.whiteColor),
        );
  }

//---------------------------------TEXT THEME----------------------------------------//
  //-----------------------------PRIVATE DECORATIONS-------------------------------//
  ////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////
  //------------------------------PUBLIC DECORATIONS-------------------------------//
  // static const r9BorderShape = R9BorderShape(radius: 70, pathWidth: 4);
  // static const r9BorderRadius = BorderRadius.all(Radius.circular(12));
  // static void setSystemUiOverlay() {
  //   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  // }

  //------------------------------PUBLIC DECORATIONS-------------------------------//
  ////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////

  //////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////
  //-----------------------------MAIN THEMEDATA--------------------------------------//
  ThemeData _mainTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: 'RobotoMono',

      // scaffoldBackgroundColor: _r9UnassignedNamedBejColor,
      // primaryColor: _r9PrimaryColor,
      // colorScheme: ColorScheme.fromSwatch().copyWith(primary: _r9WhiteColor, secondary: _r9PrimaryColor),
      // indicatorColor: _r9WhiteColor,
      textTheme: _textThemeMain(context),
      // primaryIconTheme: const IconThemeData(
      //   color: _r9PrimaryColor,
      // ),
      // iconTheme: const IconThemeData(
      //   color: _r9PrimaryColor,
      // ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all<Color?>(MainColors.whiteColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(NoteAppSpaces.kBorderRadius),
            ),
          ),
        ),
      ),
      iconTheme: const IconThemeData(
        size: 25,
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(12),
        hintStyle: const TextStyle(color: MainColors.greyColor),
        enabledBorder: _notesAppInputBorder,
        focusedBorder: _notesAppInputBorder,
        // focusedErrorBorder: _notesAppInputBorder,
        // errorBorder: _notesAppInputBorder,

        // prefixIconColor: _r9PrimaryColor,
        // fillColor: MainColors.blackColor,
        filled: true,
        helperStyle: Theme.of(context).textTheme.displaySmall,
        errorStyle: Theme.of(context).textTheme.displaySmall!.copyWith(color: MainColors.redColor),
      ),
      // textSelectionTheme: const TextSelectionThemeData(
      //   cursorColor: _r9BlackColor,
      //   selectionHandleColor: Colors.transparent,
      //   selectionColor: _r9UnassignedNamedBejColor,
      // ),
      // tabBarTheme: const TabBarTheme(
      //   labelColor: _r9PrimaryColor,
      // ),
      // dividerTheme: const DividerThemeData(
      //   space: 0,
      //   color: _r9PrimaryColor,
      //   thickness: 1.5,
      // ),
      // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //   selectedIconTheme: IconThemeData(size: 20),
      //   unselectedIconTheme: IconThemeData(size: 20),
      //   elevation: 0,
      //   backgroundColor: _r9UnassignedNamedBejColor,
      //   selectedItemColor: _r9SecondaryColor,
      //   type: BottomNavigationBarType.fixed,
      // ),
      // progressIndicatorTheme: const ProgressIndicatorThemeData(
      //   color: _r9PrimaryColor,
      // ),
    );
  }

  ThemeData getMainTheme(BuildContext context) => _mainTheme(context);
//-----------------------------MAIN THEMEDATA--------------------------------------//

}
