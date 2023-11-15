# QuizApp_Flutter

## Overview
This is a basic static quiz application created in Flutter. It is based on the course content from my Flutter course.

## Quiz Model Layout
- **Front Page**: The app starts with a front page featuring a logo and a "Start Quiz" button.
- **Question Screen**: Users are presented with a series of questions, each with answer options.
- **Summary Screen**: After answering all the questions, users see a summary of their selected answers and the percentage of correct responses.
- **Restart Quiz**: Users have the option to restart the quiz.

## Tools and Data Types Used
- **Stateful Widgets**: A stateful widget is used to update the UI when options are selected, utilizing the `createState` and `setState` methods in the parent and its respective private class.
- **Buttons**: The app employs `ElevatedButton` and `OutlinedButton` styles, as well as widgets like `Opacity`, `SizedBox`, and `Icons`.
- **Spread Operator**: The '...' operator is used to convert a list of widgets into individual widgets and spread them.
- **List Operations**: Various list operations, such as copying and adding items, are implemented.
- **Google Fonts**: Custom font styles from Google Fonts are added for improved aesthetics.
- **Map Data Type**: The `Map` data type is used for efficient data organization.
- **Layout Widgets**: Widgets like scrollable widgets, `Expanded`, and nesting `Row` within `Column` are used for structured layout. Explicit data conversions are performed using `toString` and `toList`.
- **Logical Assessments**: Arrow functions, getters, conditional statements, and other logical assessments enhance app functionality.
- **Styling**: Proper padding and styling are applied to the question screen for a user-friendly interface.
- **Refactoring**: The code is refactored to ensure a clean and organized structure.
- **Function Passing**: Function passing is utilized by using variable names to reference them in other classes.
- **Assets**: Necessary assets are included in the `pubspec.yaml` file to use images and fonts.

## Acknowledgments

I would like to express my gratitude to  `Maximilian Schwarzmüller` (https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/#instructor-2) for their exceptional Flutter and Dart course. This project wouldn't have been possible without their valuable teachings and guidance.
