import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.call),
      ),
      body: SafeArea(
        child: ListView(
          children: const [
            ListTile(
              leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("images/FullSizeRender-42 (3).jpg")),
              title: Text("Adil"),
              trailing: Icon(Icons.phone_forwarded),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("images/FullSizeRender-42 (3).jpg")),
              title: Text("Eli"),
              trailing: Icon(Icons.phone_forwarded),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("images/FullSizeRender-41 (3).jpg")),
              title: Text("Uncle"),
              trailing: Icon(Icons.phone_forwarded),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("images/FullSizeRender-269 (1).jpg")),
              title: Text("Ronaldo"),
              trailing: Icon(Icons.phone_forwarded),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("images/IMG-20230205-WA0245.jpg")),
              title: Text("Niyas"),
              trailing: Icon(Icons.phone_forwarded),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("images/IMG_2392.jpg")),
              title: Text("Kel"),
              trailing: Icon(Icons.phone_forwarded),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("images/FullSizeRender-176.jpg")),
              title: Text("Fiz"),
              trailing: Icon(Icons.phone_forwarded),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("images/FullSizeRender-42 (3).jpg")),
              title: Text("Alia"),
              trailing: Icon(Icons.phone_forwarded),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("images/FullSizeRender-42 (3).jpg")),
              title: Text("Au"),
              trailing: Icon(Icons.phone_forwarded),
            )
          ],
        ),
      ),
    );
  }
}
