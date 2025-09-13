import 'game_character.dart';

class Support extends GameCharacter{
  //unique property
  int _movementSpeed;

  Support({required String name, required String role, int movementSpeed = 200}) : this._movementSpeed = movementSpeed, super(name: name, role: role);

  // unique method
  void heal(GameCharacter target, int amount){
    this.health = amount;
  }

  @override
  void getInfo(){
    print("character name: $name | Role: $role | Health: $health | Level: $level | Movement: $_movementSpeed");
  }
}