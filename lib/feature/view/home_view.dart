import 'package:audio/product/constants/color_constant.dart';
import 'package:audio/product/constants/image_enum.dart';
import 'package:audio/product/constants/string_constants.dart';
import 'package:audio/product/extensions/png_extension.dart';
import 'package:audio/product/widget/button/custom_elevated_button.dart';
import 'package:audio/product/widget/text-field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              Padding(
                padding: context.padding.horizontalNormal + context.padding.onlyTopNormal,
                child: const Text(StringConstants.hiAndrea),
              ),
              Padding(
                padding: context.padding.horizontalNormal + context.padding.onlyTopLow,
                child: Text(
                  StringConstants.bodyTitle,
                  style: context.general.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: context.padding.horizontalNormal + context.padding.onlyTopNormal,
                child: _search(),
              ),
              Padding(
                padding: context.padding.onlyTopNormal,
                child: Container(
                  decoration: const BoxDecoration(
                      color: ColorConstant.cascadingWhite, borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
                  child: Column(
                    children: [
                      Padding(
                        padding: context.padding.onlyTopNormal + context.padding.horizontalLow,
                        child: const SizedBox(
                          height: 30,
                          child: _CategoriesListView(),
                        ),
                      ),
                      Padding(
                        padding: context.padding.horizontalLow + context.padding.onlyTopLow,
                        child: const SizedBox(
                          height: 200,
                          child: _ProductListView(),
                        ),
                      ),
                      Padding(
                        padding: context.padding.onlyTopLow + context.padding.horizontalNormal,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          Text(
                            StringConstants.featuredProducts,
                            style: context.general.textTheme.titleMedium,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              StringConstants.seeAllButton,
                              style: context.general.textTheme.titleSmall?.copyWith(color: ColorConstant.platinumGranite),
                            ),
                          )
                        ]),
                      ),
                      Padding(
                        padding: context.padding.onlyTopLow,
                        child: const SizedBox(
                          height: 250,
                          child: _FeaturedProductListView(),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }

  CustomTextField _search() {
    return const CustomTextField(
      borderRadius: 10,
      hintText: 'Search Headphone',
      imageString: 'assets/png/ic_search.png',
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      leading: IconButton(onPressed: () {}, icon: PngImage(name: ImageEnum.menu.name)),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: context.padding.onlyRightLow, child: PngImage(name: ImageEnum.audioSmall.name)),
          Text(
            StringConstants.appBarTitle,
            style: context.general.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          )
        ],
      ),
      actions: [
        Padding(
          padding: context.padding.onlyRightNormal,
          child: CircleAvatar(
            child: PngImage(name: ImageEnum.avatarSmall.name),
          ),
        )
      ],
    );
  }
}

class _FeaturedProductListView extends StatelessWidget {
  const _FeaturedProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 190,
          height: 250,
          child: _productCard(context),
        );
      },
    );
  }

  Card _productCard(BuildContext context) {
    return Card(
      elevation: 0.05,
      color: Colors.white,
      child: Padding(
        padding: context.padding.horizontalLow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PngImage(name: ImageEnum.headset.name),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('TMA-2 HD Wireless'),
              Text(
                'USD 350',
                style: context.general.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
              ),
            ])
          ],
        ),
      ),
    );
  }
}

class _ProductListView extends StatelessWidget {
  const _ProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: context.padding.onlyLeftLow,
          child: const SizedBox(
            width: 350,
            child: _ProductCard(),
          ),
        );
      },
    );
  }
}

class _ProductCard extends StatelessWidget {
  const _ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.05,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: context.padding.onlyTopMedium,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('TMA-2', style: context.general.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                Text('Modular', style: context.general.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                Text('Headphone', style: context.general.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                Padding(
                  padding: context.padding.onlyTopNormal,
                  child: _cardButton(context),
                )
              ],
            ),
          ),
          PngImage(name: ImageEnum.headset.name)
        ],
      ),
    );
  }

  InkWell _cardButton(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        'Shop now',
        style: context.general.textTheme.titleSmall?.copyWith(color: ColorConstant.underWaterFern),
      ),
    );
  }
}

class _CategoriesListView extends StatelessWidget {
  const _CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(padding: context.padding.onlyLeftLow, child: _categoryButton(context));
      },
    );
  }

  CustomElevatedButton _categoryButton(BuildContext context) {
    return CustomElevatedButton(
      buttonColor: ColorConstant.cascadingWhite,
      elevation: 0,
      title: Text(
        'Headphone',
        style: context.general.textTheme.titleMedium?.copyWith(color: ColorConstant.platinumGranite),
      ),
      borderRadius: 15,
    );
  }
}
