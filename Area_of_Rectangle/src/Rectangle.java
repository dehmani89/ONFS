// Rectangle.java: the rectangle class
public class Rectangle {

	// data fields: usually private
	private int length, width, total;

	// constructor, must be public, no parameters
	public Rectangle() {
		length = 0;
		width = 0;
	}

	// constructor, must be public, two parameters
	public Rectangle(int len, int wid) {
		length = len;
		width = wid;
	}

	// accessors, usually public, return data members
	public int getLength() {
		return length;
	}

	public int getWidth() {
		return width;
	}

	// other functions, called methods
	public int getArea() {
		return length * width;
	}

	public int getPerim() {
		return 2 * length + 2 * width;
	}

	// special toString function
	public String toString() {
		return "Rectangle. width: " + width + ", length: " + length
				+ ", area: " + getArea() + ", Perim:  " + getPerim();
	}
}
