import 'package:mamad_gpt/core/resources/data_state.dart';
import 'package:mamad_gpt/core/usecase/use_case.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/chat_response.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/value_objects/main_body.dart';
import 'package:mamad_gpt/features/chat_feature/domain/repositories/chat_repository.dart';

class PostContentMessageUseCase
    extends UseCase<DataState<ChatResponse>, MainBody> {
  final ChatRepository chatRepository;
  PostContentMessageUseCase(this.chatRepository);

  @override
  Future<DataState<ChatResponse>> call(MainBody param) {
    return chatRepository.chatResponse(param);
  }
}
