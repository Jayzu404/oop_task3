import 'game_character.dart';

class Fighter extends GameCharacter {
  //unique property
  int _armor;

  Fighter({required String name, required String role, int armor = 50}) : this._armor = armor, super(name: name, role: role);

  //unique method
  void shieldBlock(GameCharacter enemy) {
    int reduction = (this._armor * 0.3).round() + (this.level * 2);  
    print('🛡️ $name raises their shield!');
    
    enemy.attackPower -= reduction;

    print('⚔️ Enemy damage reduced by $reduction!');
  }

  @override
  void getInfo(){
    print("character name: $name | Role: $role | Health: $health | Level: $level | Armor: $_armor");
  }

}