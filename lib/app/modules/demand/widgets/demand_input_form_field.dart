import 'package:flutter/material.dart';
import 'package:nsaqseek/app/theme/constants.dart';

class DemandInputField extends StatelessWidget {
  const DemandInputField(
      {Key? key,
      this.onsaved,
      this.validator,
      required this.texthint,
      required this.maxline,
      required this.minline})
      : super(key: key);

  final FormFieldSetter<String>? onsaved;
  final String? Function(String?)? validator;
  final String texthint;
  final int maxline;
  final int minline;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxline,
      minLines: minline,
      onSaved: onsaved,
      validator: validator,
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Constants.grey),
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Constants.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Constants.blueGreen),
        ),
        filled: false,
        hintText: texthint,
        hintStyle: const TextStyle(color: Constants.grey, fontSize: 13),
        hintTextDirection: TextDirection.rtl,
      ),
    );
  }
}
