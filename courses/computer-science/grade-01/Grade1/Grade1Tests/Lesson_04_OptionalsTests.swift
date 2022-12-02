// ⓒ Bithead LLC 2022. All rights reserved.

/**
 Lesson 04: Optionals

 A special type exists called, `nil`. `nil` represents the absence of a value.

 `nil` can help us determine if we have yet to set a value to a variable.

 If a variable can contain a `nil` value, the variable is referred to as an "optional" value. It is used exactly as you would imagine. The value is optional! It can either exist or not exist.
 */

import XCTest

final class Lesson_04_OptionalsTests: XCTestCase {

    func testOptionals() throws {
        /**
         Optionals

         Any variable that may contain a `nil` value is called an optional.

         To create an optional, we simply add a question mark `?` at the end of the data type.

         Below we create an optional `String` value.

         Simply, we may or may not have a value in the `optionalName` variable.
         */
        var optionalName: String?

        /**
         We can set a value to `optionalName` at any time.
         */
        optionalName = "Sally"

        /**
         Let's `print` the value of `optionalName`.

         What value does it `print` in the Debug area?
         */
        print("optionalName:", optionalName ?? "Bob")

        /**
         There's the `?? ""` command again!

         Please go to the next test to learn what this operator is.
         */
    }

    func testNilCoalesceOperator() throws {
        /**
         The nil-coalesce operator

         The double question marks, `??`, are called the nil-coalescing operator. It's a built-in Swift convenience function.

         The `print` function requires a non-optional `String` value. In other words, `print` _requires_ that we pass it a `String` value. In order to send a non-optional `String` value, we must "coalesce" the optional value with a non-optional value.

         Coalesce means to join together, combine, or merge.

         In practice, what this means is that we will use the value from our optional variable first, _or_ the non-optional value if no value has been assigned to our variable.

         In the previous test, if `optionalName` contained a `nil` value, the string value `"Bob"` would be used instead.

         Let's see an example where the nil-coelescing operator provides the non-optional value when our variable contains a `nil` value.
         */
        var teacherName: String? // No value has been assigned to `teacherName`
        print("teacherName:", teacherName ?? "Eric")

        /**
         What value does it `print` in the Debug area?
         */
    }

    func testUnwrappingOptionals() throws {
        /**
         Unwrapping Optionals

         When we want to conditionally perform a different behavior when a value exists in a variable, we can use the `if let` operator.
         */
        var teacherName: String?

        if let name = teacherName {
            print("The teacher's initial name is \(name).")
        }

        teacherName = "Greg"

        if let name = teacherName {
            print("The teacher's next name is \(name).")
        }

        /**
         What is printed in the Debug area?

         If `teacherName` is assigned a value, the `if let` operator will assign it to a new non-optional `name` variable. We can then use the `name` variable in our conditional block.

         ---

         `if let` will not execute the conditional block if `teacherName` is `nil`.

         Once a value has been set to `teacherName`, the conditional block will execute!

         And, yes, `if let` works for all optional data types!
         */
    }

    func testUnwrapOptionals() throws {
        /**
         Let's test what we learned so far!

         Please assign variables, write your own `if let` statements, etc. to make all tests pass.
         */
    }

    /**
     Summary:
       - An optional is any variable that may contain a `nil` value.
       - Optional variables are denoted with a question mark, `?`, at the end of its data type.
       - The double question marks, `??`, are called the nil-coalescing operator. It's a built-in Swift convenience function.
       - We can unwrap optional values using `if let`
     */
}
