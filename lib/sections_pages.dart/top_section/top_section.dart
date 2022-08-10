import 'package:app_responsivo/common_widgets/breakpoints/breakpoints.dart';
import 'package:app_responsivo/common_widgets/card/card_box.dart';
import 'package:app_responsivo/common_widgets/custom_search_field/custom_search_field.dart';
import 'package:app_responsivo/common_widgets/image/image_top_screen.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= tabletBreakpoint) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                const AspectRatio(
                  aspectRatio: 3.4,
                  child: ImageTop(),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: const EdgeInsets.all(22),
                      width: 450,
                      child: Column(
                        children: const [
                          Text(
                            'Aprenda flutter com esse curso',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Aprenda flutter com Gabriel Zorzan',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 16),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        if (maxWidth >= mobileBreakpoint) {
          return SizedBox(
            height: 320,
            child: Stack(
              children: const [
                SizedBox(
                  height: 240,
                  width: double.infinity,
                  child: ImageTop(),
                ),
                Positioned(left: 20, top: 40, child: CardBox())
              ],
            ),
          );
        }

        return Column(
          children: [
            const AspectRatio(
              aspectRatio: 3.4,
              child: ImageTop(),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
          ],
        );
      },
    );
  }
}
