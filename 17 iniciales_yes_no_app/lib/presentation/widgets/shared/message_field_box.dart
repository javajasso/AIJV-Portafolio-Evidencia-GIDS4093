import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();

    final OutlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(20),
    );

    final inputdecoration = InputDecoration(
      hintText: 'Termina el mensaje con "?',
      enabledBorder: OutlineInputBorder,
      focusedBorder: OutlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          textController.value.text;
          textController.clear();
        },
      )
    );
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      
      controller: textController,
      decoration: inputdecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
      },
      onChanged: (value) {
       
      },
      focusNode: focusNode,
    );
  }
}