public with sharing class Advent24Day2 {
  public Integer calculateRecipeSum(List<String> recipeLines) {
    Integer total = 0;
    if (recipeLines == null || recipeLines.isEmpty())
      return 0;

    for (String line : recipeLines) {
      String numbers = line.replaceAll('\\D', '');
      total += Integer.valueOf(numbers.left(1) + numbers.right(1));
    }
    return total;
  }

  public static void test() {
    Advent24Day2 day2 = new Advent24Day2();
    List<String> inputs = new List<String>{
      '2vanilla extract7',
      'cinnamon8stick1',
      '3cups flour5',
      'ginger4root9'
    };
    System.debug(day2.calculateRecipeSum(inputs));
  }
}
