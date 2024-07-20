import 'package:flutter/material.dart';
import 'package:soft_record/soft_test/widgets/text_form_field_widgets.dart';

class Credentials extends StatelessWidget {
  Credentials({super.key});

  final TextEditingController ws = TextEditingController();
  final TextEditingController port = TextEditingController();
  final TextEditingController login = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextFormFieldWidgets(
                  controller: ws,
                  label: 'WS',
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 5)),
              Expanded(
                child: TextFormFieldWidgets(
                  controller: port,
                  label: 'Porta',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextFormFieldWidgets(
                  controller: login,
                  label: 'Login',
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 5)),
              Expanded(
                child: TextFormFieldWidgets(
                  controller: password,
                  label: 'Senha',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
