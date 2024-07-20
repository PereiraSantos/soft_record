import 'package:flutter/material.dart';
import 'package:soft_record/soft_test/page/components/credentials.dart';
import 'package:soft_record/soft_test/widgets/text_form_field_widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController identification = TextEditingController();
  final TextEditingController subject = TextEditingController();
  final TextEditingController observation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormFieldWidgets(
              controller: identification,
              label: 'Identificação',
            ),
            TextFormFieldWidgets(
              controller: subject,
              label: 'Assunto',
            ),
            TextFormFieldWidgets(
              controller: observation,
              label: 'Observação',
            ),
            Credentials(),
          ],
        ),
      ),
    );
  }
}
