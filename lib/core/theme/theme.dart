import 'package:my_blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static  _border([Color color=AppPallete.borderColor])=>OutlineInputBorder(              //works only when you are not clicking on anything (and on clicking focused border is used)
        borderRadius: BorderRadius.circular(10),
        borderSide:  BorderSide(
          color: color,
          width: 3,
          ),
           ); //here we made the variable for the properties (_ is used to make it private)
  static final darkThememode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme:   InputDecorationTheme(
      contentPadding: const EdgeInsets.all(27),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient2),
    ),
    
  );
    
}

//here we need to change the color of the focusedBorder so we make the variable into function by removing final 
//keyword and then  and adding an arrow in front of equal to sign and here the color part os only going to change so we pass it as a parameter in the 
//function of the common variable we made, and every time we don't want to pass the border variable everytime , so we pass it as a default in the argument as [= default value]
