// import 'package:mamad_gpt/features/chat_feature/domain/repositories/message.dart';

class MainBody {
  final String model;
  final List<Messages> messages;

  MainBody({
    this.model = "gpt-3.5-turbo",
    required this.messages,
  });

  Map<String, dynamic> toJson() => {'model': model, 'messages': messages};

  factory MainBody.fromJson(MainBody mainBody) {
    return MainBody(model: mainBody.model, messages: mainBody.messages);
  }
}

class Messages {
  final String role;
  final String content;

  const Messages({
    this.role = 'user',
    required this.content,
  });

  Map<String, dynamic> toJson() => {'role': role, 'content': content};
}
