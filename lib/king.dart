// lib/models/king.dart
import 'piece.dart';
import 'chessBoard.dart';

class King extends Piece {
   King({required super.color});
  
   @override
  bool isValidMove(int startX, int startY, int endX, int endY, Board board) {
    super.isValidMove(startX, startY, endX, endY, board);
         int dx = (endX - startX);
         int dy = (endY - startY);
         return (dx <= 1 && dy <= 1);
  }

  String get symbol => color == 'white' ? 'K' : 'k';

}