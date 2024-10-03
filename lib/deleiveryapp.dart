import 'package:flutter/material.dart';

class DeleiveyWidget extends StatefulWidget {
  const DeleiveyWidget({super.key});

  @override
  State<DeleiveyWidget> createState() => _DeleiveyWidgetState();
}

class _DeleiveyWidgetState extends State<DeleiveyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return  Container(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              

              decoration: const  BoxDecoration(
               color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),  topRight: Radius.circular(20))
              ),

              
              


              child: Column(
                children: [
 //One
                  Expanded(
                    flex: 2,
                    child: LayoutBuilder(

                      builder: (context, constraints) {
                        return  Container(
                          height: constraints.maxHeight,
                          width: constraints.maxWidth,
                    

                      decoration: const  BoxDecoration(
                 color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
                      child: Column(

                        children: [

                          SizedBox(
                            height: constraints.maxHeight*0.46,
                          ),
                          const Text(
                            'Welcome To', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),

                          const Text(
                            'Delivery App',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),

                    
                      
                     );
                        
                      },
                  
                    )),



//Two
                  Expanded(
                    flex: 4,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                      return  Container(
                        color: Colors.white,
                        width: constraints.maxWidth*0.90,
                        child: Image.asset('assets/images/tokyotwo.jpeg', fit: BoxFit.fill,),
                  );
                  },
                       
                      
                   ),
                    ),


//Three
                  Expanded(
                    flex: 2,
                    child: LayoutBuilder(builder: (context, constraints) {
                    return  Container(
                    color: Colors.white,
                    width: constraints.maxWidth,
                    child: Column(
    
                      children: [

                        SizedBox(
                          height: constraints.maxHeight*0.22,


                        ),

                        const Expanded(
                          child:   Text(
                            'Select Place ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          
                            ),
                          
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

                           
                      ],
                    ),

                  );
                      
                    },
                    ),
                  ),


//Four
                  Expanded(
                    flex: 2,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return  Container(
                    
                    width: constraints.maxWidth,

                       decoration: const  BoxDecoration(
               color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
              ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: constraints.maxHeight*0.17,

                        ),


                        Expanded(child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: constraints.maxHeight*0.07,
                            width: constraints.maxWidth*0.10,
                            decoration:const  BoxDecoration(
                               color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                         
                          
                          ),
                        )),

                        Row(
                          children: [
                            SizedBox(
                              width: constraints.maxWidth*0.30,
                            ),
                            Icon(Icons.arrow_back),
                            SizedBox(
                              width: constraints.maxWidth*0.02,

                            ),

                            ElevatedButton(onPressed: (){}, child:Expanded(child: const  Text('Back')), 
                            ),
                              
                          
                  
                             
                              
                          
                          ],
                        ),

                        SizedBox(height: constraints.maxHeight*0.22,)
                        

                      ],
                    ),

                  );
                    },),
                    ),

                ],
              ),
            
          
          );
            
          },
         
        ),
      ),
      


    );
  }
}