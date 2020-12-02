class Twofer {

    String twofer(String name) {
        String input = name;
        input = input == null || input.isEmpty() ? "you" : input;
        return String.format("One for %s, one for me.", input);
    }
}
