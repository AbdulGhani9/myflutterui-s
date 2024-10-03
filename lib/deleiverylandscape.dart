import 'package:flutter/material.dart';

class DeleivryLandscape extends StatefulWidget {
  const DeleivryLandscape({super.key});

  @override
  State<DeleivryLandscape> createState() => _DeleivryLandscapeState();
}

class _DeleivryLandscapeState extends State<DeleivryLandscape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: 
          LayoutBuilder(builder: 
          (context, constraints) {
            
            return Center(
              child: Container(
                color: Colors.white,
                width: constraints.maxWidth*0.80,
                height: constraints.maxHeight*0.70,
              
              
                 child: Image.asset('assets/images/tokyotwo.jpeg', fit: BoxFit.fill,),
                
              
              ),
            );
          },
          )
          ),

           Expanded(
            flex: 5,
            child: 
          LayoutBuilder(builder: 
          (context, constraints) {
            
            return Container(
              color: Colors.white,
              child: Column(
              
                children: [
                  SizedBox(
                    height: constraints.maxHeight*0.15,

                  ),


               const  Expanded(
                  child: const   Text(
                      'Welcome To'
                      , style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                ),

             const   Expanded(
                 child: const    Text(
                      'Delivery App'
                    ),
               ),

                  SizedBox(
                    height: constraints.maxHeight*0.01,

                  ),


                 const  Expanded(
                     child: const   Text(
                      'Select Place '
                      , style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                   ),

                   const  Expanded(
                          child: const  Text(
                            'Any time any place we are to give you  ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),

                          const  Expanded(
                             child: const  Text(
                            'facilitation because its honor for us ',
                          style: TextStyle(
                              fontSize: 15,
                            ),
                                ),
                           ),

                          const  Expanded(
                             child: const  Text(
                            ' that you trust on us. ',
                          style: TextStyle(
                              fontSize: 15,
                            ),
                                ),
                           ),

                            Row(
                          children: [
                            SizedBox(
                              width: constraints.maxWidth*0.40,
                            ),
                            Icon(Icons.arrow_back),
                            SizedBox(
                              width: constraints.maxWidth*0.02,

                            ),

                            ElevatedButton(onPressed: (){}, child:Expanded(child: const  Text('Back')), 
                            ),
                              
                          
                  
                             
                              
                          
                          ],
                        ),
                             SizedBox(height: constraints.maxHeight*0.15,)

                ],
              ),

            );
          },
          )
          ),



        ],
      )
      
    );
  }
}