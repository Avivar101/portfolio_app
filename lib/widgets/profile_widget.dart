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
        margin: const EdgeInsets.only(left: 50.0, right: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/profilepic.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
                semanticLabel: "Benji",
              ),
            ),
            const SizedBox(height: 5.0),
            const Text(
                "Okezie Ben-John",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  fontSize: 25
                )
            ),
            const SizedBox(height: 5.0),
            const Text(
                "App Dev (Flutter)",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                )
            ),
            const SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.twitter),
                  onPressed:  (){_launchUrl("https://twitter.com/BenjOkezie");},
                  color: Colors.black,
                ),
                IconButton(
                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                    onPressed: () { _launchUrl("https://www.linkedin.com/in/okeziebenj/");},
                  color: Colors.black,
                ),
                IconButton(
                    icon: const FaIcon(FontAwesomeIcons.github),
                    onPressed: () { _launchUrl("https://github.com/Avivar101"); },
                  color: Colors.black,
                ),
                IconButton(
                    icon: const FaIcon(FontAwesomeIcons.globe),
                    onPressed: () { print("Pressed"); }),
              ],
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