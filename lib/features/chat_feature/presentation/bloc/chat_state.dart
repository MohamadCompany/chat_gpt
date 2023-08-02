part of 'chat_bloc.dart';

@immutable
abstract class ChatState extends Equatable {}

class ChatInitial extends ChatState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ChatLoading extends ChatState {
  final Message message;
  ChatLoading({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ChatSuccessful extends ChatState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ChatFailure extends ChatState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
