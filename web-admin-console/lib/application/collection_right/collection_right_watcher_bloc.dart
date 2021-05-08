import 'dart:async';

import 'package:agenda/domain/collection_right/collection_right_failure.dart';
import 'package:agenda/domain/collection_right/i_rights_repository.dart';
import 'package:agenda/domain/collection_right/right.dart';
import 'package:agenda/domain/core/repository_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'collection_right_watcher_event.dart';
part 'collection_right_watcher_state.dart';
part 'collection_right_watcher_bloc.freezed.dart';

@injectable
class CollectionRightWatcherBloc
    extends Bloc<CollectionRightWatcherEvent, CollectionRightWatcherState> {
  final IRightsRepository _repository;

  CollectionRightWatcherBloc(this._repository) : super(const _Initial());

  @override
  Stream<CollectionRightWatcherState> mapEventToState(
    CollectionRightWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        _repository
            .watchAll(
              (failure) => add(
                CollectionRightWatcherEvent.collectionRightReceived(
                    left(failure)),
              ),
            )
            .listen(
              (users) => add(
                CollectionRightWatcherEvent.collectionRightReceived(
                    right(users)),
              ),
            );
      },
      collectionRightReceived: (e) async* {
        yield e.failureOrCollectionRight.fold(
          (failure) => CollectionRightWatcherState.loadFailure(failure),
          (List<CollectionRight> collectionRights) =>
              CollectionRightWatcherState.loadSuccess(collectionRights),
        );
      },
    );
  }
}
