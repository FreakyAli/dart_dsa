class LinearSearch {
  bool search(List<int> list, int value) {
    var searchResult = false;
    for (var i = 0; i <= list.length; i++) {
      if (i == value) {
        searchResult = true;
        break;
      }
    }
    return searchResult;
  }
}
