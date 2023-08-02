part of 'chat_bloc.dart';

@immutable
abstract class ChatEvent {}

class SendContentEvent extends ChatEvent {
  final MainBody mainBody;
  SendContentEvent(this.mainBody);
}
