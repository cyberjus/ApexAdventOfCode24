public with sharing class Advent24Day3 {
  public Integer calculateEggnogServings(
    Integer milk,
    Integer cream,
    Integer eggs,
    Integer sugar
  ) {
    // Your code here

    List<Integer> max = new List<Integer>();
    max.add(milk / 2);
    max.add(cream);
    max.add(eggs / 3);
    max.add(Integer.valueOf(Math.floor(sugar / .25)));
    max.sort();

    return max.get(0);
  }

  public static void test() {
    Advent24Day3 day3 = new Advent24Day3();
    System.debug(day3.calculateEggnogServings(4, 2, 6, 1));
    System.debug(day3.calculateEggnogServings(2, 1, 2, 1));
    System.debug(day3.calculateEggnogServings(10, 5, 15, 2));
  }
}
