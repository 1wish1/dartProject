// lib/piece.dart
import '../chessBoard.dart';

class Piece {
  final String color;
  Piece({
    required this.color,
  });

  bool isValidMove(int startX, int startY, int endX, int endY, Board board) {
    
    return endX >= 0 && endX < 8 && endY >= 0 && endY < 8;
  }
  String get symbol => "_"; 
}
