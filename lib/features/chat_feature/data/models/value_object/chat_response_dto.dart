import 'package:mamad_gpt/features/chat_feature/domain/entities/chat_response.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/choises.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/usage.dart';

class ChatResponseDTO extends ChatResponse {
  const ChatResponseDTO({
    required super.id,
    required super.object,
    required super.created,
    required super.model,
    required super.usage,
    required super.choices,
  });

  factory ChatResponseDTO.fromJson(Map<String, dynamic> json) {
    return ChatResponseDTO(
      id: json['id'],
      object: json['object'],
      created: json['created'],
      model: json['model'],
      usage: Usage.fromJson(json['usage']),
      choices: List<Choices>.from((json['choices'] as List).map((e) => Choices.fromJson(e))),
    );
  }
}
