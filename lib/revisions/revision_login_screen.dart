import 'package:flutter/material.dart';
class RevisionLoginScreen extends StatefulWidget {
  const RevisionLoginScreen({super.key});

  @override
  State<RevisionLoginScreen> createState() => _RevisionLoginScreenState();
}

class _RevisionLoginScreenState extends State<RevisionLoginScreen> {
  bool isShow=true;
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login",style: TextStyle(color: Colors.blue,fontSize: 30),),
            SizedBox(height: 20,),
            Form(
                key: formKey,
                child: Column(
              children: [
                TextFormField(
                  validator: (val){
                    if(val==null||val==''||val.isEmpty)
                    {
                      return "Emails is required";
                    }
                  },
                  decoration: InputDecoration(
                    // prefixIcon: Icon(Icons.alternate_email),
                    suffixIcon: Icon(Icons.email),
                    hintText: "Enter your email",
                    label: Text('Email'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                ),
                SizedBox(height: 30,),
                TextFormField(
                  validator: (val){
                    if(val==null||val==''||val.isEmpty)
                      {
                        return "Password is required";
                      }
                  },
                  obscureText: isShow,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(onTap: (){
                      setState(() {
                        isShow=!isShow;
                      });


                    },child: Icon(isShow==true?Icons.visibility:Icons.visibility_off),),
                      hintText: "Enter your password",
                      label: Text('Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(onPressed: (){
                  if(formKey.currentState!.validate())
                    {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Data is valid')));
                    }

                }, child: Text('Login'))
              ],
            ))
          ],
        ),
      ),),
    );
  }
}
