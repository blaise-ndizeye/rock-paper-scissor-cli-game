import "dart:math";
import "dart:io";

enum Move { Rock, Paper, Scissor }

void main() {
  Random genRandom = new Random();

  while (true) {
    int aiNum = genRandom.nextInt(3);

    stdout.write("Rock, Paper, Scissors: r/p/s: ");
    final input = stdin.readLineSync();

    if (input == "q") {
      print("Game terminated...");
      break;
    } else if (input == "r" || input == "p" || input == "s") {
      final userMove = input == "r"
          ? Move.Rock
          : input == "p"
              ? Move.Paper
              : Move.Scissor;
      final aiMove = Move.values[aiNum];

      if ((userMove == Move.Paper && aiMove == Move.Rock) ||
          (userMove == Move.Scissor && aiMove == Move.Paper) ||
          (userMove == Move.Rock && aiMove == Move.Scissor)) {
        print("You win");
        print("Your move: $userMove \nAI move: $aiMove");
      } else if (userMove == aiMove) {
        print("This is draw!");
        print("Your move: $userMove\n AI move: $aiMove");
      } else {
        print("You Loose");
        print("Your move: $userMove\n AI move: $aiMove");
      }
    } else {
      print("Invalid input => $input :\nTry again...");
    }
  }
}
