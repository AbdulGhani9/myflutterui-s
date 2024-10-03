import 'package:flutter/material.dart';

class ControlleruiWidget extends StatefulWidget {
  const ControlleruiWidget({super.key});

  @override
  State<ControlleruiWidget> createState() => _ControlleruiWidgetState();
}

class _ControlleruiWidgetState extends State<ControlleruiWidget> {
 late  TextEditingController textEditingController;
 late TextEditingController passwordOntroller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController= TextEditingController()
    ..addListener( 
      (){
        setState(() {});
      },
    );
    
    passwordOntroller=TextEditingController()
    ..addListener(
      (){
        setState(() {});
      }
    );


  }
  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    passwordOntroller.dispose();
    super.dispose();
  }
void incrementCounter(){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(textEditingController.text,)));
}
void PasswordCounter(){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(passwordOntroller.text)));
}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var Size(:height, :width)= size;

    return Scaffold(
      body:Center(
        child: Column(
          children: [
            Container(
              height: height,
              width: width,
              color: Colors.grey,
              child: Column(
                children: [
                  SizedBox(
                    height: height*0.10,
                  ),
                  Container(
                    height: height*0.40,
                    width: width*0.80,
                    
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(image: AssetImage('assets/images/road.png'), fit: BoxFit.fill)
                    ),
                  ),

                  SizedBox(
                    height: height*0.09,
                  ),
                  SizedBox(
                    width: width*0.70,
                    child:   TextField(
                      controller: textEditingController,
                      keyboardType: TextInputType.name,
                      style:  TextStyle(color: Colors.black),

                      
                      decoration:   const InputDecoration(
                         suffixIcon: Icon(Icons.text_fields_rounded),
                        suffixIconColor: Colors.white,
                        
                        label: Text('User Name', style: TextStyle(color: Colors.white),),

                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.green)

                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.white)
                        )
                      ),
                              
                    
                    ),
                  ),
                  SizedBox(
                    height: height*0.04,
                  ),
                  SizedBox(
                    width: width*0.70,
                    child:   TextField(
                      controller: passwordOntroller,

                      style:  TextStyle(color: Colors.black),
                      obscureText: true,
                      obscuringCharacter: '*',

                      
                      decoration: const   InputDecoration(
                        suffixIcon: Icon(Icons.password),
                        suffixIconColor: Colors.white,
                        
                        label: Text('Password', style: TextStyle(color: Colors.white),),

                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.green)

                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.white)
                        )
                      ),
                              
                    
                    ),
                  ),
                  SizedBox(
                    height: height*0.05,
                  ),

                  SizedBox(width: width*0.60,

                  child: ElevatedButton(onPressed: (){
                   incrementCounter();
                   PasswordCounter();
                  }, child: Text('Login'))),

                  SizedBox(
                    height: height*0.03,
                  ),


                   SizedBox(width: width*0.60,

                  child: ElevatedButton(onPressed:(){
                  clearUserText();
                  

                
                  }, child: Text('Clear')))




                ],
              ),


            )
          ],
        ),
      ) ,

    );
    
  }
  void clearUserText(){
    textEditingController.clear();
    passwordOntroller.clear();
  }
}