// lib/player.dart
import 'chessBoard.dart';
import 'piece.dart';  

class Player {
  final String color;
  final String name;

  Player({required this.color, required this.name});

  bool makeMove(int startX, int startY, int endX, int endY, Board board) {
    Piece? piece = board.getPiece(startX, startY) ;

    if (piece == null || piece.color != color) {
      print('Invalid move: No piece at start position or wrong color.');
      return false;
    }

    if (piece.isValidMove(startX, startY, endX, endY, board)) {
      board.setPiece(startX, startY, endX, endY, piece);
      return true;
    } else {
      print('Invalid move for ${piece.symbol}.');
      return false;
    }
  }
}
