import 'package:bloc/bloc.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/message.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/value_objects/main_body.dart';
import 'package:mamad_gpt/features/chat_feature/domain/usecases/post_content_message_usecase.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  PostContentMessageUseCase postContentMessageUseCase;

  ChatBloc(this.postContentMessageUseCase) : super(ChatInitial()) {
    on<SendContentEvent>(_chatLoading);
    // on<SendContentEvent>(_chatSuccessful);
    // on<SendContentEvent>(_chatFailure);
    // ChatFailure
  }

  void _chatLoading(SendContentEvent event, Emitter<ChatState> emit) {
    emit(ChatLoading(message: Message(role: 'user', content: 'hello')));
    final result = postContentMessageUseCase.call(event.mainBody);
    print(result);
  }

  void _chatSuccessful(SendContentEvent event, Emitter<ChatState> emit) {
    emit(ChatSuccessful());
  }

  void _chatFailure(SendContentEvent event, Emitter<ChatState> emit) {
    emit(ChatFailure());
  }
}
