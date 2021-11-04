import 'package:flutter/material.dart';

import 'package:nsaqseek/app/theme/constants.dart';

class SeggussionsInput extends StatelessWidget {
  final FormFieldSetter<String>? onsaved;
  final String? Function(String?)? validator;
  final String texthint;
  final int maxline;
  final int minline;
  final TextInputType keybord;

  const SeggussionsInput({
    Key? key,
    this.onsaved,
    this.validator,
    required this.texthint,
    required this.maxline,
    required this.minline,
    required this.keybord,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minline,
      maxLines: maxline,
      textDirection: TextDirection.rtl,
      onSaved: onsaved,
      validator: validator,
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
