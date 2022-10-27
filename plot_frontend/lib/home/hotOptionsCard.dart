import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HotOptionsCArd extends StatefulWidget {
  const HotOptionsCArd({super.key});

  @override
  State<HotOptionsCArd> createState() => _HotOptionsCArdState();
}

class _HotOptionsCArdState extends State<HotOptionsCArd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Playground"),
          SizedBox(height: 10,),
          Text("Edapally"),
        ],
      ),

      decoration: BoxDecoration(
        color: Color(0xffD3F5F3),
        borderRadius: BorderRadius.circular(20)
      ),
      width: 244,
      height: 210,
    );
  }
}