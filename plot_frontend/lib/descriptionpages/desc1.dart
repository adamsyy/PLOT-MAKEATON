import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plot_frontend/descriptionpages/descCard.dart';
import 'package:http/http.dart' as http;

int check=0;
int k=0;
class Desc1 extends StatefulWidget {
  @override
  State<Desc1> createState() => _Desc1State();
}

class _Desc1State extends State<Desc1> {

  @override
  void initState() {
    // TODO: implement initState
    k=0;
    check=0;
    dataFuture = fetchToknens();
    super.initState();

  }

  late var data;
  late var dataFuture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
              child: Text("Invest",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
            ),
            SizedBox(
              height: 200,
            ),
            check==1?  ListView.builder(    scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount:2,itemBuilder: (BuildContext context,index){

              return Container(padding:EdgeInsets.fromLTRB(20, 0, 20, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    descCard(title: data[k]["name"],location: data[k]["location"],),

                    descCard(title: data[++k]["name"],location: data[k++]["location"],),
                  ],
                ),
              );
            }):Center(child: CupertinoActivityIndicator())
          ],
        ),
      ),
    );
  }


  dynamic fetchToknens() async {
    final url = Uri.parse("https://plot-backend.herokuapp.com/land/lands_for_lease");

    final response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    // print(response.body);
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body)["lands"];
        print("///");
        print(data);
      });
      // print(data);
      // widget.sum = 0;
      // for (int i = 0; i < data.length; i++) {
      //   //find sum
      //
      //   widget.sum += data[i]["tokenAmount"] as int;
      //   widget.percentage_top += data[i]["movie"]["percentage"];
      // }
      // return data;
      setState(() {
        check=1;;
      });
      return data;
    }
  }


}
//https://plot-backend.herokuapp.com/land/lands_for_lease


