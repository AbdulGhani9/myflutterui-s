import 'package:flutter/material.dart';

class ExplorerWidget extends StatefulWidget {
  const ExplorerWidget({super.key});

  @override
  State<ExplorerWidget> createState() => _ExplorerWidgetState();
}

class _ExplorerWidgetState extends State<ExplorerWidget> {
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.sizeOf(context);
    var Size(:height, :width)= size;
    return Scaffold(
      body: 
      Center(
        child: Container(
          height: height,
          width: width,
         
        
          
             color: Colors.white,
          
          child: Column(
            
            children: [
              SizedBox(
                height: height*0.08,
                
              ),


              Row(
                children: [
                  SizedBox(
                    width: width*0.07,
                  ),
                  Text(
                    'AOA! Abdul Ghani',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    
                    ),

                    SizedBox(
                      width: width*0.35,
                    ),

                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: width*0.05,
                      child: Icon(Icons.person),
                    ),

                ],
              ),

             Row(
              children: [
                SizedBox(
                  width: width*0.12,
                ),
                Text(
                  'Explore the world', style: TextStyle(color: Colors.grey),
                )
              ],
             ),

             SizedBox(
              height: height*0.08 ,
             ),

             SizedBox(
              width: width*0.80,
               child: const TextField(
                keyboardType: TextInputType.text,

                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.place),
                  
                  labelText: 'Search Place',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.lightBlue,width: 5
                    ),
                    
                  )

                
                
                // label: Row(
                //   children: [
                //     Text('Search Places'),
                    
                //   ],
                  
                // )
                ),
               ),
             ),
             SizedBox(
              height: height*0.05,

             ),

             Row(
              children: [
                SizedBox(
                  width: width*0.09,

                ),
                Text(
                  'Popular Places ', style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 17),
                ),

                SizedBox(
                  width: width*0.40,
                ),

                Text(
                  'View all', style: TextStyle(color: Colors.grey, fontSize: 13),
                )
              ],
             ),

             SizedBox(height: height*0.05,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height*0.05,
                  width: width*0.26,
                  
                  decoration:const  BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Center(child: Text('Most viewed', style: TextStyle(color:Colors.white),)),
                ),


                 Opacity(
                  opacity: 0.3,
                   child: Container(
                    height: height*0.05,
                    width: width*0.24,
                    
                    decoration:const  BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                     child: Center(child: Text('Nearby', style: TextStyle(color:Colors.black),)),
                    
                    ),
                 ),

                 Opacity(
                  opacity: 0.3,
                   child: Container(
                    height: height*0.05,
                    width: width*0.24,
                    
                    decoration:const  BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),

                     child: Center(child: Text('latest', style: TextStyle(color:Colors.black),)),
                   ),
                 ),

              ],
             ),

             SizedBox(
              height: height*0.08,
            

             ),

             Row(
              children: [
                SizedBox(
                  width: width*0.09,

                ),
                Container(
                  height: height*0.30,
                  width: width*0.50,
                  decoration: const  BoxDecoration(
                    borderRadius:  BorderRadius.all(Radius.circular(24)),
                     color: Colors.amber,
                       image: DecorationImage(image: AssetImage('assets/images/woods.png', ), fit: BoxFit.fill),
                        boxShadow:[BoxShadow(
                                  
                                  offset: Offset(-4, -4),
                                    blurRadius: 5,
                                  spreadRadius: 2,
                                  color: Colors.grey,

                                  

                                ),

                                BoxShadow(
                                  
                                  offset: Offset(4, 4),
                                    blurRadius: 5,
                                  spreadRadius: 2,
                                  color: Colors.grey,
                                  
                                  

                                ),
                        ]
                  ),
                  child: Expanded(
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 15,
                          top: 16,
                          child: Opacity(
                            opacity: 0.8,
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 20,
                              child: Icon(
                                Icons.heart_broken,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          top: height*0.20,
                         left: 19,
                          child: Opacity(
                            opacity: 0.7,
                            child: Container(
                              height: height*0.08,
                              width: width*0.40,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.black,
                               

                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: width*0.03,
                                  ),
                                const  Text(
                                'Tokyo', style: TextStyle(color: const Color.fromRGBO(255, 255, 255, 1), fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const  Text(
                                ', Moutains', style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                              
                                ],
                              ),

                            ),
                          ),
                        ),

                        
                        
                      ],
                    ),
                  ),
                
                ),

                SizedBox(
                  width: width*0.16,
                ),
                Container(
                  
                  height: height*0.30,
                  width: width*0.25,

                 
                  decoration: const  BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(24), bottomLeft: Radius.circular(24)),
                    color: Colors.grey,
                    image: DecorationImage(image: AssetImage('assets/images/road.png', ), fit: BoxFit.fill),
                     boxShadow:[BoxShadow(
                                  
                                  offset: Offset(-4, -4),
                                    blurRadius: 5,
                                  spreadRadius: 2,
                                  color: Colors.grey,

                                  

                                ),

                                BoxShadow(
                                  
                                  offset: Offset(4, 4),
                                    blurRadius: 5,
                                  spreadRadius: 2,
                                  color: Colors.grey,
                                  
                                  

                                ),
                        ]
                  ),
                 
                  

                )

              
              ],
             ),
             SizedBox(
              height: height*0.05,

             ),

             Row(
             
              children: [
                
                SizedBox(
                  width: width*0.06,
                ),
                Container(
                  height: height*0.05,
                  width: width*0.90,
                  color: Colors.white,

                  child: const  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.home, color: Colors.black,),
                      Icon(Icons.punch_clock, color: Colors.grey,),
                      Icon(Icons.heart_broken_rounded, color: Colors.grey,),
                      Icon(Icons.person, color: Colors.grey,),


                      
                    ],
                  ),
                )

              ],
             )


            ],
          ),

        ),
      )

    );
  }
}