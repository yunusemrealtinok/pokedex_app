import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pokedex_app/app/modules/home/views/widgets/pokelist_items.dart';
import '../../../../data/pokemon_model.dart';
import '../info_page.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({
    super.key,
    required this.pokemonListFuture,
  });
  final Future<List<PokemonModel>> pokemonListFuture;
  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
        future: widget.pokemonListFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<PokemonModel> myList = snapshot.data!;
            return GridView.builder(
              itemCount: myList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    ScreenUtil().orientation == Orientation.portrait ? 2 : 3,
              ),
              itemBuilder: (context, index) => PokeListItem(
                onTap: (pokemon) {
                  Get.to(InfoPage(
                    pokemon: pokemon,
                  ));
                },
                pokemon: myList[index],
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('hata cıktı ${snapshot.error.toString()}'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
