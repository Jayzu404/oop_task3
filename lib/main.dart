import 'game_character.dart';
import 'fighter.dart';
void main(){
  print('--- Demo base class GameCharacter ---');
  GameCharacter char1 = GameCharacter(name: 'char1', role: 'assasin');
  GameCharacter char2 = GameCharacter(name: 'char2', role: 'mage');
  char1.getInfo(); //method that access properties
  print(char1.level); //getter
  char1.level = 2; //setter w/ validation
  char1.attack(char2, 1000);//method2

  print('--- Demo derived class Figher ---');
  Fighter lapulapu = Fighter(name: 'lapulapu', role: 'fighter');
  lapulapu.getInfo(); //override method/inherited
  // lapulapu._armor (unique property but can't access directly because it is private)
  lapulapu.shieldBlock(char2);//unique method
}