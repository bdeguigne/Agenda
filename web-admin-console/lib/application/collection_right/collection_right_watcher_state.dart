part of 'collection_right_watcher_bloc.dart';

@freezed
abstract class CollectionRightWatcherState with _$CollectionRightWatcherState {
  const factory CollectionRightWatcherState.initial() = _Initial;
  const factory CollectionRightWatcherState.loadSuccess(
      List<CollectionRight> collectionRights) = LoadSuccess;
  const factory CollectionRightWatcherState.loadFailure(
      RepositoryFailure failure) = LoadFailure;
}
