# Java Basics

This document provides an overview of core Java programming concepts including variables, data types, and control flow structures.

---

## 1. Variables

A **variable** is a named location in memory used to store data. In Java, variables have these characteristics:

- You must declare a type when you create a variable, which helps with performance (memory management) and ensures type safety.
- You can declare a variable without assigning a value at first. For example:
  ```java
  int myInt; 
  myInt = 100;
  ```
- You can also declare and assign on the same line:
  ```java
  int myInt = 100;
  ```

### Naming Conventions
- Use **camelCase** for variable names (e.g., `myInteger`, `userName`).
- Avoid reserved keywords (e.g., `int`, `class`).
- Use descriptive names (avoid single letters like `x`, unless it’s for simple counters or coordinates).

---

## 2. Data Types

### 2.1 Primitive Data Types

1. **int**
    - Stores whole numbers from -2,147,483,648 to 2,147,483,647.
    - Example: `int myInt = 42;`

2. **long**
    - Stores larger integers (up to 2^63 - 1).
    - Example: `long myLong = 1234567890123L;`

3. **double**
    - Stores decimal numbers (floating point) with high precision.
    - Example: `double myDouble = 3.14159;`

4. **boolean**
    - Stores `true` or `false`.
    - Example: `boolean isRaining = true;`

5. **char**
    - Stores a single character (e.g., `'A'`, `'B'`, `'&'`).
    - Example: `char letter = 'A';`

### 2.2 Object (Reference) Types

1. **String**
    - A sequence of characters (e.g., "Hello World").
    - Example: `String greeting = "Hello!";`

2. **Wrapper Classes**
    - Classes like `Integer`, `Double`, `Boolean`, `Character` wrap the corresponding primitive types and offer more functionality.
    - Example: `Integer myIntegerObj = Integer.valueOf(42);`

3. **BigInteger**
    - Stores integers of arbitrary size, beyond the range of `int` or `long`.

---

## 3. Conditionals & Operators

### 3.1 If-Else Statements

When you want to run a block of code only under certain conditions, use an `if` statement:
```java
if (condition) {
    // runs if condition is true
} else if (anotherCondition) {
    // runs if anotherCondition is true
} else {
    // runs if no above conditions are true
}
```

### 3.2 Comparison Operators
- `==` Equal to
- `!=` Not equal to
- `>`  Greater than
- `<`  Less than
- `>=` Greater than or equal to
- `<=` Less than or equal to

These operators compare values and return a `boolean` (`true`/`false`).

### 3.3 Logical Operators
- `&&` (AND): True if **both** operands are true.
- `||` (OR): True if **at least one** operand is true.
- `!`  (NOT): Inverts a boolean value.

Example:
```java
int age = 45;
boolean canDrink = age > 21 && age < 100; // returns true
```

---

## 4. Switch Statements

A `switch` allows you to compare the same variable against multiple values:

```java
int day = 2;
switch(day) {
    case 1:
        System.out.println("Monday");
        break;
    case 2:
        System.out.println("Tuesday");
        break;
    // ...
    default:
        System.out.println("Invalid day");
}
```

Each `case` checks if `day` matches a certain value. The `break` statement ends the `switch` block once a match is found.

---

## 5. Ternary Operators

A ternary operator is a concise replacement for a simple `if-else`:

```java
String message = isRaining ? "Bring an umbrella." : "Have fun!";
System.out.println(message);
```
- **Condition:** `isRaining`
- **True outcome:** `"Bring an umbrella."`
- **False outcome:** `"Have fun!"`

---

## Conclusion

These fundamentals you’ve learned—variables, data types, and control flow—are crucial for writing clear, efficient, and maintainable Java programs. Continue practicing by creating small Java programs that use these concepts, and you will gain confidence in your coding ability.