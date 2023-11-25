import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/app/constants/ui_helper.dart';
import 'package:pokedex_app/app/data/pokemon_model.dart';
import 'package:pokedex_app/app/modules/home/views/widgets/pokeball_and_image.dart';

import '../../../../constants/constants.dart';

class PokeListItem extends StatelessWidget {
  const PokeListItem({super.key, required this.pokemon, required this.onTap});
  final PokemonModel pokemon;
  final Function(PokemonModel) onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(pokemon);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name ?? 'N/A',
                style: Constants.pokemonNameTextStyle(),
              ),
              Chip(
                label: Text(
                  pokemon.type![0],
                  style: Constants.pokemonChipNameTextStyle(),
                ),
              ),
              Expanded(
                child: PokeBallAndImage(pokemon: pokemon),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
