import 'package:flutter/material.dart';

class TapbarWidget extends StatelessWidget {
  const TapbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            backgroundColor: Colors.green,
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.chat,),text: "Chat",),
              Tab(icon: Icon(Icons.video_call,),text: "Video Call",),
              Tab(icon: Icon(Icons.call,),text: "Audio Call",),
              Tab(icon: Icon(Icons.chat_bubble,),text: "Status",)
            ]),
          ),
          body: TabBarView(children: [
            Center(child: Text("CHAT",style: TextStyle(fontSize: 20),)),
        Center(child: Text("Video Call",style: TextStyle(fontSize: 20),)),
    Center(child: Text("Audio Call",style: TextStyle(fontSize: 20),)),
        Center(child: Text("Status",style: TextStyle(fontSize: 20),))

            
          ]),
        ));
  }
}
