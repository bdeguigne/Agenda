import 'package:agenda/application/homework/homework_form/homework_form_bloc.dart';
import 'package:agenda/injection.dart';
import 'package:agenda/presentation/pages/homework_form/widgets/homework_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeworkFormPage extends StatelessWidget {
  const HomeworkFormPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeworkFormBloc>(),
      child: BlocConsumer<HomeworkFormBloc, HomeworkFormState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return HomeworkForm(
            autoValidate: state.showErrorMessages,
            onTitleChanged: (value) => context.read<HomeworkFormBloc>().add(
                  HomeworkFormEvent.titleChanged(value),
                ),
            onTitleValidate: () => state.title.isEmpty ? "Enter a value" : null,
            onDescriptionChanged: (value) =>
                context.read<HomeworkFormBloc>().add(
                      HomeworkFormEvent.descriptionChanged(value),
                    ),
            onDescriptionValidate: () =>
                state.description.isEmpty ? "Enter a value" : null,
            onDateChanged: (value) => context.read<HomeworkFormBloc>().add(
                  HomeworkFormEvent.dateChanged(value),
                ),
            onCreateHomeworkPressed: () => context.read<HomeworkFormBloc>().add(
                  const HomeworkFormEvent.createHomeworkPressed(),
                ),
            onDocumentAdded: (document) => context.read<HomeworkFormBloc>().add(
                  HomeworkFormEvent.documentAdded(document),
                ),
            // onDocumentAdded: ,
          );
        },
      ),
    );
  }
}
