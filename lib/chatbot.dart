import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class ChatbotScreen extends StatefulWidget {
  @override
  _ChatbotScreenState createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final Uri chatbot = Uri.parse("https://www.chatbase.co/chatbot-iframe/tSB-x0l7GtFqYMBttU3b8");
  Future<void> launchChatbot() async {
    try {
      await launchUrl(chatbot);
    }
    catch (e) {
      print("Error launching chatbot: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Chatbot")),
        body: Card(
          margin: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Link to the chatbot"',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              const SizedBox(height: 20),
              const Divider(thickness: 2),
              const SizedBox(height: 20),
              // Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       const Text('Click on '),
              //       InkWell(
              //         child: const Text('Chatbot',
              //           style: TextStyle(
              //             color: Colors.brown,
              //           ),
              //         ),
              //         onTap:() {
              //
              //         },
              //       ),]
              // ),
              // const SizedBox(height: 20),
              // const Divider(thickness: 2),
              // const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Click to open the chatbot:'),
                  IconButton(onPressed: () {
                    launchChatbot();
                  }, icon: const Icon(Icons.link),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
