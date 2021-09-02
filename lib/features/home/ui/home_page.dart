import 'package:flutter/material.dart';
import 'package:squeezed_app/widgets/app_scaffold.dart';
import 'package:squeezed_app/widgets/custom_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Squeezed',
      isScrollable: false,
      body: Center(
        child: CustomTextField(),
      ),
    );
  }
}