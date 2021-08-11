
import 'package:flutter/material.dart' ;
import 'package:arabyy/sizeConfig.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("التصنيف", style: TextStyle(color: Colors.black),),
          elevation: 0,
          actions: [
            IconButton(
                icon: Icon(Icons.search, color: Colors.grey,),
                onPressed: () => debugPrint("onpressed")

            ),
          ],
        ),
            body: new Container(
              color: Colors.white,
              alignment: Alignment.center,

              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      new Image.asset("images/mo.jpg",height:getProportionateScreenHeight(250.00) ,width:double.infinity),
                       Center(child: new Text("العروض"),),
                    ],

                  ),


                ],
              ),
            ),
        bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.adb),title:Text("test"),backgroundColor: Colors.red),
    BottomNavigationBarItem(icon: Icon(Icons.call),title:Text("us")),
    BottomNavigationBarItem(icon: Icon(Icons.map),title:Text("visit")),
          BottomNavigationBarItem(icon: Icon(Icons.add),title:Text("+")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),title:Text("fav")),
        ]
    )
    );



  }
}









