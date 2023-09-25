import 'package:flutter/material.dart';

import 'compants/signin.dart';
import 'compants/text.dart';

class ragister extends StatefulWidget {
   ragister({super.key, required void onTap});

  @override
  State<ragister> createState() => _ragisterState();
}

class _ragisterState extends State<ragister> {
  final usernameController=TextEditingController();

  final passwordController=TextEditingController();

  void signinuserin(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 184, 92, 6),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const SizedBox(height: 40,),
            const Icon(Icons.account_circle_sharp,size: 100,),
          const SizedBox(height: 20,),
          Text("rgister",style: TextStyle(color: Colors.grey[700],fontSize: 17),
           ),
            const SizedBox(height: 20,),
            textfiled(
              controler: usernameController,hintText: "email or nujmber",obscureText: false,
            ),
            const SizedBox(height: 20,),
            textfiled(
              controler: usernameController,hintText: "username",obscureText: false,
            ),
            const SizedBox(height: 10,),
            textfiled(
              controler: passwordController,hintText: "password",obscureText: true,
            ),
            const SizedBox(height: 10,),
            textfiled(
              controler: passwordController,hintText: "re_enter password",obscureText: true,
            ),
            
            const SizedBox(height: 30,)
            
            ,singin(text:'signup' ,
              onTap: signinuserin,
             ),
            const SizedBox(height: 25,),
            Row(
              children: [
                Expanded(child: Divider(thickness: 0.9,color: Colors.blueGrey.shade700,),
                ),
                const Text("continu with")
              , Expanded(child: Divider(thickness: 0.9,color: Colors.blueGrey.shade700,),
              ),
              ],
            ),
                const SizedBox(height: 10),
                const SizedBox(width: 20,),
                   const Center(
                     child: Row(
                      children: [
                        Text("all redey a member"),
                        SizedBox(width: 10,),
                        Text("sign up",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                      ],
                                   ),
                   ),
                
             
            
          ],
          ),
        ),
      ),
    );
  }
}



          