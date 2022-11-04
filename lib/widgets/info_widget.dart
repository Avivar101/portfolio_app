import 'package:flutter/material.dart';

class InfoDetails extends StatelessWidget {
  const InfoDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,

      child: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.blue,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: TabBar(
                tabs: [
                  Text( "Portfolio", style: TextStyle(),),
                  Text("Skills"),
                  Text("Resume"),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Text("PortFolio"),
                Text("Skills"),
                Text("Resume"),
              ],
            ),
          )
      ),
    );
  }
}