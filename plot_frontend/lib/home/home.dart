import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plot_frontend/home/invest.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Container(child:Icon(FontAwesomeIcons.peopleGroup),
          height: 50,width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
          border: Border.all(
          color: Colors.black,
          ),
            borderRadius: BorderRadius.all(Radius.circular(50))
        ),),
                SizedBox(width: 15,),
                Text("Adamsy",style: TextStyle(fontSize: 20),)
                ],
              ),
              Invest(),
            ],
          ),
          decoration: BoxDecoration(color: Colors.white),
        ),
      ),
    );
  }
}
