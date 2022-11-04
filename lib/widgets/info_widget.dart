import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/portfolio.dart';
import 'package:portfolio_app/widgets/resume.dart';
import 'package:portfolio_app/widgets/skills.dart';

class InfoDetails extends StatelessWidget {
  const InfoDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,

      child: const DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: TabBar(
                indicatorColor: Colors.black,
                tabs: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text( "Portfolio",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text( "Skills",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text( "Resume",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Portfolio(),
                Skills(),
                Resume(),
              ],
            ),
          )
      ),
    );
  }
}