```md
// ParkingSpace Struct
struct ParkingSpace {
    var number: Int
    var isOccupied: Bool
}

// Driver Struct
struct Driver {
    var name: String
    var licenseNumber: String
}

// ParkingLot Class
class ParkingLot {
    var spaces: [ParkingSpace]
    var drivers: [Driver]
    
    init(spaces: [ParkingSpace], drivers: [Driver]) {
        self.spaces = spaces
        self.drivers = drivers
    }
    
    func viewAvailableSpaces() {
        let availableSpaces = spaces.filter { !$0.isOccupied }
        print("Available parking spaces:")
        availableSpaces.forEach { print("Space \($0.number)") }
    }
    
    func selectSpace(driver: Driver, spaceNumber: Int) {
        if let index = spaces.firstIndex(where: { $0.number == spaceNumber && !$0.isOccupied }) {
            spaces[index].isOccupied = true
            print("\(driver.name) has selected space \(spaceNumber)")
        } else {
            print("Space \(spaceNumber) is not available or does not exist.")
        }
    }
    
    func bookTicket(driver: Driver) {
        viewAvailableSpaces()
        print("Enter the number of the space you want to book:")
        if let spaceNumber = Int(readLine() ?? ""), spaceNumber > 0 && spaceNumber <= spaces.count {
            selectSpace(driver: driver, spaceNumber: spaceNumber)
        } else {
            print("Invalid space number.")
        }
    }
    
    func viewBookedTickets() {
        let bookedSpaces = spaces.filter { $0.isOccupied }
        print("Booked parking spaces:")
        bookedSpaces.forEach { print("Space \($0.number)") }
    }
    
    func cancelTicket(driver: Driver) {
        viewBookedTickets()
        print("Enter the number of the space you want to cancel:")
        if let spaceNumber = Int(readLine() ?? ""), spaceNumber > 0 && spaceNumber <= spaces.count {
            if let index = spaces.firstIndex(where: { $0.number == spaceNumber && $0.isOccupied }) {
                spaces[index].isOccupied = false
                print("\(driver.name) has canceled space \(spaceNumber)")
            } else {
                print("Space \(spaceNumber) is not booked.")
            }
        } else {
            print("Invalid space number.")
        }
    }
}

// Sample Data
let parkingSpaces = (1...20).map { ParkingSpace(number: $0, isOccupied: false) }
let drivers = [Driver(name: "John", licenseNumber: "12345"), Driver(name: "Alice", licenseNumber: "67890")]

// Initialize Parking Lot
let parkingLot = ParkingLot(spaces: parkingSpaces, drivers: drivers)

// Console Interface
func displayMenu() {
    print("Welcome to Parking Lot Management System!\n")
    print("1. View Available Spaces")
    print("2. Book Ticket")
    print("3. View Booked Tickets")
    print("4. Cancel Ticket")
    print("5. Exit\n")
    print("Choose an option:")
}

func main() {
    var shouldExit = false
    
    while !shouldExit {
        displayMenu()
        
        if let choice = readLine(), let option = Int(choice) {
            switch option {
            case 1:
                parkingLot.viewAvailableSpaces()
            case 2:
                if let driver = drivers.first {
                    parkingLot.bookTicket(driver: driver)
                } else {
                    print("No drivers registered.")
                }
            case 3:
                parkingLot.viewBookedTickets()
            case 4:
                if let driver = drivers.first {
                    parkingLot.cancelTicket(driver: driver)
                } else {
                    print("No drivers registered.")
                }
            case 5:
                shouldExit = true
                print("Exiting...")
            default:
                print("Invalid option.")
            }
        } else {
            print("Invalid input. Please enter a number.")
        }
        print("\n")
    }
}

// Run the Application
main()
```
