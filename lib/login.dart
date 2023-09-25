import 'package:flutter/material.dart';
import 'package:small2/compants/colors.dart';
import 'package:small2/ragister.dart';

import 'compants/signin.dart';
import 'compants/text.dart';
import 'home.dart';

class login extends StatefulWidget {
   login({super.key, required void onTap});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final usernameController=TextEditingController();

  final passwordController=TextEditingController();

  void signinuserin(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: messageColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const SizedBox(height: 40,),
            const Icon(Icons.add_location,size: 100,),
          const SizedBox(height: 20,),
          Text("wlecom",style: TextStyle(color: Colors.grey[700],fontSize: 17),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("forgot password",style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,)
            
            ,singin(text: "sign in",
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => const home(onTap: null)));
              },

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
                const SizedBox(width: 50,),
                   Center(
                     child: Row(
                      children: [
                        const Text("not a member"),
                        const SizedBox(width: 10,),
                        
                InkWell(
               onTap: () {
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => ragister(onTap: null)));
               },
               child: const Text("register noe",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
             ),
             
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



          