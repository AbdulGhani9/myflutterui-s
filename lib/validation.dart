import 'package:flutter/material.dart';
import 'package:mymodernflutteruis/inputvalidation/extensionmethds.dart';


class ValidationWidget extends StatefulWidget {
  const ValidationWidget({super.key});

  @override
  State<ValidationWidget> createState() => _ValidationWidgetState();
}

class _ValidationWidgetState extends State<ValidationWidget> {
  GlobalKey <FormState> formGlobalKey= GlobalKey<FormState>();
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Form(
          key: formGlobalKey,
          child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 200,
              child: TextFormField(
                keyboardType: TextInputType.text,
                validator: (value) => value.isEmptyOrNull() ? 'Required Field': null,
                decoration: const InputDecoration(labelText: 'User Name'),
                
                ),
            ),

              SizedBox(
              width: 200,
              child: TextFormField(
              
                keyboardType: TextInputType.text,
                validator: (value) => value.isCellPhone() ? null: 'Invalid cell phone',
                decoration: const InputDecoration(labelText: 'Cell Phone'),
                
                ),
            ),
              
          ElevatedButton(onPressed: incrementCounter, child: Icon(Icons.send))
            


          ],
        )
        ),
      ) ,
    );
    
  }
  void incrementCounter(){
    formGlobalKey.currentState?.validate();

  }
}