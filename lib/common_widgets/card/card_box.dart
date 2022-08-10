import 'package:app_responsivo/common_widgets/custom_search_field/custom_search_field.dart';
import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  const CardBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 8,
      child: Container(
        height: 235,
        padding: const EdgeInsets.all(22),
        width: 350,
        child: Column(
          children: const [
            Text(
              'Aprenda flutter com esse curso',
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Aprenda flutter com Gabriel Zorzan',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            CustomSearchField(),
          ],
        ),
      ),
    );
  }
}
