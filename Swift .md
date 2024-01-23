**Variable:** we can declare a constant or variable as following:

***Constant:*** it is start with the keyword ***let***

***Syntax:***  
```md
let Variable_name
```
***Example:***
```md
let days_In_Week = 7
```

***Variable:*** it is start with the keyword ***var***

***Syntax:***
```md
var Variable_name
```
***Example:***
```md
var  days_in_Month=30
```
***Type annotation:*** we can declare a constant or variable, but we give a hint of what variable or constant type of storing the values (string, int, double…etc).

***Syntax***:
```md
var Variable_name: Type of the Variable
```
```
***Example:***
```md
var days_in_week : Int = 7
```
```
***Type inference:*** We declare constant or variables based on its initial value and the compiler will figure it out.

***Syntax:***
```md
let variable_name = value
```
```
***Example:***
```md
let Day_in_week=7
```
```
***Syntax:***
```md
var Variable_name=value
```
```
***Example:***
```md
var  days_in_Month=30
```
```
**Data Types in Swift**:
common data types include whole numbers ***(Integers)***, numbers with ***decimals (Floats and Doubles)***, true/false values ***(Booleans),*** sequences of characters ***(Strings)***, and collections like Arrays and Dictionaries.


***Numeric Values***

***Int:*** A signed integer value type.

***Syntax:***  var integerValue: Int = number      ***Example:**  var age: Int = 25*

***Double:*** A double-precision, floating-point value type.

***Syntax:***  var doubleValue: Double = fractional\_number    ***Example:*** var pi: Double = 3.14159

***Bool:*** A Boolean type representing true or false values. Used for logical conditions and decision-making in your code.

***Syntax:***  var booleanValue: Bool = true\_false\_value    ***Example:*** var isSwiftFun: Bool = true

***String:*** A text value type that represents a series of characters. Used for storing and manipulating textual data in Swift programs.

***Syntax:*** var stringValue: String = "String here"  ***Example:*** var greeting: String = "Welcome"


Discuss the importance of choosing the right data type for variables.

selecting the appropriate data type is crucial for ensuring code accuracy, readability, and the avoidance of subtle errors.

**Operators in Swift:**

**Assignment Operator: Understand the use of = for assigning values.**

The assignment operator (=) doesn’t return a value, therefore, it is initializes or updates the value. Example of initializes is (a=10), and example of update is (a=10, b=a).

**Arithmetic Operators**: **Explore operators like +,- ,\* , / for basic arithmetic operations.**

**Addition:** var** sum = 5 + 3 // sum is 8.

**Subtraction:** var subtract = 10 - 4 // subtract is 6.

**Multiplication:** var multi = 2 \* 3 // multiplication is 6

**Division:** var Division = 8 / 2 // Division is 4

**Remainder Operator: Learn how % is used to find the remainder.**

var remainder = 9 % 4 // remainder is 1

**Compound Assignment Operators**
Swift provides other compound assignment operators for subtraction (-=), multiplication (\*=), division (/=), and remainder (%=). These operators follow the same pattern, combining the specified arithmetic operation with assignment.

***Example of Addition assignment operator* (+=):**  
**
` `var a = 1** 

a += 2  // a= 1+2 is now equal to 3


**Comparison Operators:** 

- Equal to (a == b)
- Not equal to (a != b)
- Greater than (a > b)
- Less than (a < b)
- Greater than or equal to (a >= b)
- Less than or equal to (a <= b)

**Identity Operators:**

- Identity Equality (a===b)
- Identity Inequality (a!==b)

**Ternary Conditional Operator: Understand the shorthand for if-else statements using ?** 

**It evaluates the "question" and returns "answer1\_if\_true" if the question is true, otherwise, it returns "answer2\_if\_false."**

**Syntax:** question ? answer1\_if\_true : answer2\_if\_false

**Collection Types:**

Manage multiple values under a single container. The containers are **Array, Set, and Dictionary.**

- **Array:** Order** collection of elements that has same type.** 
  Starts and ends with brackets, with each item in the array separated by a comma.

**Syntax:** var Array\_name = [element 1, element 2, element 3, element 4]
**Use cases: 
Student GPA and First Name.**
use an array to store the GPAs, allowing for duplicate entries if the student has taken the same course more than once.

- **Set:** An unordered collection of unique elements of the same type. Each element in a set must be unique; duplicates are not allowed

Starts and ends with curly braces ({}), with each element in the set separated by a comma.
**Syntax:** var uniqueNumbers = Set([1, 2, 3, 4, 5])

**Use cases: 
Student Attendees:** For tracking attendance in a class, a set could be utilized to maintain a list of unique student IDs or names.
**Unique Usernames:** A set can be used to store unique usernames in a system, ensuring that each username is distinct otherwise it give an error that username is used.

- **Dictionary:**  An unordered collection of key-value pairs where each key must be unique.

  `  `**Syntax:** Starts and ends with curly braces (**{}**), with each key-value pair separated by a comma and if the value not declared then default value will be 0.
  var studentGPAs = ["Math": 3.5, "Programming": 4.0, "English": 3.2]
  `  `**Use cases:**

`  `**Track Attendance with Student IDs:** In a class attendance system, use a dictionary to store unique student IDs or names, ensuring each entry represents a distinct student.
var attendanceDictionary = ["123": "Kahlid", "456": "Sara", "789": "Nora"]

**Understand how to choose the right collection type for different scenarios.**
illustrate the versatility of Swift's collection types in handling various scenarios. Arrays maintain order, sets ensure uniqueness, and dictionaries associate values with unique keys.

**Control Flow in Swift**:
If, else, and switch statements are control flow structures used for decision-making processes.

**1. if Statement:**

The **if** statement is a fundamental control flow structure that allows you to execute a block of code conditionally. It evaluates a condition and executes the block of code inside the curly braces only if the condition is true.

**Syntax:**

if condition { // Code to execute if the condition is true

` `} 

else { // Code to execute if the condition is false

` `} 

**Example:**

var temperature = 25 if temperature > 20 

{

` `print("It's a warm day!") 

}

` `else { print("It's a bit chilly.") 

}
**2. switch Statement:**

Compare a value against multiple possible matching patterns and execute different code blocks based on the first matching pattern.

**Syntax:**

switch value { case pattern1: // Code to execute if value matches pattern1 case pattern2: // Code to execute if value matches pattern2 // ... additional cases ... default: // Code to execute if none of the patterns match } 

**Example:**

let day = "Monday" switch day { case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday": print("It's a weekday.") case "Saturday", "Sunday": print("It's the weekend!") default: print("Invalid day.") }

**3. else if Statement:**

**else if** to check multiple conditions in a more structured way. It allows you to provide additional conditions to check if the initial **if** condition is false.

**Example:**

swiftCopy code

let score = 85 if score >= 90 { print("A") } else if score >= 80 { print("B") } else if score >= 70 { print("C") } else { print("Fail") }

**loops**

**1. for-in Loop:**

The **for-in** loop is used to iterate over sequences such as arrays, ranges, or other collections. It simplifies the process of iterating through each element without explicitly specifying the range or conditions.

**Syntax:**

swiftCopy code

for item in collection { // Code to repeat for each item in the collection } 

**Example:**

swiftCopy code

let numbers = [1, 2, 3, 4, 5] for number in numbers { print(number) } 

**2. while Loop:**

The **while** loop is used when you want to repeat a block of code as long as a certain condition is true. The condition is checked before each iteration, and if it becomes false, the loop exits.

**Syntax:**

swiftCopy code

while condition { // Code to repeat as long as the condition is true } 

**Example:**

swiftCopy code

var counter = 0 while counter < 5 { print("Counter is \(counter)") counter += 1 } 

**3. repeat-while Loop:**

The **repeat-while** loop is similar to the **while** loop, but it checks the condition after the block of code is executed. This ensures that the code inside the loop is executed at least once.

**Syntax:**

swiftCopy code

repeat { // Code to repeat } while condition 

**Example:**

var attempt = 0 repeat { print("Attempting... \(attempt)") attempt += 1 } while attempt < 3 

**Loop Control Statements:**

a. **break** Statement:

The **break** statement is used to exit a loop prematurely. It is often used when a certain condition is met, and you want to stop the loop.

**Example:**

swiftCopy code

for number in 1...10 { if number == 5 { print("Reached the middle, stopping.") break } print(number) } 

b. **continue** Statement:

The **continue** statement is used to skip the rest of the code inside the loop and move to the next iteration.

**Example:**

swiftCopy code

for number in 1...10 { if number % 2 == 0 { // Skip even numbers continue } print(number) }

**Declaring Functions:**

The basic syntax for declaring a function in Swift is as follows:

swiftCopy code

func functionName(parameters: ParameterType) -> ReturnType { // Function body return someValue } 

- **Function Name:** A descriptive name for the function, following Swift's naming conventions.
- **Parameters:** Input values that the function can accept. These are enclosed in parentheses and separated by commas.
- **Return Type:** The data type of the value the function returns. If a function doesn't return a value, use **Void** or omit the return type.

**Example of a Simple Function:**

swiftCopy code

func greet(name: String) -> String { return "Hello, \(name)!" } let greeting = greet(name: "John") print(greeting) 

**Parameters:**

Functions can have multiple parameters, each with its own data type. You can also provide default values for parameters, making them optional.

swiftCopy code

func addNumbers(a: Int, b: Int = 0) -> Int { return a + b } let result = addNumbers(a: 5) // Result is 5 

**Return Types:**

Functions in Swift can return values using the **return** keyword. If a function doesn't return a value, you can omit the return type or use **Void**.

swiftCopy code

func noReturnValue() { // Function with no return value } func multiply(a: Int, b: Int) -> Int { return a \* b } 

**External and Internal Parameter Names:**

You can specify both external and internal parameter names for a function. External parameter names are used when calling the function, while internal names are used within the function body.

swiftCopy code

func calculateSum(of a: Int, and b: Int) -> Int { return a + b } let sum = calculateSum(of: 3, and: 4) // External names are used when calling 

**Variadic Parameters:**

Functions can accept a variable number of parameters using variadic parameters. These are denoted by appending **...** to the parameter's type.

swiftCopy code

func average(\_ numbers: Double...) -> Double { let total = numbers.reduce(0.0, +) return total / Double(numbers.count) } let avg = average(1.0, 2.0, 3.0, 4.0) // Average is 2.5 

**In-Out Parameters:**

You can modify the value of a parameter outside the function by using the **inout** keyword.

swiftCopy code

func increment(\_ value: inout Int) { value += 1 } var number = 5 increment(&number) // Now, 'number' is 6 

**Nested Functions:**

Swift allows the definition of functions inside other functions. These nested functions are only accessible within the outer function.

swiftCopy code

func outerFunction() -> String { func innerFunction() { // Code for the inner function } // Code for the outer function return "Result" } 

**Function Overloading:**

Swift supports function overloading, which allows you to define multiple functions with the same name but different parameter types or numbers of parameters.

swiftCopy code

func greet(person: String) -> String { return "Hello, \(person)!" } func greet(person: String, from location: String) -> String { return "Hello, \(person)! Welcome to \(location)." }













