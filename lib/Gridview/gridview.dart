import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  MyGridView({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> carsList = [
    {
      'title': 'Lamborghini',
      'price': '\$100',
      'image':
          'https://www.wallpaperflare.com/lamborghini-cool-car-famous-brand-dark-background-black-window-wallpaper-mtbmf'
    },
    {
      'title': 'Lamborghini Aventador',
      'price': '\$200',
      'image':
          'https://c4.wallpaperflare.com/wallpaper/217/249/131/lamborghini-aventador-sports-car-cool-black-car-wallpaper-preview.jpg'
    },
    {
      'title': 'Black sports car',
      'price': '\$300',
      'image':
          'https://c4.wallpaperflare.com/wallpaper/323/372/925/lamborghini-car-lamborghini-aventador-vehicle-wallpaper-preview.jpg'
    },
    {
      'title': 'Black Car',
      'price': '\$400',
      'image':
          'https://c4.wallpaperflare.com/wallpaper/757/921/129/black-car-wallpaper-preview.jpg'
    },
    {
      'title': 'BMW',
      'price': '\$500',
      'image':
          'https://c4.wallpaperflare.com/wallpaper/778/537/81/bmw-wallpaper-preview.jpg'
    },
    {
      'title': 'Black BMW sedan',
      'price': '\$600',
      'image':
          'https://c4.wallpaperflare.com/wallpaper/412/867/691/car-bmw-bmw-i8-cyan-wallpaper-preview.jpg'
    },
    {
      'title': 'BMW M3 E92',
      'price': '\$700',
      'image':
          'https://c4.wallpaperflare.com/wallpaper/876/982/478/bmw-m3-e92-white-car-front-view-wallpaper-preview.jpg'
    },
    {
      'title': 'BMW i8',
      'price': '\$800',
      'image':
          'https://c4.wallpaperflare.com/wallpaper/825/162/414/bmw-i8-concept-car-front-view-lights-wallpaper-preview.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemCount: 5,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisExtent: 300,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.red,
            );
          },
        ),
      ),
    );
  }
}
