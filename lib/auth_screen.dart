import 'package:flutter/material.dart';

import 'component/textfield_widget.dart';
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final emailController=TextEditingController();
  final phoneController=TextEditingController();
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
        child: Column(
          children: [
            Text('Register Screen'),
            SizedBox(height: 10,),
            Text('register your account and enjoy the app'
            ),
            SizedBox(height: 15,),
            Form(
              key: formKey,

                child: Column(
              children: [
                // TextFormField(
                //   validator: (value){
                //     if(value==null||value==''||value.isEmpty)
                //       {
                //         return "Email is required";
                //       }
                //   },
                //   controller: emailController,
                //   obscureText: false,
                //   obscuringCharacter: '*',
                //   decoration: InputDecoration(
                //     enabledBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //     focusedBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(20)
                //     ),
                //     // fillColor: Colors.deepPurpleAccent,
                //     // filled: true,
                //     border: OutlineInputBorder(),
                //     label: Text('Email'),
                //     hintText: "Enter your email",
                //     prefixIcon: Icon(Icons.email)
                //   ),
                //
                // ),

                ReusableTextField(controller: emailController,hintText: "Enter your email",
                label: "Email", icon: Icons.email,
                ),
                SizedBox(height: 20,),
                ReusableTextField(controller: phoneController,hintText: "Enter your phone",
                  label: "Phone", icon: Icons.phone,
                ),
                ElevatedButton(onPressed: (){
                  if(formKey.currentState!.validate())
                    {

                    }
                }, child: Text('Register'))
                
              ],
            ))

          ],
        ),
      )),
    );
  }
}
