enum GameObjectType {
  case Tank, Mine, Rover, EnergyBoost, PowerBoost
} //no need to modify this enumeration

struct Position: CustomStringConvertible {
  var row: Int
  var col: Int
  var description: String {
      return "(\(row),\(col))"
  }

  init(_ row: Int, _ col: Int) {
      self.row = row
      self.col = col
  }
} //you may add functionality to this struct as needed

class GameObject: CustomStringConvertible {
  let type: GameObjectType
  let id: String
  private(set) var position: Position
  private(set) var energy: Int
  private(set) var powerBoost: Int = 0
  var description: String {return "ID: \(id), Type: \(type), Energy: \(energy), Position: \(position)"}

  init(type: GameObjectType, id: String, position: Position, energy: Int) {
      self.type = type
      self.id = id
      self.position = position
      self.energy = energy
  }

  final func chargeEnergy(_ amount: Int) {
      self.energy -= amount
  }

  final func gainEnergy(_ amount: Int) {
      self.energy += amount
  }

  final func setPosition(_ newPosition: Position) {
      self.position = newPosition
  }

  final func setPowerBoost(_ newAmount: Int) {
      self.powerBoost = newAmount
  }

} //no need to modify this class
