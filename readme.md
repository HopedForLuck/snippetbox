### Commands

go run {path} - Скомпилировать и выполнить программу
go build {path} - Скомпилировать и создать exec файл
go mod init {ProjectName} - инициализировать дирректорию
go list -m all - вывести список зависимостей
go mod tidy - удалить неиспользуемые зависимости
go get -u github.com/gorilla/mux - установить зависимости из гитхаба


### Syntax

## Packages
package {name_package} - необходимо в начале каждого файла
package main - файл, который будет выполняться первым, в нём должна быть функция main(){}

## Comments

// This is a comment
/* Multiple line comment */

## Variables (You always have to specify either type or value (or both))

# Declaration
var variablename type = value
variablename := value (in functions only)
var a, b, c, d int = 1, 3, 5, 7

# Default values
string = ""
bool = False
int, float = 0

# Naming rules

- A variable name must start with a letter or an underscore character (_)
- A variable name cannot start with a digit
- A variable name can only contain alpha-numeric characters and underscores (a-z, A-Z, 0-9, and _ )
- Variable names are case-sensitive (age, Age and AGE are three different variables)
- There is no limit on the length of the variable name
- A variable name cannot contain spaces
- The variable name cannot be any Go keywords

## Constants (Unchangeable and Read-only)

# Declaration (must be assigned on declaration)

const CONSTNAME type = value

# Rules

- Constant names follow the same naming rules as variables
- Constant names are usually written in uppercase letters (for easy identification and differentiation from variables)
- Constants can be declared both inside and outside of a function

## Output Functions

# Print() (prints its arguments with their default format)

# Println() (whitespace is added between the arguments, and a newline is added at the end)

# Printf() (first formats its argument based on the given formatting verb and then prints them)

- %v is used to print the value of the arguments
- %T is used to print the type of the arguments
- %#v Prints the value in Go-syntax format (saves "" for strings)
- %% Prints the % sign


fmt.Printf("i has value: %v and type: %T\n", i, i) // i has value: Hello and type: string

## Arrays

var array_name = [length]datatype{values} // here length is defined

or

var array_name = [...]datatype{values} // here length is inferred

## Slices

slice_name := []datatype{values}

or

myslice := myarray[start:end]

or

slice_name := make([]type, length, capacity) // If the capacity parameter is not defined, it will be equal to length.


- len() function - returns the length of the slice (the number of elements in the slice)
- cap() function - returns the capacity of the slice (the number of elements the slice can grow or shrink to)

slice_name = append(slice_name, element1, element2, ...) // Adding elements to a slice
slice3 = append(slice1, slice2...) // Adding slice to a slice, ... required
