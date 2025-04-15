class SuperTankland {
    var grid: [[GameObject?]] = Array(repeating: Array(repeating: nil, count: 15), count: 15)
    /*
     This class will handle the primary flow of the game.

     ie It will initialize the grid with tanks and continuously running turns until the game is over (only 1 tank remains, or 2 of the same corporate-nation)

     The logic for a single turn should also be implemented in this class.
     */   

    
    func populateGrid() {
        grid[0][0] = GameObject(type: .Tank , id: "NA", position: Position(0,0) , energy: 100000)

        
    
    }
 
    
    // func runGame() {...}
    //  func doTurn() {...}d
 
    
     
    
func printGrid() {
    print("_________________________GRID___________________________________________________________________________________________________________")

    for r in 0..<grid.count {
        // First row: print object types
        for c in 0..<grid[r].count {
            if let object = grid[r][c] {
                let symbol = String(describing: object.type).prefix(2).uppercased()
                print("|\(symbol)", terminator: "      ")
            } else {
                print("|  ", terminator: "      ")
            }
        }
        print("|")

        // the second one
        for c in 0..<grid[r].count {
            if let object = grid[r][c] {
                print("|^ ", terminator: "      ") // placeholder for now
            } else {
                print("|  ", terminator: "      ")
            }
        }
        print("|")

        //coords
        for c in 0..<grid[r].count {
            if let object = grid[r][c] {
                print("|^ ", terminator: "      ") // placeholder for now
            } else {
                print("|  ", terminator: "      ")
            }
        }

        print("|")

        //filler
        for c in 0..<grid[r].count {
            if let object = grid[r][c] {
                print("|^ ", terminator: "      ") // placeholder for now
            } else {
                print("|  ", terminator: "      ")
            }
        }

        print("|\n" + String(repeating: "-", count: grid[r].count * 9 + 1))
    }
}
 
}