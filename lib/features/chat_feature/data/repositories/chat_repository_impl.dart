import 'package:mamad_gpt/core/resources/data_state.dart';
import 'package:mamad_gpt/features/chat_feature/data/datasources/chat_remote_data_source.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/chat_response.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/value_objects/main_body.dart';
import 'package:mamad_gpt/features/chat_feature/domain/repositories/chat_repository.dart';
import 'package:dio/dio.dart';

class ChatRepositoryImpl implements ChatRepository {
  ChatRemoteDataSource chatRemoteDataSource;
  ChatRepositoryImpl(this.chatRemoteDataSource);

  @override
  Future<DataState<ChatResponse>> chatResponse(MainBody content) async {
    try {
      Response response =
          (await chatRemoteDataSource.chat(content)) as Response;

      if (response.statusCode == 200) {
        ChatResponse chatResponse =
            MainBody.fromJson(response.data) as ChatResponse;
        return DataSuccess(chatResponse);
      } else {
        return const DataFailed("Something Went Wrong. please try again...");
      }
    } catch (e) {
      print(e.toString());
      return const DataFailed("please check your internet connection...");
    }
  }
}
