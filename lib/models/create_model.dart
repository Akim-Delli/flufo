import 'package:flufo/engine/tile_position.dart';
import 'package:flufo/levels/tilemap.dart';
import 'package:flufo/models/game_model.dart';
import 'package:flufo/models/player_model.dart';

GameModel createModel(Tilemap tilemap, double tileSize) {
  final nrows = tilemap.nrows;
  final ncols = tilemap.ncols;
  final center = tileSize / 2;

  PlayerModel player;

  for (int col = 0; col < ncols; col++) {
    for (int row = 0; row < nrows; row++) {
      final tile = tilemap.tiles[row * ncols + col];
      if (tile == Tile.Player) {
        player =
            PlayerModel(tilePosition: TilePosition(col, row, center, center));
      }
    }
  }

  return GameModel(player: player);
}
