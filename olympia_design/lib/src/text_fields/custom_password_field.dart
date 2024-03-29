import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_colors.dart';

class CustomPasswordField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool enabled;
  final TextInputAction? textInputAction;
  final bool showMinimumLengthWarning;

  const CustomPasswordField({
    Key? key,
    this.labelText,
    this.hintText,
    this.controller,
    this.validator,
    this.onChanged,
    this.enabled = true,
    this.textInputAction,
    this.showMinimumLengthWarning = false,
  }) : super(key: key);

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null) ..._buildLabelText(),
        Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: [
            TextFormField(
              autocorrect: false,
              controller: widget.controller,
              enabled: widget.enabled,
              validator: widget.validator,
              obscureText: !isPasswordVisible,
              decoration: InputDecoration(
                isDense: true,
                hintText: widget.hintText,
                hintStyle: const TextStyle(color: AppColors.greyLight),
                contentPadding: const EdgeInsets.all(15),
              ),
              onChanged: widget.onChanged,
            ),
            IconButton(
              onPressed: () {
                setState(() => isPasswordVisible = !isPasswordVisible);
              },
              icon: Icon(isPasswordVisible ? CupertinoIcons.eye_slash : CupertinoIcons.eye),
            ),
          ],
        ),
        if (widget.showMinimumLengthWarning) ...[
          const SizedBox(height: 5),
          const Text(
            'Mínimo de 6 caracteres',
            style: TextStyle(color: AppColors.grey, fontSize: 10),
          ),
        ],
      ],
    );
  }

  List<Widget> _buildLabelText() {
    return [
      Text(
        widget.labelText!,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 5),
    ];
  }
}
