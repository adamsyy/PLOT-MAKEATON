import 'package:flutter/material.dart';

class HomeTop extends StatefulWidget {
  const HomeTop({Key? key}) : super(key: key);

  @override
  State<HomeTop> createState() => _HomeTopState();
}

class _HomeTopState extends State<HomeTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column
        (
        children: [
          HometopCard(),
          SizedBox(height: 21,),
          HometopCard(),
          SizedBox(height: 21,),
          HometopCard(),
        ],
      ),
    );
  }
}



class HometopCard extends StatefulWidget {
  const HometopCard({Key? key}) : super(key: key);

  @override
  State<HometopCard> createState() => _HometopCardState();
}

class _HometopCardState extends State<HometopCard> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
          child: Text("Invest",style: TextStyle(fontSize: 24,fontWeight:FontWeight.w400),),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 0, 0),
          child: Text(
              style: TextStyle(fontSize: 14,fontWeight:FontWeight.w400),
            "Invest in land and get"
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 2, 0, 0),
          child: Text(
              style: TextStyle(fontSize: 14,fontWeight:FontWeight.w400),
              "returns"
          ),
        )
      ],
    ),height: 150,width: MediaQuery.of(context).size.width / 1.10, decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color:Color(0xffD3F5F3)),);
  }
}
