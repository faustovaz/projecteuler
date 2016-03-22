
public class _015 {
	
	private int matrix[][];
	
	public _015(int matrix[][]) {
		this.matrix = matrix;
	}
	
	public long run_forest_run(int row, int column){
		try{
			if (this.matrix.length - 1 == row || this.matrix[row].length -1 == column)
				return 1;
			else
				return run_forest_run(row, column + 1) + run_forest_run(row + 1, column);
		}
		catch(ArrayIndexOutOfBoundsException e){
			return 0;
		}
	}
	
	public static void main(String[] args) {
		_015 r = new _015(new int[20][20]);
		System.out.println(r.run_forest_run(0, 0));
	}
}
