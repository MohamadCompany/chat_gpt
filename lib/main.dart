import 'package:flutter/material.dart';
import 'package:mamad_gpt/core/locator.dart';
import 'package:mamad_gpt/features/chat_feature/data/datasources/chat_remote_data_source.dart';
import 'package:mamad_gpt/features/chat_feature/data/models/value_object/chat_response_dto.dart';
import 'package:mamad_gpt/features/chat_feature/data/models/value_object/main_body_dto.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/value_objects/main_body.dart';
import 'package:mamad_gpt/features/chat_feature/presentation/Screens/chat_page.dart';
import 'package:mamad_gpt/features/chat_feature/presentation/bloc/chat_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  // init Locator
  await setup();
  // runApp(const MyApp());
  runApp(MaterialApp(
    title: 'ChatGPT',
    debugShowCheckedModeBanner: false,
    // home: ChatPage(),
    home: MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => locator<ChatBloc>()),
      ],
      child: const ChatPage(),
    ),
  ));
}