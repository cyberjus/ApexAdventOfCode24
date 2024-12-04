public with sharing class Advent24Day1 {
  public Decimal calculateAverageHousesPerStreet(
    List<Integer> streetHouseCounts
  ) {
    if (streetHouseCounts == null || streetHouseCounts.isEmpty()) return 0.0;
    Decimal total = 0;
    for (Integer i : streetHouseCounts) {
      total += i;
    }
    return total / (Decimal) streetHouseCounts.size();
  }

  public static void test() {
    List<Integer> ints = new List<Integer>{ 5, 10, 3, 7, 8 };
    Advent24Day1 day1 = new Advent24Day1();
    System.debug(day1.calculateAverageHousesPerStreet(ints));
  }
}
