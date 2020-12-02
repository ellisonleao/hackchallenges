public class Printer <T> {
    public static <E> void printArray(E[] items) {
	for (E elem : items) {
	    System.out.println(elem);
	}
    }
}
