// ⓒ Bithead LLC 2022. All rights reserved.

/**
 Lesson 03: Conditional Statements

 Conditional statements allow us to change behavior depending on the state of our program.
 */

import XCTest

final class Lesson_03_ConditionalStatementsTests: XCTestCase {

    func testIfStatement() throws {
        /**
         The `if` statement

         `if` statements evaluate "expressions." An expression is determined by using operators that produce a `Bool` value. We've already talked about these operators in our Data Types: Boolean section. There are Comparison Operators and Logical Operators.

         Here are some examples of an expression:
           - `1 < 2`
           - `5 == 5`
           - `true && false`
           - `true || true`

         When an expression evaluates to `true` the code inside the `if` block is executed.

         Change the `housePrice` to make these test pass.
         */

        let housePrice = 10.00
        let shoePrice = 99.00

        if housePrice > shoePrice {
            print("A house is more expensive than a pair of shoes.")
        }

        if housePrice < shoePrice {
            XCTAssertTrue(false, "A house is NOT less expensive than a pair of shoes.")
        }
    }

    func testElseStatement() throws {
        /**
         The `else` statement

         The `else` statement is combined with an existing `if` statement.

         The `else` statement allows us to peform a different behavior when the initial expression is `false`.

         Update the `housePrice` to make the test pass.
         */

        let housePrice = 99.00
        let bikePrice = 1_000.00

        if housePrice < bikePrice {
            XCTAssertTrue(false, "A house is NOT less expensive than a bike.")
        }
        else {
            print("The house is less expensive than a bike")
        }

        /**
         Now we have a way to change the behavior of our program if the expression is `true` or `false`.

         ---

         NOTE: You may have noticed that the `bikePrice` is defined as `1_000.00`. What is with the underscore (_) between the `1` and `0`s? Swift gives us a way to format numeric values that represent how we format numbers in our day-to-day. For example, we represent one thousand as "1,000" in our day-to-day. However, we can't use "1,000" in a computer program as the comma (,) is not understood as a valid command. To get around this, Swift allows us to substitute the comma (,) with an underscore (_). This formatting is helpful when our numbers are large!

         For example, this is a valid number, but is not easy to read.
         `10000000`

         We can add the undescore (_) to the number above, and now it easily reads as 10 million.
         `10_000_000`

         Back to `if` statements!

         ---

         Please complete the remainder tests.
         */

        // TODO: TBD
    }

    func testElseIfStatement() throws {
        /**
         The `else if` statement

         The `else if` statement allows us to perform more than two behaviors.

         TODO: 
         */
    }
}
