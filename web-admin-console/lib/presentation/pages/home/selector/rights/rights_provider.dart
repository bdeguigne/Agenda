import 'package:agenda/application/collection_right/collection_right_watcher_bloc.dart';
import 'package:agenda/application/selector/selector_bloc.dart';
import 'package:agenda/domain/collection_right/right.dart';
import 'package:agenda/presentation/core/snackbars.dart';
import 'package:agenda/presentation/pages/home/selector/rights/widgets/rights_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RightsProvider extends StatefulWidget {
  const RightsProvider({Key key}) : super(key: key);

  @override
  _RightsProviderState createState() => _RightsProviderState();
}

class _RightsProviderState extends State<RightsProvider> {
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
          loadSuccess: (success) => BlocBuilder<SelectorBloc, SelectorState>(
            builder: (context, state) {
              return RightsList(
                selectedRights: state.selectedRights,
                onSelected: (right) => context.read<SelectorBloc>()
                  ..add(
                    SelectorEvent.rightSelected(right),
                  ),
                onDeselected: (right) => context.read<SelectorBloc>()
                  ..add(
                    SelectorEvent.rightDeselected(right),
                  ),
                collectionRights: success.collectionRights,
              );
            },
          ),
        );
      },
    );
  }
}
