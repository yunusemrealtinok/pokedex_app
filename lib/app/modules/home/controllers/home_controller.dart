import 'package:get/get.dart';
import 'package:pokedex_app/app/data/pokemon_repository.dart';

import '../../../data/pokemon_model.dart';

class HomeController extends GetxController {
  final PokeRepository pokeRepository = PokeRepository.instance;
  late final Future<List<PokemonModel>> pokemonListFuture;

  @override
  void onInit() {
    pokemonListFuture = pokeRepository.fetchPokemonData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
