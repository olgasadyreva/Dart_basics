class FindNumbers {
  findNumbers(String str) {
    final numbers = [];

    List<String> arrayWord = str.split(' ');
    for (var item in arrayWord) {
      if (int.tryParse(item) != null) {
        numbers.add(item);
      }
    }
    return numbers;
  }
}
