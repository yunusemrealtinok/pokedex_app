import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/app/constants/constants.dart';
import 'package:pokedex_app/app/constants/ui_helper.dart';
import 'package:pokedex_app/app/data/pokemon_model.dart';

class PokeBallAndImage extends StatelessWidget {
  const PokeBallAndImage({super.key, required this.pokemon});
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            Constants.pokeBallUrl,
            width: UIHelper.calculatePokeImgAndBall(),
            height: UIHelper.calculatePokeImgAndBall(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? '',
              width: UIHelper.calculatePokeImgAndBall(),
              height: UIHelper.calculatePokeImgAndBall(),
              fit: BoxFit.fitHeight,
              placeholder: (context, url) =>
                  const CircularProgressIndicator(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
