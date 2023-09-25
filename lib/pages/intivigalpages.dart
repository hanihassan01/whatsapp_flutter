import 'package:flutter/material.dart';
import 'package:small2/compants/colors.dart';

class Indivdualpage extends StatefulWidget {
   Indivdualpage({super.key,});

  @override
  State<Indivdualpage> createState() => _IndivdualpageState();
}

class _IndivdualpageState extends State<Indivdualpage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
         backgroundColor:appBarColor,
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blueGrey,
              )
            ],
          ),
        ),
        title: const Column(
          children: [
            Text("dev",style: TextStyle(
              fontSize: 19,
            ),),
            
          ],
        ),
        actions:[IconButton(onPressed: (){}, icon:const Icon(Icons.video_call)),
        IconButton(onPressed: (){}, icon:const Icon(Icons.call)),
        PopupMenuButton<String>(
        onSelected: (value) {
          print(value);
        },
        itemBuilder:(BuildContext context) {
         return[
          const PopupMenuItem(child: Text("new group"),value: "new group",),
          const PopupMenuItem(child: Text("new broadcast"),value: "new broadcast",),
          const PopupMenuItem(child: Text("whatsapp web"),value: "wahtsapp web",),
          const PopupMenuItem(child: Text("start mesage"),value: "start mesage",),
          const PopupMenuItem(child: Text("settings"),value: "settings",),

         ];
       }, )
        ,]
      ),
      body:
       Container(color:const Color.fromARGB(255, 203, 222, 255),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Card(
                      margin: const EdgeInsets.only(left: 2,right: 2,bottom: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                       decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "mesage",
                        prefixIcon: IconButton(onPressed: () {  }, icon:const Icon(Icons.emoji_emotions)),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed: (){
                              showModalBottomSheet(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  builder: (builder) =>
                                                      bottomSheet());
                            }, icon:const Icon(Icons.attach_file))
                            ,IconButton(onPressed:(){}, icon: const Icon(Icons.camera_alt))
                          ],
                        ),
                        contentPadding: const EdgeInsets.all(5),
                       ),
                      ),
                      ) ,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8,right:2 ,left: 2),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: appBarColor,
                      child: IconButton(onPressed: (){}, icon:const Icon(Icons.mic,color: Colors.white,)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
    Widget bottomSheet() {
    return Container(
      height: 278,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(18.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(
                      Icons.insert_drive_file, Colors.indigo, "Document"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.camera_alt, Colors.pink, "Camera"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.insert_photo, Colors.purple, "Gallery"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(Icons.headset, Colors.orange, "Audio"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.location_pin, Colors.teal, "Location"),
                  SizedBox(
                    width: 40,
                  ),
                  iconCreation(Icons.person, Colors.blue, "Contact"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

   Widget iconCreation(IconData icons, Color color, String text) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Icon(
              icons,
              // semanticLabel: "Help",
              size: 29,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              // fontWeight: FontWeight.w100,
            ),
          )
        ],
      ),
    );
  }
}