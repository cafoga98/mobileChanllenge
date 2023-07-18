import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '/core/shared/error/failure.dart';
import '/features/comics/presentation/widgets/comic_card.dart';
import '/features/comics/data/repositories/implementation/comic_repository.dart';

part 'comic_event.dart';

part 'comic_state.dart';

part 'comic_bloc.freezed.dart';

class ComicBloc extends Bloc<ComicEvent, ComicState> {
  final ComicRepository comicRepository;

  ComicBloc({required this.comicRepository})
      : super(const ComicState.initial()) {
    on<ComicEvent>(_fetchComics);
  }

  _fetchComics(ComicEvent event, Emitter<ComicState> emit) async {
    emit(const ComicState.loading());
    final response = await comicRepository.getMarvelComics();
    response.fold(
      (left) {
        emit(ComicState.error(failure: left));
      },
      (right) {
        List<ComicCard> comicCards = right.results.map((e) {
          e.thumbnail['path'] = e.thumbnail['path'].toString().replaceFirst('http://i.annihil.us', 'https://cdn.marvel.com');
          e.thumbnail['path'] = '${e.thumbnail['path']}/portrait_uncanny.jpg';
          return ComicCard(marvelComic: e);
        }).toList();
        emit(ComicState.comicListReceived(comicCardList: comicCards));
      },
    );
  }
}
