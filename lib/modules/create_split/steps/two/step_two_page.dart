import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/person_tile.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text.dart';
import 'package:split_it/modules/create_split/widgets/step_title.dart';

class StepTwoPage extends StatefulWidget {
  const StepTwoPage({Key? key}) : super(key: key);

  @override
  _StepState createState() => _StepState();
}

class _StepState extends State<StepTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitle(
          title: 'Com quem',
          subtitle: '\nvocê quer dividir?',
        ),
        StepInputText(
          hintText: 'Nome da Pessoa',
          onChanged: (value) {},
        ),
        SizedBox(
          height: 35.0,
        ),
        PersonTile(
          name: 'José Vitor Marson',
        ),
        PersonTile(
          name: 'Geovanna Sousa',
        ),
        PersonTile(
          name: 'Eduardo Marson',
        ),
      ],
    );
  }
}
