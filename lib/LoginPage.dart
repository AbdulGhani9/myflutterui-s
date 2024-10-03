import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
   var Size(height:height, width:width)= size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
              height: height,
              width: width,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: height*0.05,
                  ),
                  Container(
                    height: height*0.35,
                    width: width*0.80,
                    
                    decoration:  const BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(image: AssetImage('assets/images/giff.png'), fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    height: height*0.04,
        
                  ),
        
                  const Text(
                    'Login', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: height*0.05,
        
                  ),
        
        
                  SizedBox(
                    width: width*0.75,
                   
        
                    child: TextField(
                      
                    
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        suffixIcon: Icon((Icons.near_me)),
                      
                        focusedBorder: OutlineInputBorder(
                          
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const  BorderSide(
                            color: Colors.black,
                            width: 3
                          ),
        
                        ),
        
                        enabledBorder: OutlineInputBorder(
                          
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const  BorderSide(
                            color: Colors.yellow,
                            width: 3
                          )
                      ),
                    ),
                  ),
                ),
                 SizedBox(
                    height: height*0.03,
        
                  ),
        
                  SizedBox(
                    width: width*0.75,
                    
                   
        
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        suffixIcon:  IconButton(onPressed: (){}, icon: const  Icon(
                          Icons.email
                        )),
                        
                        
                        focusedBorder: OutlineInputBorder(
                          
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const  BorderSide(
                            color: Colors.black,
                            width: 3
                          ),
        
                        ),
        
                        enabledBorder: OutlineInputBorder(
                          
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const  BorderSide(
                            color: Colors.yellow,
                            width: 3
                          )
                      ),
                    ),
                  ),
                ),
        
                SizedBox(
                    height: height*0.03,
        
                  ),
        
        
                SizedBox(
                    width: width*0.75,
                   
        
                    child: TextField(
                     obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                        
                        
                        focusedBorder: OutlineInputBorder(
                          
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const  BorderSide(
                            color: Colors.black,
                            width: 3
                          ),
        
                        ),
        
                        enabledBorder: OutlineInputBorder(
                          
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const  BorderSide(
                            color: Colors.yellow,
                            width: 3
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height*0.01,),
                Row(
                  children: [
                    SizedBox( width: width*0.13,),
                    Text('Forget Password ?', style: TextStyle(color: Colors.grey),)
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width*0.6,
                    ),
                    ElevatedButton(
                      
                      onPressed: (){}, child: Text('Sign Up')),
                      
                  ],
                )
        
        
                ],
              ),
        
            ),
      )
    );
  }
}