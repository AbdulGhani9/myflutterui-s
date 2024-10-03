import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});
  
  String get title => "Secondui";

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
bool isDark = false;

  @override
  Widget build(BuildContext context) {
  
  return Scaffold(
      backgroundColor:   isDark ?const Color.fromARGB(255, 53, 53, 53) : Colors.white,
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
     
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration:BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: isDark ? Colors.black : const Color.fromARGB(255, 150, 147, 147),
                    offset: const Offset(4.0, 4.0),
                    blurRadius: 13,
                    spreadRadius: 1.0
                  ),
                  BoxShadow(
                    color: isDark ? const Color.fromARGB(255, 69, 67, 67): Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 13,
                    spreadRadius: 1.0
                  ),
                ]

              ),
              child:    Icon(
                Icons.android, size: 80, color: isDark ? Colors.white :Colors.black,
              ),
            ),

           Padding(padding: EdgeInsets.only(top: 50),
           child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Padding(padding: EdgeInsets.only(right: 20),
              child:     ElevatedButton(onPressed: (){
              setState(() {
                isDark=true;
                
              });

            },
            child:  Text('Dark', style: TextStyle(color:Colors.white),),
             style: OutlinedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            ),
              
              ),

          Padding(padding: EdgeInsets.only(left: 20),
          child:  ElevatedButton(onPressed: (){
              setState(() {
                isDark=false;
                
              });

            },
            child:  Text('Light ', style: TextStyle(color:Colors.black),),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              
              
            ),
            ),
          
          )
              ],
            ),
           
           )

          


          ],
        ),
      ),
      
    );
  }
}