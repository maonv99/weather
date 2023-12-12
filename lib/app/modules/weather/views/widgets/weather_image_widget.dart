import 'package:flutter/material.dart';

class WeatherImageWidget extends StatelessWidget {
  const WeatherImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://cdn.pixabay.com/photo/2020/01/24/21/33/city-4791269_960_720.png',
      width: 350.0,
      fit: BoxFit.fitWidth,
    );
  }
}
