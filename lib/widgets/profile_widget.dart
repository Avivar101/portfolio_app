import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';




class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Card(
        margin: EdgeInsets.only(left: 50.0, right: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/profilepic.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                  semanticLabel: "Benji",
                ),
              )
            ),
            SizedBox(height: 5.0),
            Container(child: Text("Okezie Ben-John"),),
            SizedBox(height: 5.0),
            Container(child: Text("App Dev (Flutter)"),),
            SizedBox(height: 5.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.twitter),
                    onPressed:  (){_launchUrl("https://twitter.com/BenjOkezie");}),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      onPressed: () { _launchUrl("https://www.linkedin.com/in/okeziebenj/");}),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.github),
                      onPressed: () { _launchUrl("https://github.com/Avivar101"); }),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.globe),
                      onPressed: () { print("Pressed"); }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl(String url) async {
  final Uri _url = Uri.parse(url);

  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}