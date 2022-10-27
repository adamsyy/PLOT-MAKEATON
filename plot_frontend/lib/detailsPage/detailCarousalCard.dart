import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class detailCarousalCard extends StatefulWidget {
  const detailCarousalCard({super.key});

  @override
  State<detailCarousalCard> createState() => _detailCarousalCardState();
}

class _detailCarousalCardState extends State<detailCarousalCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Color(0xffF7E6D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text('', style: TextStyle(fontSize: 16.0),)
    );
  }
}