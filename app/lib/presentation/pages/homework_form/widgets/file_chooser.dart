import 'package:agenda/application/homework/document/document_bloc.dart';
import 'package:agenda/domain/document/document.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/core/snackbars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FileChooser extends StatelessWidget {
  final double loadingValue;
  final Function() onError;
  final Function(Document document) onSuccess;

  const FileChooser({
    Key key,
    this.loadingValue = 0.0,
    this.onError,
    this.onSuccess,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DocumentBloc>()
        ..add(const DocumentEvent.documentPickerShowed()),
      child: BlocConsumer<DocumentBloc, DocumentState>(
        listener: (context, state) {
          state.documentFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                if (onError != null) {
                  onError();
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  AppSnackBar.errorSnackBar(
                    failure.map(
                      canceled: (_) => "Join document canceled",
                      insufficientPermission: (_) => "Insufficient permission",
                      unexpected: (_) => "Something went wrong",
                    ),
                  ).toSnackBar,
                );
              },
              (snapshot) =>
                  onSuccess != null ? onSuccess(snapshot.document) : null,
            ),
          );
        },
        builder: (context, state) {
          return Container(
            width: 160,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffa9b2c5)),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.description_outlined,
                        color: Color(0xffa9b2c5),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Flexible(
                        child: Text(
                          state.fileName,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                if (state.isUploading)
                  SizedBox(
                    width: double.infinity,
                    child: LinearProgressIndicator(
                      value: state.uploadLoadingValue,
                    ),
                  )
              ],
            ),
          );
        },
      ),
    );
  }
}
