import 'package:mamad_gpt/core/resources/data_state.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/chat_response.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/value_objects/main_body.dart';

abstract class ChatRepository {
  Future<DataState<ChatResponse>> chatResponse(MainBody content);
}
