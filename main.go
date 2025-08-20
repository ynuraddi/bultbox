package main

import (
	"fmt"
	"nonexistent/package" // Несуществующий пакет
)

func main() {
	// Синтаксическая ошибка - пропущен тип переменной
	var message 
	message = "Hello, World!"
	
	// Неопределенная переменная
	fmt.Println(undefinedVariable)
	
	// Вызов несуществующей функции из несуществующего пакета
	package.DoSomething()
	
	// Еще одна синтаксическая ошибка
	if true {
		fmt.Println("This will never work")
	// Пропущена закрывающая скобка
	
	fmt.Println(message)
}
