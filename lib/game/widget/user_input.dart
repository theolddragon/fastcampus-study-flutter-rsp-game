import 'package:flutter/material.dart';
import 'package:study_rsp_game/game/enum.dart';
import 'package:study_rsp_game/game/widget/input_card.dart';

class UserInput extends StatelessWidget {
  final bool isDone;
  final InputType? userInput;
  final Function(InputType) callback;

  const UserInput({this.userInput, required this.callback, required this.isDone, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Row(
        children: [
          const Expanded(child: SizedBox.shrink()),
          Expanded(child: InputCard(child: Image.asset(userInput!.path))),
          const Expanded(child: SizedBox.shrink()),
        ],
      );
    }

    return Row(
      children: _getInputs(callback),
    );
  }

  List<Widget> _getInputs(Function(InputType) callback) {
    return InputType.values
      .map((type) => Expanded(
        child: InkWell(
          onTap: () => callback.call(type),
          child: InputCard(
              child: Image.asset(type.path),
          ),
        ),
      ))
      .toList();
  }
}

