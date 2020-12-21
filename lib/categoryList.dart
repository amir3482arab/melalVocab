import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vocabulary_app/models/category.dart';
import 'package:vocabulary_app/models/setData.dart';
import 'package:vocabulary_app/theme/colors.dart';
import 'package:vocabulary_app/theme/dimens.dart';
import 'package:vocabulary_app/vocabList.dart';

class CategoryList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CategoryListState();
}

class CategoryListState extends State<CategoryList> {
  List list = categories();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade100,
        title: Text(
          "دسته بندی",
          style: theme.textTheme.headline4.copyWith(
              fontSize: bodyText1Size(context),
              color: AppColors.textColorLight),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          child: categoryCard(categories()[index], context),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VocabList(list[index].id),
                ));
          },
        ),
        physics: BouncingScrollPhysics(),
        itemCount: categories().length,
      ),
    );
  }
}

Widget categoryCard(Category model, BuildContext context) {
  return Container(
      width: fullWidth(context),
      child: ListTile(
        leading: Image.network(
          model.image,
          width: 24,
          height: 24,
        ),
        title: Text(
          model.title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey.shade400,
        ),
      ),
      margin: EdgeInsets.symmetric(
          horizontal: largeSize(context), vertical: mediumSize(context)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white));
}
