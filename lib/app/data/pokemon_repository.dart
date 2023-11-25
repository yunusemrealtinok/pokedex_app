import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:pokedex_app/app/data/pokemon_model.dart';

class PokeRepository {
  PokeRepository._();

  static PokeRepository instance = PokeRepository._();
  final Dio dio = Dio();

  Future<List<PokemonModel>> fetchPokemonData() async {
    String baseUrl =
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

    final response = await dio.get(baseUrl);

    final List pokeList = jsonDecode(response.data)['pokemon'].toList();
    List<PokemonModel> allPokemonList = [];

    allPokemonList = pokeList.map((e) => PokemonModel.fromJson(e)).toList();

    return allPokemonList;
  }
}
