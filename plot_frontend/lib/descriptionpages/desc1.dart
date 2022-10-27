import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Desc1 extends StatefulWidget {
  @override
  State<Desc1> createState() => _Desc1State();
}

class _Desc1State extends State<Desc1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Icon(FontAwesomeIcons.infinity),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Plot.",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Text("Invest",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400)),
              ),


            ],
          ),

      ),
    );
  }
}
