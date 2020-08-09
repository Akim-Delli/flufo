import 'package:flutter/foundation.dart';

@immutable
class TilePosition {
  final int col;
  final int row;
  final double relX;
  final double relY;

  const TilePosition(this.col, this.row, this.relX, this.relY);

  bool isSmaeTileAs(TilePosition other) =>
      other.col == this.col && other.row == this.row;

  @override
  String toString() {
    return '''Tileposition (
    col: $col + $relX
    row: $row + $relY
    )''';
  }
}
