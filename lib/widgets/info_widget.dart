import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/portfolio.dart';
import 'package:portfolio_app/widgets/resume.dart';
import 'package:portfolio_app/widgets/skills.dart';

class InfoDetails extends StatelessWidget {
  const InfoDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: TabBar(
              tabs: [
                Tab(text: "Portfolio",),
                Tab(text: "Skills",),
                Tab(text: "Resume",),
              ],
            ),
          body: TabBarView(
            children: [
              Portfolio(),
              Skills(),
              Resume(),
            ],
          ),
        )
    );
  }
}