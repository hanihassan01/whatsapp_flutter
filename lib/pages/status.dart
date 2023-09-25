import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView(children: [
        ListTile(
          leading: Container(
            child: Stack(
              children: [
                CircleAvatar(
                    backgroundImage:
                        AssetImage("images/FullSizeRender-42 (3).jpg")),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.green),
                      child: Center(child: Icon(Icons.add)),
                    )),
              ],
            ),
          ),
          title: Text("You"),
        ),
        Divider(),
        for (int i = 1; i < 10; i++)
          ListTile(
            leading: Container(
              child: Stack(
                children: [
                  CircleAvatar(
                      backgroundImage:
                          AssetImage("images/FullSizeRender-42 (3).jpg")),
                ],
              ),
            ),
            title: Text("friend"),
          ),
      ]),
    );
  }
}
