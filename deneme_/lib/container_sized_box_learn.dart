import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerSizedBoxLearn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          SizedBox(
            width: 200,
            height: 150,
            child: Text('a' * 150),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 90,
            child: Text('b' * 150),
          ),
          Container(
            width: 50,
            height: 50,
            color:Colors.red,
            constraints: const BoxConstraints(maxWidth: 100, minWidth: 100),
            child: Text ('ezgi' * 100),
            padding: const EdgeInsets.all(10),
            margin : EdgeInsets.all(10),
          )
        ],
      )
      
    );
  }
  
}
