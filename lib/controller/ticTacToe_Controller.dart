import 'package:get/get.dart';

class TicTacToeController extends GetxController {
  List<dynamic> game = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""],
  ];
  int scorePlayerX = 0;
  int scorePlayerO = 0;
  String resultGame = ' ';
  String player = "X";
  String winner = ' ';
  setValue(int i, int j) {
    if (game[i][j] == '') {
      game[i][j] = player;
      changePlayer();
      checkWiner();
    }
    update();
  }

  changementScore() {
    if (winner == 'X') {
      scorePlayerX++;
    }
    if (winner == "O") {
      scorePlayerO++;
    }
    update();
  }

  changePlayer() {
    if (player == "X") {
      player = "O";
    } else {
      player = "X";
    }
    update();
  }

  newGame() {
    resetGame();
    scorePlayerO = 0;
    scorePlayerX = 0;
    update();
  }

  checkWiner() {
    if (game[0][0] != "" &&
        game[0][0] == game[0][1] &&
        game[0][1] == game[0][2]) {
      winner = game[0][0];
    }
    if (game[1][0] != "" &&
        game[1][0] == game[1][1] &&
        game[1][1] == game[1][2]) {
      winner = game[1][0];
    }
    if (game[2][0] != "" &&
        game[2][0] == game[2][1] &&
        game[2][1] == game[2][2]) {
      winner = game[2][0];
    }
    if (game[0][0] != "" &&
        game[0][0] == game[1][1] &&
        game[1][1] == game[2][2]) {
      winner = game[0][0];
    }
    if (game[0][2] != "" &&
        game[0][2] == game[1][1] &&
        game[1][1] == game[2][0]) {
      winner = game[0][2];
    }
    if (game[0][0] != "" &&
        game[0][0] == game[1][0] &&
        game[1][0] == game[2][0]) {
      winner = game[0][0];
    }
    if (game[0][1] != "" &&
        game[0][1] == game[1][1] &&
        game[1][1] == game[2][1]) {
      winner = game[0][1];
    }
    if (game[0][2] != "" &&
        game[0][2] == game[1][2] &&
        game[1][2] == game[2][2]) {
      winner = game[0][2];
    }
    changementScore();
    update();
  }

  resetGame() {
    winner = ' ';
    game = [
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
    ];
    update();
  }
}
