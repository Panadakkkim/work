import 'dart:math';

class Game {
  int answer = 0;
  int toohigh = 0;
  int toolaw = 0;
  int Totalguesses =0;

  Game() {
    var r = Random();
    answer = r.nextInt(100) + 1;
    ///print('Answer is $answer');
  }

  int doGuess(int num) {
    if (num > answer) {
      print('╟───────────────────────────────────────────────────╢');
      print('║                 ✗ $num is TOO HIGH ✗                ║');
      print('╟───────────────────────────────────────────────────╢');
      Totalguesses++;
      return 1;
    } else if (num < answer) {
      print('╟───────────────────────────────────────────────────╢');
      print('║                 ✗ $num is TOO LOW ✗                 ║');
      print('╟───────────────────────────────────────────────────╢');
      Totalguesses++;
      return 2;
    } else {
      print('╟───────────────────────────────────────────────────╢');
      print('║                ✓ $num is Correct ✓                  ║');
      Totalguesses++;
      print('║                TOTAL GUESSES : $Totalguesses                  ║');
      print('╟───────────────────────────────────────────────────╢');
      print('║                     THE END                       ║');
      print('╚═══════════════════════════════════════════════════╝');

      return 3;
    }
  }
}