import 'package:mamad_gpt/features/chat_feature/data/models/value_object/chat_response_dto.dart';
import 'package:dio/dio.dart';
import 'package:mamad_gpt/features/chat_feature/domain/entities/value_objects/main_body.dart';

abstract class ChatRemoteDataSource {
  Future<ChatResponseDTO> chat(MainBody ChatResponse);
}

class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  final Dio _dio = Dio();
  @override
  Future<ChatResponseDTO> chat(MainBody mainBody) async {
    _dio.options.headers['Content-Type'] = "application/json";
    _dio.options.headers['Authorization'] = "Bearer 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";
    
    var response = await _dio.post('https://api.openai.com/v1/chat/completions',
        data: mainBody);
    print(response.statusCode);
    if (response.statusCode == 200) {
      return ChatResponseDTO.fromJson(response.data);
    } else {
      throw "error";
    }
  }
}
