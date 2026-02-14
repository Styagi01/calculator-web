package calculator.calculator_web;

public class Calculator {
	
	//Addition
	public double add(double a,double b) {
		return a+b;
	}

	//Subtraction
	public double subtract(double a,double b) {
		return a-b;
	}
	
	//Multiplication
	public double multiply(double a,double b) {
		return a*b;
	}
	
    //Division
	public double divide(double a,double b) {
		if (b==0) {
			throw new ArithmeticException("Cannot divide by zero");
		}
		return a/b;
	}
}
