---
published: false
layout: post
---
## good software

[MITx: 6.005.1x Software Construction in Java](https://courses.edx.org/courses/course-v1:MITx+6.005.1x+3T2016/courseware/Readings_Videos/01-Static-Checking/). 


 two topics:

static typing
the big three properties of good software
In this first reading, we’re going to talk about an important feature of Java that makes it different from other programming languages you may have learned, like Python and Javascript. That feature is called static typing.

From there, we’ll introduce the three big goals of this course, because this course isn’t really a Java programming course. We want to learn how to write good code in any language, and the three big ideas are about what we mean by good code. It should be:

safe from bugs, or in other words correct;
easy to understand for other programmers; and
ready to be changed in the future.

#### TYPES

The most important semantic difference between the Python and Java code above is the declaration of the variable n, which specifies its type: int.

// Java
int n = 3;
# Python
n = 3
A type is a set of values, along with operations that can be performed on those values.

Java has several primitive types, among them:

int (for integers like 5 and -200, but limited to the range ± 2^31, or roughly ± 2 billion)
long (for larger integers up to ± 2^63)
boolean (for true or false)
double (for floating-point numbers, which represent a subset of the real numbers)
char (for single characters like 'A' and '$')
Java also has object types, for example:

String represents a sequence of characters, like a Python string.
BigInteger represents an integer of arbitrary size, so it acts like a Python integer.
By Java convention, primitive types are lowercase, while object types start with a capital letter.

Operations are functions that take input values and produce output values. (An operation can sometimes change the input values too, which is called mutation -- we'll talk about it later in this reading.) The syntax for operations varies, but we still think of them as functions no matter how they're written. Here are three different syntaxes for an operation in Python or Java:

As an infix, prefix, or postfix operator. For example, a + b invokes the operation + : int × int → int.
As a method of an object. For example, bigint1.add(bigint2) calls the operation add: BigInteger × BigInteger → BigInteger.
As a function. For example, Math.sin(theta) calls the operation sin: double → double. Here, Math is not an object. It's the class that contains the sin function.
Contrast Java's str.length() with Python's len(str). It's the same operation in both languages — a function that takes a string and returns its length — but it just uses different syntax.

Some operations are overloaded in the sense that the same operation name is used for different types. The arithmetic operators +, -, *, / are heavily overloaded for the numeric primitive types in Java. Methods can also be overloaded. Most programming languages have some degree of overloading.

#### STATIC TYPING

So a key difference between the Python and Java code is that the variable n has a type declaration saying that it's an int.

// Java
int n = 3;
# Python
n = 3
Java is a statically-typed language. The types of all variables have to be known at compile time (before the program runs), and the compiler can therefore deduce the types of all expressions as well. If a and b are declared as ints, then the compiler concludes that a+b is also an int. The Eclipse environment does this while you're writing the code, in fact, so you find out about many errors while you're still typing.

In dynamically-typed languages like Python, this kind of checking is deferred until runtime (while the program is running).

Static typing is a particular kind of static checking, which means checking for bugs at compile time. Bugs are the bane of programming. Many of the ideas in this course are aimed at eliminating bugs from your code, and static checking is the first idea that we've seen for this. Static typing prevents a large class of bugs from infecting your program: to be precise, bugs caused by applying an operation to the wrong types of arguments. If you write a broken line of code like:

   "5" * "6"
that tries to multiply two strings, then static typing will catch this error while you're still programming, rather than waiting until the line is reached during execution.

##### STATIC CHECKING, DYNAMIC CHECKING, NO CHECKING

It's useful to think about three kinds of automatic checking that a language can provide:

Static checking: the bug is found automatically before the program even runs.
Dynamic checking: the bug is found automatically when the code is executed.
No checking: the language doesn't help you find the error at all. You have to watch for it yourself, or end up with wrong answers.
Needless to say, catching a bug statically is better than catching it dynamically, and catching it dynamically is better than not catching it at all.

Here are some rules of thumb for what errors you can expect to be caught at each of these times.

###### Static checking can catch:

syntax errors, like extra punctuation or spurious words. Even dynamically-typed languages like Python do this kind of static checking. If you have an indentation error in your Python program, you'll find out before the program starts running.
wrong names, like Math.sine(2). (The right name is sin.)
wrong number of arguments, like Math.sin(30, 20).
wrong argument types, like Math.sin("30").
wrong return types, like return "30"; from a function that's declared to return an int.
###### Dynamic checking can catch:

illegal argument values. For example, the integer expression x/y is only erroneous when y is actually zero; otherwise it works. So in this expression, divide-by-zero is not a static error, but a dynamic error.
unrepresentable return values, i.e., when the specific return value can't be represented in the type.
out-of-range indexes, e.g., using a negative or too-large index on a string.
calling a method on a null object reference (null is like Python None).
Static checking tends to be about types, errors that are independent of the specific value that a variable has. A type is a set of values. Static typing guarantees that a variable will have some value from that set, but we don't know until runtime exactly which value it has. So if the error would be caused only by certain values, like divide-by-zero or index-out-of-range then the compiler won't raise a static error about it.

Dynamic checking, by contrast, tends to be about errors caused by specific values.

###### SURPRISE: PRIMITIVE TYPES ARE NOT TRUE NUMBERS

One trap in Java — and many other programming languages — is that its primitive numeric types have corner cases that do not behave like the integers and real numbers we're used to. As a result, some errors that really should be dynamically checked are not checked at all. Here are the traps:

Integer division. 5/2 does not return a fraction, it returns a truncated integer. So this is an example of where what we might have hoped would be a dynamic error (because a fraction isn't representable as an integer) frequently produces the wrong answer instead.

Integer overflow. The int and long types are actually finite sets of integers, with maximum and minimum values. What happens when you do a computation whose answer is too positive or too negative to fit in that finite range? The computation quietly overflows (wraps around), and returns an integer from somewhere in the legal range but not the right answer.

Special values in floating-point types. Floating-point types like double types have several special values that aren't real numbers: NaN (which stands for “Not a Number”), POSITIVE_INFINITY, and NEGATIVE_INFINITY. So when you apply certain operations to a double that you'd expect to produce dynamic errors, like dividing by zero or taking the square root of a negative number, you will get one of these special values instead. If you keep computing with it, you'll end up with a bad final answer.
























