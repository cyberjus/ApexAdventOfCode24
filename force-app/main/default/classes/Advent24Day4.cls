public with sharing class Advent24Day4 {
  public Boolean isPalindrome(String input) {
    List<String> chars = input.replaceAll('[^a-zA-Z0-9-]+', '').split('');

    for (Integer i = 0; i < chars.size() / 2; i++) {
      if (chars.get(i) != chars.get(chars.size() - 1 - i)) {
        return false;
      }
    }

    return true;
  }

  public static void test() {
    Advent24Day4 day4 = new Advent24Day4();
    System.debug(day4.isPalindrome('Yo, Banana Boy!'));
    System.debug(day4.isPalindrome('Starburst rubs rats.'));
    System.debug(day4.isPalindrome('Eva, can I see bees in a cave?'));
  }
}
