import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'package:dart_application_1/chessBoard.dart';
import 'package:dart_application_1/game.dart';

void main(List<String> arguments) {
  var game = Game();

  game.board.setupInitialPosition();

  game.board.display();

  // Example moves
  print('Player ${game.currentPlayer.name} makes a move');
  game.makeMove(0, 0, 0, 7);  // Example move (adjust coordinates as needed)

  game.board.display();

  print('Player ${game.currentPlayer.name} makes another move');
  game.makeMove(7, 7, 7, 0);  // Example move (adjust coordinates as needed)

  game.board.display();
}
