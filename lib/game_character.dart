class GameCharacter {
  final String name;
  final String role;
  int _health;
  int _level;
  int _attackPower;
  
  // Constructor
  GameCharacter({required this.name, required this.role, int health = 500, int level = 1, int attackPower = 500})
                : this._health = health, this._level = level, this._attackPower = attackPower;

  // getters
  int get level => _level;
  int get attackPower => _attackPower;
  int get health => _health;

  // setters
  set level(int newLevel) {
    if (newLevel < 1 || newLevel > 15) {
      print("❌ Invalid level: $newLevel. Must be between 1-15");
      return;
    }
    this._level = newLevel;
    print("✅ $name leveled up to level $_level!");
  }

  set attackPower(int attackPower){
    if(attackPower < 0){
      print('❌ Invalid power');
      return;
    }

    this._attackPower = attackPower;
  }

  set health(int amount){
    if(this._health <= 0){
      print('❌ cannot heal');
      return;
    }

    this._health += amount;
  }
  
  
  // Method 1
  void attack(GameCharacter target, int damage) {
    if (target._health <= 0) {
      print('❌ Cannot attack ${target.name} - already defeated!');
      return;
    }

    if(damage <= 0){
      print('❌ no damage');
      return;
    } else {
      if(damage > target._health){
        target._health = 0;
      } else {
        target._health -= damage;
      }
    }

    print("⚔️ $name is attacking");
  }

  // Method 2
  void regen(int amount) {
    if (this._health <= 0) {
      print('❌ cannot use regen, wait to respawn!');
      return;
    }

    if (amount <= 0) {
      print('❌ Heal amount must be positive!');
      return;
    }

    this._health += amount;

    print('💖 $name heals for $amount! Current health: $_health');
  }
  
  // method 3
  void getInfo() {
    print("character name: $name | Role: $role | Health: $_health | Level: $_level");
  }
}