import 'package:flutter/material.dart';
import 'package:layout_flutter/models/item.dart';

class GridViewStyleWidget extends StatelessWidget {
  final List<Item> items;
  final Function(Item item) callbackItemOnTap;
  final double itemWidth = 100;
  final double itemHeight = 148;
  final double gridPadding = 12;

  const GridViewStyleWidget({super.key, required this.items, required this.callbackItemOnTap});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(12),
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: gridPadding,
        mainAxisSpacing: gridPadding,
        childAspectRatio: itemWidth / itemHeight,
      ),
      itemBuilder: (context, index) {
        final item = items[index];
        return _buildItemCard(item, context);
      },
    );
  }

  Widget _buildItemCard(Item item, BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => callbackItemOnTap(item),
      child: Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: itemWidth / (itemHeight / 1.8),
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Hero(
                  tag: item.imgPath,
                  child: Image.asset(
                    item.imgPath,
                    fit: BoxFit.cover,
                    height: 120,
                    width: double.maxFinite,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 6, right: 6, top: 12),
              // color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        size: 12,
                        color: Colors.grey[500],
                      ),
                      SizedBox(width: 2),
                      Expanded(
                        child: Text(
                          item.location,
                          style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    "${item.title}\n\n",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star, size: 20, color: Colors.amber),
                      SizedBox(width: 4),
                      Text('${item.star}'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
