// lib/rook.dart
import 'piece.dart';
import 'chessBoard.dart';

class Rook extends Piece {

  Rook({required super.color});

   @override
  bool isValidMove(int startX, int startY, int endX, int endY , Board board){
    super.isValidMove(startX, startY, endX, endY, board);
    return startX == endX || startY == endY;
  }
  @override
  String get symbol => color == 'white' ? 'R' : 'r';
}
