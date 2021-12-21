// ignore_for_file: file_names

import 'package:fb_login_app/Config/size_config.dart';
import 'package:fb_login_app/Model/TextFeildModel.dart';
import 'package:flutter/material.dart';

class PasswordFeild extends StatefulWidget {
  final TextFeildModel reference;
  const PasswordFeild({required this.reference, Key? key}) : super(key: key);

  @override
  _PasswordFeildState createState() => _PasswordFeildState();
}

class _PasswordFeildState extends State<PasswordFeild> {
  late TextFeildModel ref;
  bool _isObscure = true;

  @override
  void initState() {
    // TODO: implement initState
    ref = widget.reference;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(
          vertical: getSize(false, .0125),
        ),
        child: TextField(
          obscureText: _isObscure,
          onChanged: (String value) {
            setState(() {
              ref.isError = value.isEmpty;
            });
            ref.onChange(value);
          },
          decoration: InputDecoration(
            errorText: widget.reference.isError ? ref.errorMessage : null,
            hintText: ref.label,
            label: Text(ref.label),
            suffixIcon: IconButton(
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                }),
            contentPadding: EdgeInsets.only(left: 0),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0XFFE0E0E0), width: 2.3),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffbdbdbd), width: 2.3),
            ),
            errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red)),
            focusedErrorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red)),
          ),
          textInputAction: TextInputAction.next,
        ));
  }
}
