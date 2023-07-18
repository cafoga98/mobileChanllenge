import '/core/shared/utils/constant.dart';
import '/core/shared/config/api_config.dart';
import '/core/shared/config/environment_config.dart';
import '/features/comics/domain/entities/marvel_comic.dart';
import '/features/comics/domain/entities/marvel_response.dart';
import '/features/comics/data/services/interfaces/comic_service_interface.dart';

class ComicService extends ComicServiceInterface {
  final ApiConfig apiConfig;
  final EnvironmentConfig environmentConfig;

  ComicService(
    this.apiConfig,
    this.environmentConfig,
  );

  @override
  Future<MarvelResponse<MarvelComic>> fetchComics() async {
    var data = await apiConfig.apiGet(
      '${environmentConfig.apiBase}/comics?ts=${Constant.tsKey}&apikey=${Constant.publicKey}&hash=${Constant.hashKey}',
    );

    final response = MarvelResponse<MarvelComic>.fromJson(
      data as Map<String, dynamic>,
      (json) => MarvelComic.fromJson(json as Map<String, dynamic>),
    );

    return response;
  }
}
