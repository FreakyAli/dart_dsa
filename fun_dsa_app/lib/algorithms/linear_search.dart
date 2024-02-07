class LinearSearch {
  bool search(List<int> hayStack, int needle) {
    var searchResult = false;
    for (var i = 0; i <= hayStack.length; i++) {
      if (i == needle) {
        searchResult = true;
        break;
      }
    }
    return searchResult;
  }
}
