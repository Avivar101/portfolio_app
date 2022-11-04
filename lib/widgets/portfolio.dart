import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Row(
              children: <Widget>[
                IconButton(
                    icon: const FaIcon(FontAwesomeIcons.github),
                    onPressed: () { _launchUrl("https://github.com/Avivar101"); },
                  color: Colors.black,
                ),
              const Text(
                "GitHub",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                  )
              )
            ],
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