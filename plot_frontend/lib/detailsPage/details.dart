import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plot_frontend/detailsPage/detailsCarousal.dart';


class Details extends StatefulWidget {
  String name;
  String location;
  int price;
  int area;
  String description;

  Details({required this.name,required this.location,required this.price,required this.area, required this.description});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection:Axis.vertical,
      child: SizedBox(height: 900,width: 400,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Icon(FontAwesomeIcons.arrowLeft),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Invest",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(height: 50),
                DetailsCarousal(),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name, style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),),
                      Text(widget.location, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),),
                      SizedBox(height: 30,),
                      SizedBox(child: Text(widget.description),),
                      SizedBox(height: 40,),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Color(0xffD3F5F3)),
                        padding: EdgeInsets.all(30),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Price", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),),
                                SizedBox(height: 10,),
                                Text("₹" + widget.price.toString(), style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),),

                              ],

                            ),
                            Expanded(child: Text(''),),
                          ],
                        ),
                      ),
                      SizedBox(height: 50,),
                      Container(width: 200,
                        child: NeumorphicButton(
                            onPressed: () async {
                              // setState(() {
                              //   arrow = false;
                              // });
                              // username_login();

                            },
                            style: NeumorphicStyle(
                              color:  Colors.grey[300],
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                            ),
                            child:Center(child: Text("login"))
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );;
  }
}