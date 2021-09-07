# 1.  Introduction
In this module, we'll create a simple mobile Flutter app. We're familiar with object-oriented code and basic programming concepts—such as variables, loops, and conditionals—then we can complete the module. You don't need previous experience with Dart, mobile, or web programming.

### What we'll learn in part 1
-	Set up environment
-	Create app
-	Use external package
-	Add stateful widget
-	Infinite scrolling list view
-	Video reference

### What we'll build in part 1
We'll implement a simple app that generates proposed names for a startup company. The user can select and unselect names, saving the best ones. The code lazily generates 10 names at a time. As the user scrolls, more names are generated. There is no limit to how far a user can scroll.

**The following animated GIF shows how the app works at the completion of part:**

<img src="https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/img/6556f8b61acd6a89.gif" width="300" height="500">


# 2.  Set up environment
We need two pieces of software to complete this module—the [Flutter SDK](https://flutter.dev/docs/get-started/install) and an [editor](https://flutter.dev/docs/get-started/editor?tab=vscode). (We're using Android Studio, but you can use your preferred editor.)
We can run by using any of the following devices:
-	A physical [Android](https://flutter.dev/docs/get-started/install/macos#set-up-your-android-device) or [iOS](https://flutter.dev/docs/get-started/install/macos#deploy-to-ios-devices) device connected to your computer and set to developer mode
-	The [iOS simulator](https://flutter.dev/docs/get-started/install/macos#set-up-the-ios-simulator) (requires installing Xcode tools)
-	The [Android Emulator](https://flutter.dev/docs/get-started/install/macos#set-up-the-android-emulator) (requires setup in Android Studio)
-	A browser (Chrome is required for debugging)


# 3.   Create app

Create a simple Flutter app. Create a Flutter project called **first_app** and migrate to null safety as follows. 

```
$ flutter create first_app
$ cd first_app
$ dart migrate --apply-changes
```
We'll mostly edit `lib/main.dart`, where the Dart code lives.


Replace the contents of `lib/main.dart`. Delete all of the code from `lib/main.dart` and replace it with the code, which displays **"Hello World"** in the center of the screen.


                       Android                                                     iOS
 <pre>        <img src="https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/img/f9df7832965ede9f.png" width="250" height="500">                       <img src="https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/img/20374605026d582.png" width="250" height="500"></pre>
 
 # 4.   Use external package
In this step, we'll start using an open-source package named [english_words](https://pub.dev/packages/english_words), which contains a few thousand of the most-used English words, and some utility functions.
We can find the english_words package, as well as many other open-source packages, at [pub.dev](https://pub.dev/).

The pubspec file manages the assets for a Flutter app. In pubspec.yaml, append english_words: ^4.0.0 (english_words 4.0.0 or higher) to the dependencies list:
```
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.2
  english_words: ^4.0.0   // add this line
 ```

In `lib/main.dart`, import the new package:
```
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';  // Add this line.
```
Next, We'll use the `english_words` package to generate the text instead of using **"Hello World"**.

                      Android                                                     iOS
 <pre>        <img src="https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/img/57cfbac8f2b50e5b.png" width="250" height="500">                       <img src="https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/img/30ed7f83a1500fa9.png" width="250" height="500"></pre>

# 5.   Add stateful widget

Stateful widgets maintain state that might change during the lifetime of the widget. Implementing a stateful widget requires at least two classes: 1) a `StatefulWidget` class that creates an instance of 2) a `State` class.
In this step, We’ll add a stateful widget, `RandomWords`, which creates its State class, `_RandomWordsState`. We’ll then use `RandomWords` as a child inside the existing `MyApp` stateless widget.
1.	Create the boilerplate code for a stateful widget.

2.	Enter `RandomWords` as the name of your widget.
```
class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```
3.	Update the `build()` method in `_RandomWordsState`.
```
class _RandomWordsState extends State<RandomWords> {
  @override                                  
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();      // NEW
    return Text(wordPair.asPascalCase);      // NEW
  }                                         
}
```
4.	Remove the word generation code from `MyApp` by making the changes.

5.	Restart the app. The app should behave as before, displaying a word pairing each time we have to reload or save the app.

# 6.   Infinite scrolling list view

In this step, you’ll expand `_RandomWordsState` to generate and display a list of word pairings. 
1.	Add a `_suggestions` list to the `_RandomWordsState` class for saving suggested word pairings. Also, add a `_biggerFont` variable for making the font size larger.
2.	Add a `_buildSuggestions()` function to the `_RandomWordsState` class.
3.	Add a `_buildRow()` function to `_RandomWordsState`.
4.	In the `_RandomWordsState` class, update the `build()` method to use `_buildSuggestions()`, rather than directly calling the word generation library. Replace the method body with the highlighted code.
5.	In the `MyApp` class, update the `build()` method by changing the title, and changing the home to be a `RandomWords` widget.
6.	Restart the app. We should see a list of word pairings no matter how far we scroll.

                      Android                                                     iOS
 <pre>        <img src="https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/img/df2b3cb779e0020e.png" width="250" height="500">                       <img src="https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/img/ae47ef0ac2f492b8.png" width="250" height="500"></pre>

# 7.     Video reference

Click it for the reference

![image](https://user-images.githubusercontent.com/59861081/128939149-58c7d199-f2ef-491c-b049-8413205e61c7.png)

Or we can open with the help of this [link](https://www.youtube.com/watch?v=p_zvwkVHVTM&t=477s).

