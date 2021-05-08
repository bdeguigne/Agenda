import 'package:agenda/application/collection_right/collection_right_watcher_bloc.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/core/snackbars.dart';
import 'package:agenda/presentation/pages/home/selector/rights/widgets/rights_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RightsProvider extends StatelessWidget {
  const RightsProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CollectionRightWatcherBloc,
        CollectionRightWatcherState>(
      listener: (context, state) {
        state.maybeWhen(
          loadFailure: (failure) {
            return ScaffoldMessenger.of(context).showSnackBar(
              AppSnackBar.errorSnackBar(
                failure.map(
                  unexpected: (_) => "Something went wrong",
                  insufficientPermission: (_) => "Insufficient permission",
                  unableToUpdate: (_) => "Unable to update",
                ),
              ).toSnackBar,
            );
          },
          orElse: () => null,
        );
      },
      builder: (context, state) {
        return state.map(
          initial: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadFailure: (_) => const Center(
            child: Text("Could not load rights"),
          ),
          loadSuccess: (success) =>
              RightsList(collectionRights: success.collectionRights),
        );
      },
    );
  }
}
