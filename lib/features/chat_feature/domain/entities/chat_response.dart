import 'package:mamad_gpt/features/chat_feature/domain/entities/choises.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/usage.dart';
import 'package:equatable/equatable.dart';

class ChatResponse extends Equatable {
  final String id;
  final String object;
  final int created;
  final String model;
  final Usage usage;
  final List<Choices> choices;

  const ChatResponse({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.usage,
    required this.choices,
  });

  @override
  List<Object?> get props => [id, object, created, model, usage, choices];
}
