import 'package:flutter/material.dart';

class ImageTop extends StatelessWidget {
  const ImageTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
      fit: BoxFit.cover,
    );
  }
}
