import 'package:flutter/material.dart';
import 'package:mymodernflutteruis/inputvalidation/extensionmethds.dart';

class fbuiwidget extends StatefulWidget {
  const fbuiwidget({super.key});

  @override
  State<fbuiwidget> createState() => _fbuiwidgetState();
}

class _fbuiwidgetState extends State<fbuiwidget> {
  GlobalKey <FormState> formkey = GlobalKey<FormState>();
   late TextEditingController username;
  late TextEditingController email;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    username=TextEditingController()
    ..addListener(
      (){
        setState(() {
          
        });
      }
    );
  
   email=TextEditingController()
   ..addListener(
    (){
   setState(() {
     
   });
  });

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    email.dispose();
    username.dispose();

  }


   
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var Size(:height, :width)= size;

    return Scaffold(
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
          children: [
            SizedBox(
              height: height*0.10,
            ),
            Container(
              height: height*0.30,
              width: width*0.60,
              decoration: const BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(image: AssetImage('assets/images/tokyotwo.jpeg'), fit: BoxFit.fill)
              ),
            ),
            SizedBox(
              height: height*0.13,
            ),

            SizedBox(
              width: width*0.60,
              child: TextFormField(
                controller: username,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) => value!.isEmptyOrNull()?'Required Field' : null,
                decoration: InputDecoration(
                      
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: 'User Name',
                  suffixIcon: Icon(Icons.abc)
                 
                    ),
              
              ),
            ),

            SizedBox(
              height: height*0.05,
            ),

            SizedBox(
              width: width*0.60,
              child: TextFormField(
                   autovalidateMode: AutovalidateMode.onUserInteraction,
                   controller: email,
              validator: (value) {
                
                if (value!.isEmpty) {
                  return 'Required Field';
                  
                }else if(!value.isValidEmail()){
                  return 'Invalid Email';

                }
                return null;
              }, 
              
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: 'Email',
                  suffixIcon: Icon(Icons.email)
                  
                 
                    ),
              
              ),
            ),

            SizedBox(
              height: height*0.03,
            ),
            SizedBox(
              width: width*0.50,
              
              child: ElevatedButton(
              
                
          onPressed: () {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Form submitted successfully')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all fields correctly')),
      );
    }
  },
  child: Text('Submit'),


              
          )
       ),
SizedBox(
  height: height*0.02,

),
       SizedBox(
        width: width*0.50,
        child: ElevatedButton(onPressed: clear, child: Text('Clear')))

          ],
        )),

      ),

    );
  }

  void clear(){
    email.clear();
    username.clear();
  
   
   
  }
}