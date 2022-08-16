import 'dart:io';
import 'game.dart';
void main (){
  var game = Game();
  int result = 0;
  print('╔═══════════════════════════════════════════════════╗');
  print('║                 GUESS THE NUMBER                  ║');
  print('╠═══════════════════════════════════════════════════╣');

  do{
    print('║      Please guess the number between 1 - 100      ║ ');
    stdout.write('║                       ');


    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess == null){
      print('║               Please Enter Number Only            ║');
      print('║                    ↓ ↓ ↓ ↓ ↓ ↓                    ║');
      continue;
    }

    result = game.doGuess(guess);
  }while(result != 3);

}