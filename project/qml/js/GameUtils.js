.pragma library

function randomShuffle(array) {
  var currentIndex, tmp;
  for (var i = 0; i < array.length; i++) {
    tmp = array[i];
    currentIndex = Math.floor(Math.random() * (i + 1));
    array[i] = array[currentIndex];
    array[currentIndex] = tmp;
  }
}

function generateCardIndexes(imageCount, repeatCount) {   // imageCount = 10, repeatCount = 2
  var cardIndexes = [];
  var i, j;
  for (i = 0; i < imageCount; i++) {
    for (j = 0; j < repeatCount; j++) {
      cardIndexes.push(i + 1);      // индексы карт (1,2,...) (одинаковые карты имет одинаковые значения?)
    }
  }
  randomShuffle(cardIndexes);   // располагаем значения в cardIndexes случайном порядке
  return cardIndexes;
}
