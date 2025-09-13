import 'game_character.dart';
import 'fighter.dart';
import 'mage.dart';
import 'support.dart';

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

  print('--- Demo derived class Mage ---');
  Mage lunox = Mage(name: 'lunox', role: 'mage');
  lunox.getInfo(); //override method/inherited
  //lunox._mana (unique property but can't access directly because it is private)
  lunox.castSpell(char2);//unique method

  print('--- Demo derived class Support ---');
  Support rafaela = Support(name: 'rafaela', role: 'support');
  rafaela.getInfo(); //override method/inherited
  //rafaela._movementSpeed (unique property but can't access directly because it is private)
  rafaela.heal(char2, 100);//unique method
}