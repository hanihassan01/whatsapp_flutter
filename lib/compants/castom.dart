import 'package:flutter/material.dart';
import 'package:small2/pages/intivigalpages.dart';

class castom extends StatelessWidget {
  const castom({super.key,});

  @override
  Widget build(BuildContext context) {
    return InkWell( onTap: () {
      Navigator.push(context,MaterialPageRoute(builder: (context) => Indivdualpage(),) );
    },
      child: const ListTile(
        leading: CircleAvatar(
          radius: 25,
        ),
        title: Text("dev",style: TextStyle(
          fontSize: 15,fontWeight: FontWeight.bold
        ),),
        subtitle: Row(
          children: [
            Icon(Icons.done_all),
            Text("hi rr",style: TextStyle( fontSize: 14)
            ,),
          ],
        ),
        trailing: Text('18:04'),
      ),
    );
  }
}