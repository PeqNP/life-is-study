// ⓒ Bithead LLC 2022. All rights reserved.

/**
 Lesson 01: Variables

 Variables are how we "keep track of", "hold on" or "contain" information.

 One way to think of variables is as a "bag." We use a "bag" to "contain" our school books, our lunches, etc.

 As our program operates we may change what is in the "bag." Sometimes it may be homework, books, gym gear, etc.

 After you are finished with all tests, please continue to the next lesson.
 */

import XCTest

final class Lesson_01_VariableTests: XCTestCase {

    func testVariableAssignment() throws {
        /**
         Please feel free to press the diamond ▷ button next to `func testVariableAssignment` to see these tests fail. You may also run all tests by tapping the diamond ▷ button next to `final class Lesson_01_VariableTests`.

         Do you see how the diamond changes to ✕? This means that one of the tests failed.

         Xcode will also highlight the specific test(s) that failed. Try it out!

         ---

         Here we will learn how to assign a value to a variable. "Assigning" a value to a "variable" is similar to "containing your homework" in your "bag."

         Let's assign the value of `4` to our `numberOfBooks` variable in order to make this test pass.
         */
        let numberOfBooks: Int = 0
        XCTAssertEqual(numberOfBooks, 4)

        /**
         Great job!

         We assigned an integer value to `numberOfBooks`. Computers can process all types of values. We refer to these value types as "data types." Data types include integer, real, character or string, and boolean.

         Most programming languages have what are called "primitive data types." These would include the data types listed previously; integer, real, string, and boolean. Imagine a caveman programmer. He would use primitive types! Let's not get ahead of ourselves. We'll talk more about data types later!

         Swift is a strongly-typed language, which means we must identify the data type our variable will contain. Luckily for us, Swift can also "infer" the type based on the value!

         Let's try an example where Swift will infer the data type based on the value we assign it.

         Let's assign a value of `2` to `numberOfPencils`.
         */
        let numberOfPencils = 0
        XCTAssertEqual(numberOfBooks, 2)

        /**
         Wonderful!

         It seems like magic that Swift can "guess" what the right type of data type is. That's cool!

         Now it's time to learn about different variable types.

         There are two types of variables:
           - Mutable (meaning they change over time)
           - Immutable (their value can be set only once)

         Our previous tests used immutable variables. Comment out the following line of code. What does Swift tell you?
         */
        //numberOfPencils = 3

        /**
         Swift will give you an error message with something like `numberOfPencils` is a `let` constant. All that's saying is that you can't assign another value to `numberOfPencils`.

         If we want to change a variable's value over time we need to use the keyword `var`.
         */

        var numberOfErasers = 0 // Don't change this value!
        XCTAssertEqual(numberOfErasers, 0)

        // Assign the value of `3` to the `numberOfErasers`.
        numberOfErasers = 1
        XCTAssertEqual(numberOfErasers, 3)

        /**
         Awesome! Now we now how to change a variable's value over time.
         */
    }

    func testPrintVariableValue() {
        /**
         Programming is all about "seeing" or "inspecting" a behavior. It will be very common to "see", or "inspect", what is happening in our program. We can do this by `print`ing out our variables.

         Before running this test, imagine what will be printed to the Debug area.
         */
        var myName = "Jesse"
        print("My name is \(myName)")

        /**
         Now let's change the `myName` variable to _your_ name and see what happens!

         Again, before running this test, imagine what will be printed to the Debug area.
         */
        myName = ""
        print("Hello, \(myName)")

        /**
         The way we "insert" `myName` into the value above seems very strange, no? What exactly is happening? Before we can answer that question we need to know several new concepts:
           - What is a function?
           - What is a function parameter?
           - What is a string?
           - What is string interpolation?

         We will get to all of these questions soon enough. What's most important right now is that you "see" the value of your variable change over time.
         */
    }
}
