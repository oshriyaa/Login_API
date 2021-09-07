import 'package:flutter/material.dart';

class CustomField extends StatefulWidget {
  final String? fieldLabel;
  final String? fieldHint;
  final Function(String?)? save;
  CustomField({this.fieldLabel, this.fieldHint, this.save});

  @override
  _CustomFieldState createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  TextEditingController? controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text.';
          }
          return null;
        },
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(),
          ),
          contentPadding: EdgeInsets.all(10),
          labelText: widget.fieldLabel ?? 'label',
          hintText: widget.fieldHint ?? 'hint',
        ),
        onSaved: widget.save,
      ),
    );
  }
}
