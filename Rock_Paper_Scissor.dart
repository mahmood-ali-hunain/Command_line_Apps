import 'dart:io';
import 'dart:math';
enum Move {rock, paper , scissor}
void main(){
    final rng = Random();
    while(true){
        stdout.write('Rock , Paper or Scissor ? (r,p,s) Press q to terminate: ');
        final input = stdin.readLineSync();
        if(input=='r' || input=='p'|| input=='s'){
            var playerMove;
             if(input=='r'){
                playerMove=Move.rock;
             }
            else if(input=='p'){
                playerMove==Move.paper;
            }
            else if(input=='s'){
                playerMove==Move.scissor;
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