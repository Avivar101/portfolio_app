# My Portfolio App

### Welcome to my Portfolio App create using the Flutter Framework

It is a simple app which showcases my skills and portfolio, my various online profiles can also be accessed which are my twitter, github and linkdln accounts. It consist of a single screen which displays my profile picture, and some basic information, beneath the basic information is a tab panel consisting of my portfolio page, skills page and resume page, of course currently I haven't acquired sufficient experience to populate those information, working and it.....

### CodeBase

The codebase is easily readable, with the "main.dart"being the entry to the app.

This is the file structure

* main.dart
  * home_screen.dart
    * info_widget.dart
      * portfolio.dart
      * skills.dart
      * resume.dart
    * profile_widget.dart

The main.dart takes in the home screen where everything is display.

The home screen takes in two child view which are the info_widget and the profile_widget.

profile_widget display my Picture, name, role and social links

The info_widget is split into three tabs which is the portfolio tab, skill tab and resume tab

Then there is the themes.dart and constants.dart which is meant for styling light and dark themes

### Design

To reduce time spents trying to mix colors and find the right combinations and simple decided to go with black and white, somewhat boring but then again..... am no designer

The layout and design of the app came from [https://www.behance.net/gallery/96621453/Profile-UI-Design](https://)


### Libraries Used

1. font_awesome_flutter: to make use of icons
2. sliding_up_panel: to put in the panel to swip up for extra information
3. url_launcher: to open url addresses
4. google_font: was to be used for text styling


### Extra Time!!

Well I would go ahead to implement the auto dark/light theme,

fix or remove the sliding_up_panel, installed it on my device and it doesn't function properly, on launch it doesn't display the information in it, after a couple clicks here and there before it shows.


### APK LINK



### Challenges

I faced two challenges, given time I had to let them go, the first was using SVG icons, for some reason they just didn't seem to be showing up in the app, maybe its my code or my machine, not yet sure, had to improvise for the flutter icon used in skills tab, the bird represents the flutter mascot,

And the second major challenge was styling the sliding_up_panel to dark mode, when ever I put colors on it the rounded borders goes away, left it at the light theme.
