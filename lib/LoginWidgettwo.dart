import 'package:flutter/material.dart';

class LoginWidgetTwo extends StatefulWidget {
  const LoginWidgetTwo({super.key});

  @override
  State<LoginWidgetTwo> createState() => _LoginWidgetTwoState();
}

class _LoginWidgetTwoState extends State<LoginWidgetTwo> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var Size(:height, :width)= size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          color: Colors.blue[900],
          child: Column(
            children: [
              SizedBox(
                height: height*0.09,
        
              ),
        
        
              Row(
                children: [
                  SizedBox(
                    width: width*0.08,
        
                  ),
        
                  Container(
                    height: height*0.10,
                    width: width*0.20,
        
                    decoration: const BoxDecoration(
                      
                    image: DecorationImage(image: AssetImage('assets/images/came.png'),fit: BoxFit.fill)
                    ),
                  ),
                ],
              ),
        
              SizedBox(
                height: height*0.12,
              ),
        
              Row(
              children: [
                SizedBox(
                  width: width*0.10 ,
                ),
               const  Text(
                  'Welcome', style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30
        
                ),
                ),
              ],
             ),
        
                Row(
              children: [
                SizedBox(
                  width: width*0.12 ,
                ),
               const  Text(
                  'Sign in to continue', style: TextStyle(
                    color: Colors.white, fontSize: 12
        
                ),
                ),
              ],
             ),
        
             SizedBox(
              height: height*0.07,
             ),
        
              Row(
              children: [
                SizedBox(
                  width: width*0.12 ,
                ),
                SizedBox(
                  width: width*0.80,
                  child: const  TextField(
                    
                      enabled: true ,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 102, 254)),
                      // labelText: 'USER NAME',
                      // labelStyle: TextStyle(color: Colors.blue[900]),
                      hintText: 'User Name',
                      prefixIcon: Icon(Icons.email),
                 
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 3)
                        
                      ),
        
                      enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.white,width: 3)
                      ),
                      
                    ),
                  ),
                ),
              
              ],
             ),
        
              SizedBox(
              height: height*0.05,
             ),
        
              Row(
              children: [
                SizedBox(
                  width: width*0.12 ,
                ),
                SizedBox(
                  width: width*0.80,
                  child:  TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    
                    
                      enabled: true ,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 102, 254)),
                      // labelText: 'USER NAME',
                      // labelStyle: TextStyle(color: Colors.blue[900]),
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.remove_red_eye),
                 
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 3)
                        
                      ),
        
                      enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.white,width: 3)
                      ),
                      
                    ),
                  ),
                ),
              
              ],
             ),
             SizedBox(
              height: height*0.060,

             ),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  height: height*0.06,
                  width: width*0.75,
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                    borderRadius: BorderRadius.all(Radius.circular(20))
                    
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width*0.10,
                      ),
                     const  Text(
                        'LOGIN', style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: width*0.33,
                      ),

                      Container(
                        height: height*0.01,
                        width: width*0.09,  
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      )
                    ],
                  ),
                )
              ],
             )
             
             
        
            ],
          ),
        ),
      ),

    );
  }
}