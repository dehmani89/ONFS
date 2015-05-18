// RectangleMain: holds main for Rectangle class
public class Rectangle_Driver {
   public static void main(String args[]) {
      int l, w;

      Rectangle r1 = new Rectangle();
      System.out.println(r1);  // calls toString of r1

      Rectangle r2 = new Rectangle(4,3);
      System.out.println(r2);  // calls toString of r2

      System.out.println("Test getLength, getWidth ...");
      l = r2.getLength();
      w = r2.getWidth();
      System.out.println("  r2 length: " + l);
      System.out.println("  r2 width: " + w);

      System.out.println("Test getArea, getPerim ...");
      System.out.println("  r1 area: " + r1.getArea());
      System.out.println("  r1 Perim: " + r1.getPerim());
      System.out.println("  r2 area: " + r2.getArea());
      System.out.println("  r2 Perim: " + r2.getPerim());
   }
}