// ignore_for_file: unused_local_variable, deprecated_member_use
import 'dart:math';

int Dice() {
  var rng = new Random();
  return rng.nextInt(7);
}

void main() {
  var player1 = [true, true, true, true];
  var board = new List.filled(52, false, growable: false);
  int value = 6;
  print(player1.contains(true));
  while (true) {
    if (player1.contains(true) == false) {
      if (value == 6) {
        player1[player1.indexWhere((element) => element == true)] = false;
        board[0] = true;
      }
      print('player : $player1\n board : $board\n');
    }
  }
}
