part of 'comic_bloc.dart';

@freezed
class ComicState with _$ComicState {
  const factory ComicState.initial() = _Initial;
  const factory ComicState.comicListReceived({required List<ComicCard> comicCardList}) = _ComicListReceived;
  const factory ComicState.error({required Failure failure}) = _Error;
  const factory ComicState.loading() = _Loading;
}
