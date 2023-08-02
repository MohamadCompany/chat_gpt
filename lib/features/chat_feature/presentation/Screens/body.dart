import 'package:flutter/material.dart';
import 'package:mamad_gpt/core/const.dart';
import 'package:mamad_gpt/features/chat_feature/data/datasources/chat_remote_data_source.dart';
import 'package:mamad_gpt/features/chat_feature/data/models/value_object/chat_response_dto.dart';
import 'package:mamad_gpt/features/chat_feature/data/models/value_object/main_body_dto.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/value_objects/main_body.dart';
import 'package:mamad_gpt/features/chat_feature/presentation/Screens/chat_page.dart';
import 'package:mamad_gpt/features/chat_feature/presentation/bloc/chat_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 90,
          decoration: const BoxDecoration(
            color: secondaryColor,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: backGroundWhite,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: dummyData.length,
                  itemBuilder: (context, index) {
                    print(dummyData[index].content);
                    return Padding(
                      padding: EdgeInsets.only(
                          left: dummyData[index].status == 0 ? 60 : 15,
                          right: dummyData[index].status == 0 ? 15 : 60,
                          top: 20),
                      child: Align(
                        alignment: dummyData[index].status == 0
                            ? Alignment.topRight
                            : Alignment.topLeft,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: dummyData[index].status == 0
                                    ? secondaryColor
                                    : Colors.white,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  dummyData[index].content,
                                  style: TextStyle(
                                    color: dummyData[index].status == 0
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: dummyData[index].status == 0
                                    ? Alignment.topRight
                                    : Alignment.topLeft,
                                child: Text(
                                  dummyData[index].time,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                // padding: const EdgeInsets.only(left: 24.0),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextField(
                        cursorColor: secondaryColor,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFFE5E5E5),
                          suffixIcon: const Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          ),
                          // border: InputBorder.none,
                          hintText: 'Type Message',
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<ChatBloc>(context).add(
                          SendContentEvent(
                            MainBody(
                              messages: [Messages(content: 'hi')],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        child: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        decoration: const BoxDecoration(
                          color: secondaryColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DataModel {
  final String content;
  final String time;
  final int status;
  const DataModel(this.content, this.time, this.status);
}

List<DataModel> dummyData = [
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 0),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 1),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 0),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 1),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 1),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 0),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 1),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 0),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 1),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 1),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 0),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 1),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 0),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 1),
  const DataModel(
      "Hi, I'm doing good, thanks for asking. How about you?", "10:24 am", 1),
];
