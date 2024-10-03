import 'package:flutter/material.dart';

class MyLoginmodernWidget extends StatefulWidget {
  const MyLoginmodernWidget({super.key});

  @override
  State<MyLoginmodernWidget> createState() => _MyLoginmodernWidgetState();
}

class _MyLoginmodernWidgetState extends State<MyLoginmodernWidget> {
late TextEditingController controller;

@override
  void initState() {
    super.initState();
    controller=TextEditingController()..addListener(() => setState(() {
      
    }));
  }
@override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.sizeOf(context);
    var Size(:height, :width)= size;

void snackBar(){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(controller.text)));

}

    return  Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.white,

        child: Column(


          children: [

            SizedBox(
              height: height*0.10,

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                
                Text(
                  'Login',style: TextStyle(color: Colors.blue[900], fontSize: height*0.06, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: height*0.10,

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  width: width*0.70,
                  height: height*0.07,
                padding: EdgeInsets.only(left: 10),
                  decoration: const BoxDecoration(

                  
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border(bottom: BorderSide(color: Colors.black, width: 1),top: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),

                  gradient: LinearGradient(colors: [Colors.black, Colors.purple, Colors.grey],
                  stops: [0.3,0.6,1]
                  ),
                  
                  ),
                  child:  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    
                    style: TextStyle(fontSize: 20, color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email),
                      label:Text( 'Email'),
                      labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      
                    ),


                ),
                ),
              ],
            ),

            SizedBox(
              height: height*0.06,

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  width: width*0.70,
                  height: height*0.07,
                padding: EdgeInsets.only(left: 10),
                  decoration: const BoxDecoration(

                  
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border(bottom: BorderSide(color: Colors.black, width: 1),top: BorderSide(color: Colors.black), left: BorderSide(color: Colors.black), right: BorderSide(color: Colors.black)),

                  gradient: LinearGradient(colors: [Colors.green, Colors.blue, Colors.yellow],
                  stops: [0.3,0.6,1]
                  ),
                  
                  ),
                  child:  TextField(
                    controller:controller,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    obscuringCharacter: '*',
                    
                    style: TextStyle(fontSize: 20, color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.lock),
                      label:Text( 'Password'),
                      labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      
                    ),


                ),
                ),
              ],
            ),
            SizedBox(height: height*0.09,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children:[ 
                SizedBox(
                  width: width*0.6,
                  child:OutlinedButton(
                    style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.black, width: 2)),
                    
                    onPressed: (){}, child: Text('Login', style: TextStyle(fontSize: 15),))
                  
                 
                  ),
                  
              ]
              ),

              SizedBox(height: height*0.08,),
              

              SizedBox(
                width: width*0.60,
                child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color: const Color.fromARGB(255, 13, 72, 160))
                  ),
                  
                  onPressed: (){}, child: Text('FaceBook', style: TextStyle(color: Colors.blue[900]),))),



                  SizedBox(height: height*0.02,),
              

              SizedBox(
                width: width*0.60,
                child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2, color:  Colors.red)
                  ),
                  
                  onPressed: (){}, child: Text('Google', style: TextStyle(color: Colors.red[200]),)))
          ],

        

          
        ),
        

      ),
      floatingActionButton: FloatingActionButton(onPressed:snackBar ) 
    );
  }
}