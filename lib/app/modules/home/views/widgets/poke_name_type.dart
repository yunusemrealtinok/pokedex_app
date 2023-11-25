import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/app/data/pokemon_model.dart';
import '../../../../constants/constants.dart';

class PokeNameType extends StatelessWidget {
  const PokeNameType({super.key, required this.pokemon});
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? 'N/A',
                  style: Constants.pokemonNameTextStyle(),
                ),
              ),
              Text(
                '#${pokemon.num!}',
                style: Constants.pokemonNameTextStyle(),
              ),
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(
            label: Text(
              pokemon.type?.join(' , ') ?? '',
              style: Constants.pokemonChipNameTextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
