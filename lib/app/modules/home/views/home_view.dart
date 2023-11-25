import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex_app/app/modules/home/views/widgets/app_title.dart';
import 'package:pokedex_app/app/modules/home/views/widgets/pokemon_list.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => Column(
          children: [
            const AppTitle(),
            Expanded(
              child: PokemonList(
                pokemonListFuture: controller.pokemonListFuture,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
