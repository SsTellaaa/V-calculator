module main
import readline {read_line}

fn main() {
	// Read line object
    mut r := readline.Readline{}
	//

	println("What operator would you like to use?\n1. Plus\t2. Minus\n3. Divide\t4. Multiply")
	mut selection := r.read_line("Enter your response... ")!.int()

	mut first_num := r.read_line("Enter first number...")!.int()
	mut second_num := r.read_line("Enter second number...")!.int()

	mut total := 0

		if selection == 1 {
			total = plus(first_num, second_num)
		}
		else if selection == 2 {
			total = minus(first_num, second_num)
		}
		else if selection == 3 {
			total = divide(first_num, second_num) 
		}
		else if selection == 4 {
			total = multiply(first_num, second_num)
		}
		else {
			println("Error has occured bitch")
		}
		println("Your result is: ${total}")
	}


fn plus(one int, two int) int
{
	total := one + two
	return total
}
fn minus(one int, two int) int
{
	total := one - two
	return total
}
fn divide(one int, two int) int
{
	total := one / two
	return total
}
fn multiply(one int, two int) int
{
	total := one * two
	return total
}

