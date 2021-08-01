# Module 2
Introduction to Dart
Dart is an open-source general-purpose programming language. It is originally developed by Google. Dart is an object-oriented language with C-style syntax. 

The simplest "Hello World" program gives the idea of the basic syntax of the programming language. It is the way of testing the system and working environment. we will give the basic idea of Dart's syntax. There are several ways to run the first program, which is given below:
o	Using Command Line
o	Running on Browser
o	Using IDE

Try Running on Browser
The following code shows a simple Dart program –
 

This sample program, prints Hello World to the console.

Now, we shall look into the program and analyse the code.

Following is our dart program.

void main() {
  print("Hello, World!");
}

•	Every Dart application has a main function main().
•	void represents that the function returns nothing.
•	Empty parenthesis after main () represents that currently our main function does not take any arguments.
•	The body of main() function is enclosed in curly braces  { } .
print() is a high level Dart function that prints to console.


Data types

Like other language (C, C++, Java), whenever a variable is created, each variable has an associated data type.

Data Type	Keyword	Description
Number	int, double, num	Numbers in Dart are used to represent numeric literals
Strings	String	Strings represent a sequence of characters
Booleans	bool	It represents Boolean values true and false
Lists	List	It is an ordered group of objects
Maps	Map	It represents a set of values as key-value pairs

Variables
A variable is “a named space in the memory” that stores values. In other words, it acts a container for values in a program. Variable names are called identifiers. 
Syntax:
datatype variable;

Example:
•	var name;
•	String name;
•	int num;

Create a variable
var a;

As no value is assigned to the variable, and we did not mention the type explicitly, the type of variable would be Null and the value stored would be null.

Assign value to variable 
var a = ”Hello World”;

Explicit Declaration 
String a = “Hello World”;

Re-assign Variable with value of Different Datatype
Using dynamic keyword, we can re-assign a variable with different datatype.
void main() {
dynamic a = “Hello World”;
a = 10;
}

Control Flow Statement

The control statements or flow of control statements are used to control the flow of Dart program. By using the control flow statements, a program can be altered, redirected, or repeated based on the application logic.

Control flow statement can be categorized mainly in three following ways.
o	Decision-making statements
•	If Statement

Syntax:
if(condition) {
	//statement(s)
}

•	If else Statement
Syntax:
if(condition) {
	//statement(s)
}
else {
	//statement(s)
} 
•	If else if Statement 

Syntax:

if(condition1) {
	//statement(s)
}
else if(condition2) {
	//statement(s)
}
else if(condition3) {
	//statement(s)
}
.
.
.
else {
	//statement(s)
} 

•	Switch Case Statement

Syntax:

switch(expression) {
case value1: {
	//statement(s)
}
	break;
case value2: {
	//statement(s)
}
	break;
default: {
	//statement(s)
	}
	break;
}
o	Looping statements
•	for loop

Syntax:

for(Initialization; Condition; incr/decr) {
	//loop body
}

•	for ..in loop

Syntax:

for(var in expression) {
	//loop body
}

•	while loop

•	Syntax:

while(condition) {
	//loop body
}

•	do while loop

Syntax:

do {
	//loop body
}while(condition);

o	Jump statements
•	Break Statement

Syntax:

break;

•	Continue Statement
Syntax:
continue;

Function
 It is used to break the large code into smaller modules and reuse it when needed. Functions make the program more readable and easy to debug.
Suppose, we write a simple calculator program where we need to perform operations number of times when the user enters the values. We can create different functions for each calculator operator. By using the functions, we don't need to write code for adding, subtracting, multiplying, and divide again and again. We can use the functions multiple times by calling.

Defining a Function
Syntax:
return_type func_name (parameter_list):  
{  
//statement(s)  
  return value;  
}  
Let's understand the general syntax of the defining function.
o	return_type - It can be any data type such as void, integer, float, etc. The return type must be matched with the returned value of the function.
o	func_name - It should be an appropriate and valid identifier.
o	parameter_list - It denotes the list of the parameters, which is necessary when we called a function.
o	return value - A function returns a value after complete its execution.

Calling a Function
Syntax:
fun_name(<argument_list>);  
or  
variable = function_name(argument);  

Example
void main() {  
print("Example of add two number using the function");    
// Creating a Function    
int sum(int a, int b){  
 // function Body  
 int result;  
 result = a+b;  
 return result;  
}  
// We are calling a function and storing a result in variable c  
var c = sum(30,20);  
print("The sum of two numbers is: ${c}");  
}  
Basically there are four types of functions in Dart. These are as follows:
•	No arguments and no return type
•	With arguments and no return type
•	No arguments and with return type
•	With arguments and with return type

Function with no arguments and no return type
Syntax:
Void function_name() {
	//statement(s)
}
Function with arguments and no return type
Syntax:

function_name(args1, args2, …………argsN) {
	//statement(s)
}
Function with no arguments and with return type
Syntax:
Return_type function_name() {
	//statement(s)
	return value;
}
Function with arguments and with return type
Syntax:
Return_type function_name(args1, args2, …………argsN) {
	//statement(s)
	return value;
}

COMMENTS IN DART
Comments are non-executable lines of code, and usually comments gives us explanation about the variable, method, class or any statement of the source code.
In Dart, there are 3 types of comments.
1.	DO format comments ->Single Line comment (//)
This can be used to comments-out everything until a line break.
Eg:- 	
//This is single line comment
2.	Block Comments ->Multi Line Comment (/* ….. */)
If you want to comment multiple lines then you can do it using /* and */, everything in between from /* to */ is ignored by the compiler. It is useful for commenting out a section of code, and cannot be nested within other multi-line comments. 
Eg:-
/* 
This  
is 
multi line  
comment 
*/
3. Doc Comments (///)
This is a special type of comment mainly used to generate documentation or reference for a project/software package.
Using /// on consecutive lines has the same effect as a multi-line doc comment. The Dart compiler ignores all text inside a documentation comment except it is enclosed in brackets. The brackets are used to refer classes, methods, fields, top-level variables, functions, and parameters. It is similar to multi-line comments but used to document dart code (classes, methods, expressions).
Eg:-
/// This  
/// is  
/// documentation  
/// comment 

IMPORT
Importing makes the components in a library available to the caller code. The import keyword is used to achieve the same. A dart file can have multiple import statements.
Built in Dart library URIs use the dart: scheme to refer to a library. Other libraries can use a file system path or the package: scheme to specify its URI. Libraries provided by a package manager such as the pub tool uses the package: scheme.
Eg:-
The syntax for importing a library in Dart is given below −
import 'URI'
Consider the following code snippet −
import 'dart:io' 
import 'package:lib1/libfile.dart' 
If you want to use only part of a library, you can selectively import the library. The syntax for the same is given below −
import 'package: lib1/lib1.dart' show foo, bar;  
// Import only foo and bar. 

import 'package: mylib/mylib.dart' hide foo;  
// Import all names except foo

DO place “dart:” imports before other imports.
DO place “package:” imports before relative imports.
DO specify exports in a separate section after all imports.
DO sort sections alphabetically.

CLASSES
Dart classes are the blueprint of the object, also called object constructors. A class can contain fields, functions, constructors, etc. It is a wrapper that encapsulates the data and functions together; that can be accessed by creating an object. A class can refer to as user-define data type which defines characteristics by its all objects.
Dart provides class keyword, followed by a class name is used to define a class; all fields and functions are enclosed by the pair of curly braces ({}).
Syntax- 
class ClassName
 {
  <fields>  
  <getters/setters>  
  <constructor>  
  <functions>  
}
In this ClassName represents the actual name of the class, which is defined by the user and in  curly braces, we provide the class definition.
According to naming convention, the first letter of the class name must be CAPITAL and use no separators.

INHERITANCE
Dart inheritance is defined as the process of deriving the properties and characteristics of another class. It provides the ability to create a new class from an existing class.
It has 2 types of classes-
1.	Parent class: A class which is inherited by the other class is called superclass or parent class. It is also known as a base class.
2.	Child class: A class which inherits properties from other class is called the child class. It is also known as the derived class or subclass.
Syntax-
class child_class extends parent_class
 {  
    //body of child class  
}

Types of Inheritance:
1.	Single Inheritance
2.	Multiple Inheritance
3.	Multilevel Inheritance
4.	Hierarchical Inheritance

Inheritance

-There are two types of classes known as parent class and child class.
-Parents class's properties are inherited by child class and child class's propertie is to inherit form other classes.
-child class is inside parent class.
-There're mainly 4 types of inheritance:
>Single Inheritance
>Multiple Inheritance
>Multi-Level Inheritance
>Hierarchical Inheritance

Eg:

//parent class
class Module2{
	
//function
void output()
{
print("This the sample code for Inheritance in dart");
}}

//Child class
class Module2Child extends Module2{}
void main() {
var dev = new Module2Child();
dev.output();
}


MIXINS

-Mixins are classes from which we can borrow methods/variables without extending the class, in other words,it allows code to be reusable across separate classes.

Eg:
mixin module2 {
  module2(mixin method) {
    print(message);
  }
}

INFERENCE

-The analyzer can infer types for fields, methods, local variables, and most generic type arguments. When the analyzer doesn’t have enough information to infer a specific type, it uses the dynamic type.


ABSTRACT CLASS

-classes which contain one or more than one abstract method
-class can be declared abstract by using abstract keyword only.
-A class declared as abstract can’t be initialised.

syntax:

abstract class class_name
{
// Body of the abstract class
}


ASYNC

-Async operation executes in a thread, separate from the main application thread. 

Eg:
void main(){ 
   File file = new File(C://flutter);  //location of code
   Future<String> f = file.readAsString();  
   f.then((data)=>print(data));    //async method
   print("End of main");  
   }

EXCEPTION

-Exception is an error that occurs inside the program.
-Every built-in exception in Drat comes under a pre-defined class
-To prevent the program from exception we make use of try/on/catch blocks in Dart.

syntax:
try { 
   // program that might throw an exception 
}  
on Exception1 { 
   // code for handling exception 1
}  
catch Exception2 { 
   // code for handling exception 2
}

