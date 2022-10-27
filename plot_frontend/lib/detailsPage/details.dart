import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plot_frontend/detailsPage/detailsCarousal.dart';


class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Text("Address1", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),),
                  Text("Address 2", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),),
                  SizedBox(height: 30,),
                  SizedBox(child: Text("adamsy add dummy description blah blah blah blah blah blah blah blah blah hoa8yydj dyuyyyh y 78 78  ugyg ggyggy "),),
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
                            Text("\$" + "1234.67", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),),
                          ],
                        ),
                        Expanded(child: Text(''),),
                      ],
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );;
  }
}