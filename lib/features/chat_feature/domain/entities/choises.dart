import 'package:mamad_gpt/features/chat_feature/domain/entities/message.dart';

class Choices {
  final Message message;
  final String finishReason;
  final int index;

  const Choices({
    required this.message,
    required this.finishReason,
    required this.index,
  });

  factory Choices.fromJson(Map<String, dynamic> json) {
    return Choices(
      message: Message.fromJson(json['message']),
      finishReason: json['finish_reason'],
      index: json['index'],
    );
  }
}
