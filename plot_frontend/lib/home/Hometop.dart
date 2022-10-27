import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plot_frontend/descriptionpages/desc1.dart';

import '../Controller.dart';

final Controller c = Get.put(Controller());

class HomeTop extends StatefulWidget {
  const HomeTop({Key? key}) : super(key: key);

  @override
  State<HomeTop> createState() => _HomeTopState();
}

class _HomeTopState extends State<HomeTop> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: Desc1()));
      },
      child: Container(
        child: Column(
          children: [
            HometopCard(title: "Invest",description: "Invest in land and get returns.",
              color: Color.fromRGBO(211, 245, 243, 1),
            ),
            SizedBox(
              height: 21,
            ),
            HometopCard( title: "Lease",description: "Take land for lease",
                color: Color.fromRGBO(247, 230, 217, 1)),
            SizedBox(
              height: 21,
            ),
            HometopCard(title: "Parking Slots",description: "Book a parking slot.",
                color: Color.fromRGBO(228, 216, 253, 1)),
          ],
        ),
      ),
    );
  }
}

class HometopCard extends StatefulWidget {
  Color color;
  String title;
  String description;
  HometopCard({required this.color,required this.title,required this.description});

  @override
  State<HometopCard> createState() => _HometopCardState();
}

class _HometopCardState extends State<HometopCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: GestureDetector(
                onTap: () {
                  c.increment();
                  print(c.count);
                },
                child: Text(
                  widget.title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 0, 0),
            child: Text(widget.description,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
          ),

        ],
      ),
      height: 150,
      width: MediaQuery.of(context).size.width / 1.10,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: widget.color),
    );
  }
}
