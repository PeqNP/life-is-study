// ⓒ Bithead LLC 2022. All rights reserved.

/**
 Lesson 02: Primitive Data Types

 This lesson is designed to teach you about primitive types. Primitive data types are the "basic" built-in data types that Swift supports.

 Said another way, each data type represents a different type of data. Sometimes you want to hold on to a number. Other times a name of a customer. Other times you may want to know if something is "on" or "off."
 */

import XCTest

final class Lesson_02_PrimitiveDataTypesTests: XCTestCase {

    func testNumeric() throws {
        /**
         There are three main built-in primitive numeric types.
           - `Integer` - Any whole number
           - `Float` - A decimal value with less precision
           - `Double` - A decimal value with more precision

         ---

         `Integer` Data Types

         An `Integer` is designed to contain a whole number. You can use an `Integer` for:
           - The age of a user
           - The number of items in a user's shopping bag
           - The number of users connected to your server

         Let's start adding items to our bag!

         Add the appropriate `numberOfPencils` to your bag to make the test pass.
         */
        let numberOfBooks = 3
        let numberOfPencils = 0
        let numberOfItemsInBag = numberOfBooks + numberOfPencils
        XCTAssertEqual(numberOfItemsInBag, 7)

        /**
         Decimal Data Types (`Float` & `Double`)

         If you recall, our description of `Float` and `Double` talked about "precision." What does "precision" mean? Simply, precision is the number of digits that can be stored after the decimal value.

         The precision for a `Float` data type is less than a `Double`. In other words, a "small"" decimal value may be stored in a `Float`. A "large" decimal value can be stored in a `Double`.

         Imagine the following equation using a `Float` value:
         ```
         let value: Float = Float(1) / 3
         print(value)
         // prints: 0.333333
         ```

         Now imagine the same equation using a `Double` value:
         ```
         let value: Double = Double(1) / 3
         print(value)
         // prints: 0.33333333333333
         ```

         As you can see, a `Double` can hold many more digits past the decimal point. This is because the "bag" that represents the `Double` is much larger than the "bag" that represents a `Float`. A `Float` could be considered a "hand bag", while a `Double` could be likened to a "duffle bag."

         This next test requires a bit of arithmetic. We want to know how much a single pie represents when we only have three pieces of pie.

         Change the value of `onePieceOfPie` to be `1` to make the test pass.
         */
        let numberOfPiecesInPie = Float(3)
        let onePieceOfPie = Float(2) / numberOfPiecesInPie
        XCTAssertEqual(onePieceOfPie, 0.3333, accuracy: 0.01)

        /**
         Great!

         `1` piece of pie represents `0.3333333` pieces of pie!

         Remember, when you want to represent a decimal value, use a `Float`!

         For most cases, we will use a `Float`. It's designed for fast operation and uses less memory than a `Double`. For graphics, which we will learn in the future, it will become very useful!

         Some other uses of `Float` are:
           - Represent the price of a product on your online store
           - Compute the percent off of a product. Imagine a product that is 33% off (`Float(10) * Float(0.33) = 3.33`). This tells you that the product is $3.33 less than $10.00 or $6.66.
           -

         It's important to note that the product of an equation, such as our $10.00 - $3.33, may produce a _rounded_ value. Again, `Float` can only hold so many digits past the decimal point. In these cases where the number exceeds the storage of a `Float`, a `Float` will round the last digit. If the last digit is >= 5, then it will round the last digit up. For example, the product of `10.00 - 3.33` _may_ be `6.67`. Not `6.66`.

         --

         Arithmetic with `Integer`s and `Float`s

         At times we want to perform arithmetic on `Integer`s and `Float`s. To do this, we must cast the `Integer` to a `Float` before we can perform a computation.
         */
        let intValue = 1
        let floatValue = Float(3)

        /**
         Uncomment out the two lines below. Notice the error that Xcode provides. It's trying to tell you that it can't divide an `Integer` with a `Float` value. To cast our `intValue` to a `Float`, all we have to do is wrap our `intValue` in a `Float` initializer.

         Change `intValue` to `Float(intValue)` and run the test.
         */
        //let result = intValue / floatValue
        //XCTAssertEqual(result, 0.33, accuracy: 0.01)

        /**
         Dividing `Integer`s

         At times we may divide whole numbers and wonder why we don't get the expected result. Remember, an `Integer` is a whole number. If we divide two `Integer`s, the result will be a whole number!

         Let's see this in action.
         */
        let numberOfPeas = 8
        let numberOfPods = 3
        let numberOfPeasInAPod = numberOfPeas / numberOfPods
        XCTAssertEqual(numberOfPeasInAPod, 2)

        /**
         But wait? Isn't `8 / 3 = 2.66~`?

         How can we get the right answer?

         Using what we learned so far, divide our two existing values, `numberOfPeas` and `numberOfPods`, to produce the correct value of `2.66~`.
         */
        let trueNumberOfPeasInAPod: Float = 0
        XCTAssertEqual(trueNumberOfPeasInAPod, 2.66, accuracy: 0.01)

        /**
         We will explore more `Integer` and `Float` arithmetic in future lessons. For now, keep an eye open for this. You may produce a bug you did not expect!
         */
    }

    func testStrings() throws {

    }

    func testBooleans() throws {

    }

    /**
     Closing

     It can sometimes be a challenge to know what data type best fits a given situation.

     TBD
     */
}
