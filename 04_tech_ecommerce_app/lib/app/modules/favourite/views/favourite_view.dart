import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favourite_controller.dart';

class FavoriteView extends GetView<FavouriteController> {
  const FavoriteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FavouriteView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FavouriteView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
