import 'package:get_it/get_it.dart';
import 'package:mamad_gpt/features/chat_feature/data/datasources/chat_remote_data_source.dart';
import 'package:mamad_gpt/features/chat_feature/data/repositories/chat_repository_impl.dart';
import 'package:mamad_gpt/features/chat_feature/domain/repositories/chat_repository.dart';
import 'package:mamad_gpt/features/chat_feature/domain/usecases/post_content_message_usecase.dart';
import 'package:mamad_gpt/features/chat_feature/presentation/bloc/chat_bloc.dart';

GetIt locator = GetIt.instance;

setup() {
  locator.registerLazySingleton<ChatRemoteDataSource>(() => (ChatRemoteDataSourceImpl()));

  // repositories
  locator.registerLazySingleton<ChatRepository>(() => ChatRepositoryImpl(locator()));

  // usecase
  locator.registerLazySingleton<PostContentMessageUseCase>(() => PostContentMessageUseCase(locator()));

  // bloc
  locator.registerLazySingleton<ChatBloc>(() => ChatBloc(locator()));
}
