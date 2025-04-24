
import 'package:flutter/material.dart';
import 'package:prueba_tecnica_recetas/config/utils/my_utils.dart';

class CustomLoading extends StatelessWidget {

  final String loadingText;

  const CustomLoading({
    super.key,
    this.loadingText = 'Cargando información...',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularProgressIndicator(),
        SizedBox(height: MyUtils.porcientoH(2)),
        Text(loadingText),
      ],
    );
  }
}