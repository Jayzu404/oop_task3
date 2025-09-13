import 'game_character.dart';
void main(){
  print('--- Demo base class GameCharacter ---');
  GameCharacter char1 = GameCharacter(name: 'char1', role: 'assasin');
  GameCharacter char2 = GameCharacter(name: 'char2', role: 'mage');
  char1.getInfo(); //method that access properties
  print(char1.level); //getter
  char1.level = 2; //setter w/ validation
  char1.attack(char2, 1000);//method2
}