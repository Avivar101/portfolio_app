import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Card(
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
            Container(child: Text("Links"),)
          ],
        ),
      ),
    );
  }
}