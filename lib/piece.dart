import 'package:titres/values.dart';

class Piece {
  Tetromino type;

  Piece({required this.type});

  List<int> position = [];

  void initializePiece() {
    switch (type) {
      case Tetromino.L:
        position = [
          4,
          14,
          24,
          25,
        ];
        break;
      default:
    }
  }

  void movePiece(Direction direction) {
    switch (direction) {
      case Direction.left:
        position = position.map((e) => e - 1).toList();
        break;
      case Direction.right:
        position = position.map((e) => e + 1).toList();
        break;
      case Direction.down:
        position = position.map((e) => e + rowLengths).toList();
        break;
    }
  }
}
