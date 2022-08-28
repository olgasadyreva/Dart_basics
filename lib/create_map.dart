class CreateMap {
  createMap(List<String> list) {
    var mapWords = {};
    String currentWord = '';

    for (var item in list) {
      int quantity = 0;
      if (item != currentWord) {
        currentWord = item;
        for (var element in list) {
          if (element == currentWord) {
            quantity++;
          } else {
            continue;
          }
          mapWords[currentWord] = quantity;
        }
      } else {
        continue;
      }
    }
    return mapWords;
  }
}
