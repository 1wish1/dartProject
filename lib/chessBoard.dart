// lib/chessBoard.dart
import 'piece.dart';
import 'Rook.dart';

class Board {
  List<List<Piece?>> _board;
  
  Board() : _board = List.generate(8, (_) => List.filled(8, null));
  
  void setupInitialPosition() {
    _board[0][0] = Rook(color: "white");
     _board[7][7] = Rook(color: "black");
  }

  void display() {
    for (var row in _board) {
       print(row.map((piece) => piece?.symbol ?? '.').join(' '));
    }
  }

  Piece? getPiece(int startX, int startY) => _board[startX][startY]; 
  
  void setPiece(int startX, int startY,int endX, int endY, Piece? piece){
    _board[endX][endY] = _board[startX][startY];
    _board[startX][startY] = null;
  } 
}
