import 'package:flutter/material.dart';

class UstKisim extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/appBarfoto.jpg', width: 200, height: 200 , alignment: Alignment.topCenter),
          //backgroundColor:Colors.red,

        ),
        //backgroundColor: Colors.red,
        )
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
