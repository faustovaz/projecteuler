// Problem 15
// Find how many paths there are to get to the bottom right corner
// Recursive version is much faster than iterative version

import java.util.Stack;

public class _015 {

	private short matrix[][];
	private int rows;
	private int columns;

	public _015(short matrix[][]) {
		this.matrix = matrix;
		this.rows = this.matrix.length;
		this.columns = this.matrix[0].length;
	}

	//Recursive version
	public long run_forest_run(int row, int column){
		if (this.rows == row + 1 && this.columns == column + 1)
			return 1;
		if (this.rows <= row || this.columns <= column)
			return 0;
		return run_forest_run(row, column + 1) + run_forest_run(row + 1, column);
	}

	//Iterative Version
	public long run_forest_run(){
		Stack<String> stack = new Stack<String>();
		String current = "0,0";
		boolean done = false;
		long sum = 0;
		while(!done){
			if(isInBound(current)){
				if(toInt(current)[0] + 1 == this.matrix.length
						&& toInt(current)[1] + 1 == this.matrix[0].length ){
					sum++;
				}
				stack.push(current);
				current = toStr(toInt(current)[0], toInt(current)[1] + 1);
			}
			else{
				if(stack.empty()){
					done = true;
				}
				else{
					current = stack.peek();
					stack.pop();
					current = toStr(toInt(current)[0] + 1, toInt(current)[1]);
				}
			}
		}
		return sum;
	}

	public boolean isInBound(String coordinate){
		int coordinates[] = toInt(coordinate);
		int row = coordinates[0];
		int column = coordinates[1];
		return (row >= 0 && row < this.matrix.length) &&
				(column >= 0 && column < this.matrix[0].length);
	}

	public String toStr(int row, int column){
		return String.valueOf(row) + "," + String.valueOf(column);
	}

	public int[] toInt(String coord){
		String coordinates[] = coord.split(",");
		return new int[]{	Integer.valueOf(coordinates[0]),
												Integer.valueOf(coordinates[1])};
	}

	public static void main(String[] args) {
		_015 runner = new _015(new short[21][21]);
		System.out.println(runner.run_forest_run(0, 0));
	}
}
