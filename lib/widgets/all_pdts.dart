import 'package:flutter/material.dart';
import 'package:fluttercartlogic/models/product.dart';
import 'package:fluttercartlogic/widgets/pdf_item.dart';
import 'package:provider/provider.dart';

class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData=Provider.of<Products>(context);
    final pdts=productData.items;
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: pdts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (ctx, i)=>ChangeNotifierProvider.value(value: pdts[i],
          child: PdtItem(name: pdts[i].name,imageUrl: pdts[i].imgUrl,)),
    );
  }
}
