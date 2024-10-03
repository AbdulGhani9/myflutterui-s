import 'package:flutter/material.dart';

class TokyoWidget extends StatefulWidget {
  const TokyoWidget({super.key});

  @override
  State<TokyoWidget> createState() => _TokyoWidgetState();
}

class _TokyoWidgetState extends State<TokyoWidget> {
  static const src = 'https://images.pexels.com/photos/427747/pexels-photo-427747.jpeg?cs=srgb&dl=pexels-ben-cheung-140183-427747.jpg&fm=jpg';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var Size(:height, :width)= size;
    height-height-kToolbarHeight;
    height=height-kToolbarHeight;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height*0.05),
              child: Container(
                
                height: height*1,
                width: width*1,
                color: Colors.black,
               child: Column(
                children: [
                  Container(
                    height: height*0.4,
                    width:width,
                  
                     
                   child: Image.network(src, fit: BoxFit.fill,),
                  ),
                                      
                     Text(
                       ' WELCOME TO', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: height*0.04),),
                    Padding(
                      padding: EdgeInsets.only(left: width*0.17),
                      child: Row(
                        children: [
                          Text('TOKYO ,', style: TextStyle(color: Colors.pink[700],
                          fontWeight: FontWeight.bold, fontSize: height*0.05
                          
                          ),),
                            Padding(
                              padding: EdgeInsets.only(left: width*0.01),
                              child: Text('JAPAN', style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold, fontSize: height*0.05)),
                            )
                                        
                          
                        ],
                      ),
                    ),

                   Padding(
                    padding: EdgeInsets.only(top: height*0.06),
                     child: Container(
                       height: height*0.08,
                       width: width*0.70,
                       color: Colors.white,

                        child: Padding(
                        padding: EdgeInsets.only(left: width*0.01, top: height*0.03),
                        child: const Text(' Enter your Name', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
                     ),
                   ),

                   
                   Padding(
                    padding: EdgeInsets.only(top: height*0.04),
                     child: Container(
                       height: height*0.08,
                       width: width*0.70,
                       color: Colors.white,

                       child: Padding(
                        padding: EdgeInsets.only(left: width*0.01, top: height*0.03),
                        child:const  Text(' Enter your Number or Gmail', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
                     ),
                   ),

                   Padding(
                    padding: EdgeInsets.only(top: height*0.04, left: width*0.1),
                     child: Row(
                      children: [
                        ElevatedButton(onPressed: (){}, child: const Text(
                          'Login', style: TextStyle(color: Colors.black),
                        )),

                         Padding(
                          padding: EdgeInsets.only(left: width*0.33),
                           child: ElevatedButton(onPressed: (){}, child: const Text(
                            'Sign Up', style: TextStyle(color: Colors.black),
                                                   )),
                         )
                      ],
                     ),
                   )


                         

                        
                ],
               ),
              ),
            )
          ],
        ),
      ),
    );
  }
}