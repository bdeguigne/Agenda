import 'package:agenda/domain/document/document.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'file_chooser.dart';

class HomeworkForm extends StatefulWidget {
  final bool autoValidate;
  final void Function(String value) onTitleChanged;
  final String Function() onTitleValidate;
  final void Function(String value) onDescriptionChanged;
  final String Function() onDescriptionValidate;
  final void Function(DateTime value) onDateChanged;
  final void Function() onCreateHomeworkPressed;
  final void Function(Document document) onDocumentAdded;

  const HomeworkForm({
    Key key,
    @required this.autoValidate,
    @required this.onTitleChanged,
    @required this.onDescriptionValidate,
    @required this.onDateChanged,
    @required this.onTitleValidate,
    @required this.onDescriptionChanged,
    @required this.onCreateHomeworkPressed,
    @required this.onDocumentAdded,
  }) : super(key: key);

  @override
  _HomeworkFormState createState() => _HomeworkFormState();
}

class _HomeworkFormState extends State<HomeworkForm> {
  int filesJoined = 0;
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final now = DateTime.now();
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: DateTime(now.year + 2),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      widget.onDateChanged(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          autovalidateMode: widget.autoValidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Create a homework",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 36,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  labelText: 'Title',
                ),
                onChanged: widget.onTitleChanged,
                validator: (_) => widget.onTitleValidate(),
              ),
              const SizedBox(height: 28),
              SizedBox(
                height: 150,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.top,
                  textInputAction: TextInputAction.newline,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  expands: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    labelText: 'Description',
                  ),
                  onChanged: widget.onDescriptionChanged,
                  validator: (_) => widget.onDescriptionValidate(),
                ),
              ),
              const SizedBox(height: 28),
              const Text(
                "Subject",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Chip(
                    label: Text("Mathematics"),
                  ),
                  const SizedBox(width: 12),
                  Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade300,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.add,
                          size: 18,
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 28),
              const Text(
                "Delivery date",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              OutlinedButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all(const Color(0xff717b8d)),
                ),
                onPressed: () => _selectDate(context),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(DateFormat("dd/MM/yyyy").format(selectedDate)),
                      const SizedBox(width: 18),
                      const Icon(
                        Icons.date_range,
                        color: Color(0xffa9b2c5),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 28),
              const Text(
                "Add a document",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                children: [
                  for (var i = 0; i < filesJoined; i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: FileChooser(
                        onSuccess: widget.onDocumentAdded,
                        onError: () {
                          setState(() {
                            filesJoined -= 1;
                          });
                        },
                      ),
                    ),
                  SizedBox(
                    width: 160,
                    height: 66,
                    child: OutlinedButton.icon(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(const Color(0xff717b8d)),
                      ),
                      onPressed: () {
                        setState(() {
                          filesJoined += 1;
                        });
                      },
                      icon: const Icon(Icons.add),
                      label: const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text("Join"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: widget.onCreateHomeworkPressed,
                    child: const Text("Create homework")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
