import 'package:flutter/material.dart';
import 'package:mamad_gpt/core/const.dart';
import 'package:mamad_gpt/core/locator.dart';
import 'package:mamad_gpt/features/chat_feature/presentation/Screens/body.dart';
import 'package:mamad_gpt/features/chat_feature/presentation/bloc/chat_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      // body: const SafeArea(child: Body()),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => locator<ChatBloc>()),
        ],
        child: const Body(),
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: secondaryColor,
      elevation: 0,
      title: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
                text: 'ChatGPT',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            TextSpan(text: "\n"),
            WidgetSpan(
              child: Icon(
                Icons.circle_rounded,
                size: 14,
                color: Color(0xFF7EE087),
              ),
            ),
            TextSpan(
              text: ' Online',
            )
          ],
        ),
      ),
      leading: const Icon(Icons.arrow_back),
      actions: const [Icon(Icons.more_horiz), SizedBox(width: 20)],
    );
  }
}
