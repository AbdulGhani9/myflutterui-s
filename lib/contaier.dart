import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 6,child: Center(child: Text("Hello World"))),
          Expanded(flex: 4,child: Column(
            children: [
              Expanded(flex: 4,child: Center(child: Text("Login App"))),
              Expanded(flex: 1,child: Container(
                color: Colors.blue,
              )),
              Expanded(flex: 1,child: LayoutBuilder(builder: (context, Constraints){
                return Center(
                  child: Container(
                    width: Constraints.maxWidth * 0.7,
                    height: Constraints.maxHeight * 0.5,
                  color: Colors.blue,
                ),
                );
              })),
              Expanded(flex: 1,child: Spacer()),
              Expanded(flex: 1,child: Row(
                children: [
                  Container(color: Colors.orange,)
                ],
              )),
              Expanded(flex: 2,child: Spacer())
            ],
          ))
        ],
      ),
    );
  }
}





/* 

Scaffold(
      body: Center(
        child: Row(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey,
                ),
              ),


            )
          ],
        ),
      ),
    );
*/