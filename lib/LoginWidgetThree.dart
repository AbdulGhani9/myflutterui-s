import 'package:flutter/material.dart';

class LoginWidgetThree extends StatefulWidget {
  const LoginWidgetThree({super.key});

  @override
  State<LoginWidgetThree> createState() => _LoginWidgetThreeState();
}

class _LoginWidgetThreeState extends State<LoginWidgetThree> {
  bool isChecked= false;
  var  _counter=0;
  TextEditingController 
  _controller= TextEditingController();





  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var Size(:height, :width)= size;
    return Scaffold(
      body: Container(
        height: height,
        color: Colors.blue[300],
        width: width,
        child: Column(
          children: [
            SizedBox(
              height: height*0.21,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                height: height*0.70,
                width: width *0.80,
                color: Colors.blue[800],
              ),

              Positioned(
                left: width*0.30,
                top: height*0-50,
                child: CircleAvatar(
                  radius: width*0.10,
                  backgroundColor: Colors.blue[900],
                  child: Icon(Icons.person,size: 70,color: Colors.white,),
                  
                ),
              ),

             Positioned(
              top: height*0.15,
              left: width*0.10,
               child: SizedBox(
                width: width*0.60,
                 child:  TextField(
                  controller: _controller,
                 
                    decoration: const InputDecoration(
                      hintText: 'Email ID',
                      suffixIcon: Icon(Icons.email),
                      suffixIconColor: Colors.white,
                      // counterText: '0',
                      
                      
                    
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: UnderlineInputBorder(
                      
                        borderSide: BorderSide(width: 1, color: Colors.black)
                      ), 
                      enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 1, 
                        color: Colors.white
                      
                      ),
                      ),
                   

                    ),
                  ),
                
               ),
             ),

              Positioned(
              top: height*0.30,
              left: width*0.10,
               child: SizedBox(
                width: width*0.60,
                 child:  const TextField(
                  obscureText:  true,
                  obscuringCharacter: '#',
                  decoration: InputDecoration(
                      

                      hintText: 'Password',
                      suffixIcon: Icon(Icons.lock),
                      suffixIconColor: Colors.white,
                    
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black)
                      ), 
                      enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 1, 
                        color: Colors.white
                      
                      ),
                      ),
                   

                    ),
                  ),
               ),
              ),
              

              Positioned(
                top: height*0.40,
                left: width*0.09,
                child: Row(
                  children: [
                    Checkbox(value: isChecked,
                    checkColor: Colors.white,
                    activeColor: Colors.blue[900],
                    side: BorderSide(width: 2, color: Colors.white),
                    
                     onChanged: (bool ? value){
                      setState(() {
                        isChecked=value!;
                      });
                    }),
                    Text('Remember me!', style: TextStyle(color: Colors.white, fontSize: 13),),
                    SizedBox(
                      width: width*0.19,
                      height: height*0.15,

                    ),

                    Text('Forgot Password ?', style: TextStyle(color: Colors.white, fontSize: 10),)
                  ],

                  
                ),
              
              ),

              Positioned(
                top: height*0.58,
                left: width*0.14,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(width*0.55, height*0.06)

                  ),
                  
                  onPressed: (){
                  
                
                }, child: Text('LOGIN')),
              )
        



              ],
           
            )

          ],
        ),
      ) ,

    );
  }
}