// ignore_for_file: invalid_required_named_param, sized_box_for_whitespace

import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.purple,
  required Function()? function,
  @required String? text,
  double radius = 5.0,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text!.toUpperCase(),
          style: const TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmit,
  Function(String)? onChanged,
  required String? Function(String?)? validate,
  required String? label,
  required IconData prefix,
  IconData? suffix,
  Function()? onPressed,
  bool isPassword = false,
  Function()? onTap,
}) =>
    TextFormField(
      onChanged: onChanged,
      onTap: onTap,
      validator: validate,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(onPressed: onPressed, icon: Icon(suffix))
            : null,
      ),
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
