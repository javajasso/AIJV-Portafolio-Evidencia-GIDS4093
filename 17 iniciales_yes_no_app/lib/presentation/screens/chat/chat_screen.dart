
import 'package:flutter/material.dart';
import 'package:iniciales_yes_no_app/domain/entities/message.dart';
import 'package:iniciales_yes_no_app/presentation/providers/chat_provider.dart';
import 'package:iniciales_yes_no_app/presentation/widgets/chat/her_message.dart';
import 'package:iniciales_yes_no_app/presentation/widgets/chat/my_message.dart';
import 'package:iniciales_yes_no_app/presentation/widgets/shared/message_field_box.dart';
import 'package:provider/provider.dart';



class ChatScreen extends StatelessWidget{
  const ChatScreen({super.key});


@override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://th.bing.com/th/id/R.780ee8e92e7eddaa7323d532d7b89b2f?rik=IkZpE%2fpNPzlOPg&riu=http%3a%2f%2fwww.scifinow.co.uk%2fwp-content%2fuploads%2f2015%2f01%2fBig-Hero-6-team.jpg&ehk=LL5lAeyMzLRf9099yBSXzuhkcVl0%2fvBLdPQxcodo%2f4U%3d&risl=&pid=ImgRaw&r=0'),
        ),
        ),
        title: const Text('Usuario'),
        centerTitle: false,
    ),
    body: const _ChatView(),
  );
}
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {

      
      final chatProvider = context.watch<ChatProvider>();

    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatProvider.messages.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messages[index];

                return (message.fromWho == FromWho.her)
                ? const HerMessage()
                : const MyMessages();
              },
            ),
          ),
          const MessageFieldBox()
        ],
            ),
      ),
   );
  }
}

