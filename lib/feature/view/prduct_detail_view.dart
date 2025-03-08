import 'package:audio/product/constants/image_enum.dart';
import 'package:audio/product/extensions/png_extension.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({super.key});

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: PngImage(name: ImageEnum.left.name)),
          actions: [IconButton(onPressed: () {}, icon: PngImage(name: ImageEnum.shopping.name))],
        ),
        body: ListView(
          children: [
            const Text('USD 350'),
            const Text('TMA-2'),
            const Text('HD WIRELESS'),
            const TabBar(
              tabs: [
                Tab(child: Text('Overview')),
                Tab(child: Text('Features')),
                Tab(child: Text('Specification')),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      width: 300,
                      height: 200,
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),
            const Text('Review (102)'),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                child: PngImage(name: ImageEnum.avatarSmall.name),
              ),
              title: const Text('Madelina'),
              subtitle: Column(
                children: [
                  Row(children: [
                    PngImage(name: ImageEnum.vector.name),
                    PngImage(name: ImageEnum.vector.name),
                    PngImage(name: ImageEnum.vector.name),
                    PngImage(name: ImageEnum.vector.name),
                    PngImage(name: ImageEnum.vector.name),
                  ]),
                  const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eisumod tempor')
                ],
              ),
              trailing: const Text('1 Month ago'),
            )
          ],
        ),
      ),
    );
  }
}
