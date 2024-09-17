// lib/models/game.dart
import 'player.dart';
import 'chessBoard.dart';

class Game {
  final Board board;
  final Player whitePlayer;
  final Player blackPlayer;
  Player currentPlayer;

  Game()
      : board = Board(),
        whitePlayer = Player(color: 'white', name: 'White Player'),
        blackPlayer = Player(color: 'black', name: 'Black Player'),
        currentPlayer = Player(color: 'white', name: 'White Player');

  void makeMove(int startX, int startY, int endX, int endY) {
    if (currentPlayer.makeMove(startX, startY, endX, endY, board)) {
      currentPlayer = currentPlayer == whitePlayer ? whitePlayer : blackPlayer;
    } else {
      print('Move failed. Try again.');
    }
  }
}
