// Let's start
import 'dart:io';
import 'dart:math';
enum Move {rock, paper , scissor}
void main(){
    final r = Random();
    while(true){
        stdout.write('Rock , Paper or Scissor ? (r,p,s) Press q to terminate: ');
        final input = stdin.readLineSync();
        if(input=='r' || input=='p'|| input=='s'){
            var playerMove;
             if(input=='r'){
                playerMove=Move.rock;
             }
            else if(input=='p'){
                playerMove=Move.paper;
            }
            else if(input=='s'){
                playerMove=Move.scissor;
            }
             final random = r.nextInt(3);
            final aiMove = Move.values[random];
            print('Your Move: $playerMove');
            print('AI\'s  Move: $aiMove ');
            if(playerMove==aiMove){
              print('It\'s a Draw');
            }
            else if(playerMove==Move.rock && aiMove==Move.scissor ||
                    playerMove==Move.scissor && aiMove== Move.paper ||
                    playerMove==Move.paper && aiMove== Move.rock ){
                      print('You Win');
                    }
            else{
              print('You Lose');
            }
        }
        else if(input == 'q'){
            break;
        }
        else{
            print('Invalid Input');
        }
    }
}
