import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:plot_frontend/home/hotOptionsCard.dart';

class HotOptions extends StatefulWidget {
  const HotOptions({super.key});

  @override
  State<HotOptions> createState() => _HotOptionsState();
}

class _HotOptionsState extends State<HotOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hot Options", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
              Text("see all", style: TextStyle(color: Color(0xff2A2A2A)),)
            ],
          ),
          SizedBox(height: 15,),
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.75,
              autoPlay: true,
            ),
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return HotOptionsCArd();
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}