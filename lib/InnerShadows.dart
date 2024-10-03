import 'package:flutter/material.dart';

class Innershadows extends StatelessWidget {
  const Innershadows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
          const  Spacer (flex: 2),
          Expanded(
          flex: 3,
          child: SizedBox(
            height: 100,
            width: 250,
            child: Container(
              
                child: Icon(Icons.android_outlined, size: 60, color: Colors.white,),
          
            decoration: const  BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(600, 158, 158, 158),
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,

                  ),
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0
                  ),
                ],

                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(200, 158, 158, 158),
                    Color.fromARGB(300, 158, 158, 158),
                    Color.fromARGB(400, 158, 158, 158),
                    Color.fromARGB(500, 158, 158, 158),
                  ],stops: [
                    0.1,
                    0.6,
                    0.8,
                    0.9
                  ]

                ),



            ),
            ),
          ),
        ),

       const  Spacer(
        flex: 1,
      ),
        Expanded(
          flex: 3,
          child:  SizedBox(
            height: 150,
            width: 250,
          child: Container(
            child: Icon(Icons.android_outlined, size: 60, color: const Color.fromARGB(208, 0, 0, 0),),
          
            decoration: const  BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(600, 158, 158, 158),
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,

                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0
                  ),
                ],

                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(200, 158, 158, 158),
                    Color.fromARGB(300, 158, 158, 158),
                    Color.fromARGB(400, 158, 158, 158),
                    Color.fromARGB(500, 158, 158, 158),
                  ],stops: [
                    0.1,
                    0.6,
                    0.8,
                    0.9
                  ]

                ),



            ),

          ),
        )),
        const Spacer(
          flex: 2,
        )
    

          ],
        ),

      
        
      ),
    );
  }
}