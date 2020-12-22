
import 'package:vocabulary_app/models/category.dart';
import 'package:vocabulary_app/models/vocab.dart';

import 'vocab.dart';

List categories() {
  List category = new List();
  category.add(Category(
      "https://s17.picofile.com/file/8418350650/hamburger.png", "غذاها", 1));
  category.add(Category(
      "https://s17.picofile.com/file/8418351134/pineapple.png", "میوه ها", 2));
  category.add(Category(
      "https://s16.picofile.com/file/8418350742/vegetables.png", "سبزیجات", 3));
  category.add(Category(
      "https://s17.picofile.com/file/8418350800/shirt.png", "پوشاک", 4));

  return category;
}

List<Vocab> vocab() {
  List vocab2 = List<Vocab>();

  //Foods
  vocab2.add(Vocab("Rice", "https://s16.picofile.com/file/8418347300/Rice.jpg",
      "https://s17.picofile.com/file/8418347926/rice.mp3.html", 1));


  //Fruits
  vocab2.add(Vocab(
      "Apple",
      "https://s17.picofile.com/file/8418347434/apple.jpg",
      "https://s16.picofile.com/file/8418347876/apple.mp3.html",
      2));

  //Vegetables

  vocab2.add(Vocab(
      "Potato",
      "https://s16.picofile.com/file/8418347750/potateto.jpg",
      "https://s17.picofile.com/file/8418347984/potato.mp3.html",
      3));

  //Clothing
  vocab2.add(Vocab(
      "Shoes",
      "https://s16.picofile.com/file/8418369742/shoes.jpg",
      "https://s17.picofile.com/file/8418347950/shoes.mp3.html",
      4));

  return vocab2;
}
