import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  final FormFieldSetter<String>? onsaved;
  final String? Function(String?)? validator;
  final String texthint;

  const MyTextForm(
      {Key? key,
      required this.onsaved,
      required this.validator,
      required this.texthint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        hintTextDirection: TextDirection.rtl,
        hintText: texthint,
      ),
      validator: validator,
      onSaved: onsaved,
    );
  }
}
