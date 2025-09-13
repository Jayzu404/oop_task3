import 'game_character.dart';

class Mage extends GameCharacter {
  // unique property
  int _mana;

  Mage({required String name, required String role, int mana = 100}) : this._mana = mana, super(name: name, role: role);

  // unique method
  void castSpell(GameCharacter target) {
   if (this._mana < 30) {
     print('❌ Not enough mana');
     return;
   }
   
   this._mana -= 30;
   int magicDamage = (this.level * 15) + 25;
   attack(target, magicDamage);
  }

  @override
  void getInfo(){
    print("character name: $name | Role: $role | Health: $health | Level: $level | Mana: $_mana");
  }
}   