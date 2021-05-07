part of 'collection_right_watcher_bloc.dart';

@freezed
abstract class CollectionRightWatcherEvent with _$CollectionRightWatcherEvent {
  const factory CollectionRightWatcherEvent.watchAll() = WatchAll;
  const factory CollectionRightWatcherEvent.collectionRightReceived(
      Either<RepositoryFailure, List<CollectionRight>>
          failureOrCollectionRight) = CollectionRightReceived;
}
