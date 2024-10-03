import 'package:flutter/material.dart';

class TokyoLandscapeWidget extends StatelessWidget {
  const TokyoLandscapeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const src = 'https://images.pexels.com/photos/427747/pexels-photo-427747.jpeg?cs=srgb&dl=pexels-ben-cheung-140183-427747.jpg&fm=jpg';

    var size = MediaQuery.sizeOf(context);
    var Size(:height, :width)= size;
    return Scaffold(
      body: Row(
        children: [
         Padding(
          padding: EdgeInsets.only(top: height*0.13, left: width*0.04),
           child: Container(
            height: height*0.70,
            width: width*0.40,
            color: Colors.amber,
            child: Image.network(src, fit: BoxFit.fill,),
           ),
         ),
         Column(
          children: [

          
         
         Padding(
          padding: EdgeInsets.only(left: width*0.20, top: height*0.35),
           child: Container(
            height: height*0.08,
            width: width*0.24,
            color: Colors.black,
            child: Center(child: Text('Enter you Name', style: TextStyle(color: Colors.white),)),

           ),
         ),

          Padding(
          padding: EdgeInsets.only(left: width*0.20, top: height*0.06),
           child: Container(
            height: height*0.08,
            width: width*0.24,
            color: Colors.black,
            child: Center(child: Text('Enter you Email or Phone number',style: TextStyle(color: Colors.white))),
           ),
         ),

       Padding(
        padding: EdgeInsets.only(top: height*0.15, left: width*0.18),
         child: Row(
                        children: [
                          ElevatedButton(onPressed: (){}, child: const Text(
                            'Login', style: TextStyle(color: Colors.black),
                          )),
         
                           Padding(
                            padding: EdgeInsets.only(left: width*0.07),
                             child: ElevatedButton(onPressed: (){}, child: const Text(
                              'Sign Up', style: TextStyle(color: Colors.black),
                                                     )),
                           )
                        ],
                       ),
       ),



          ],

          

         ),

         
         

         

        ],

      
      ),

    );
  }
}