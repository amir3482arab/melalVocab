import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vocabulary_app/models/category.dart';
import 'package:vocabulary_app/models/setData.dart';
import 'package:vocabulary_app/models/types.dart';
import 'package:vocabulary_app/models/vocab.dart';
import 'package:vocabulary_app/theme/dimens.dart';
import 'package:vocabulary_app/theme/text_widgets.dart';

class VocabList extends StatefulWidget {
  final int id;

  VocabList(this.id);

  @override
  State<StatefulWidget> createState() => VocabListState();
}

class VocabListState extends State<VocabList> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade100,
        title: Text(
          "کلمات",
          style: theme.textTheme.subtitle1,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => vocabCard(vocab()[index], context),
        physics: BouncingScrollPhysics(),
        itemCount: categories().length,
      ),
    );
  }
}

Widget vocabCard(Vocab model, BuildContext context) {
  return Container(
      width: fullWidth(context),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        leading: Container(
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(model.image), fit: BoxFit.cover)),
        ),
        title: headline4(context, model.title),
        trailing: Icon(
          Icons.play_arrow_sharp,
          color: Colors.black,
        ),
      ),
      margin: EdgeInsets.symmetric(
          horizontal: largeSize(context), vertical: mediumSize(context)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white));
}