import 'package:audio/product/constants/color_constant.dart';
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
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: Image.asset('assets/png/ic_menu.png')),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: context.padding.onlyRightLow,
              child: Image.asset('assets/png/ic_audio_small.png'),
            ),
            Text(
              'Audio',
              style: context.general.textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.w600),
            )
          ],
        ),
        actions: [
          Padding(
            padding: context.padding.onlyRightNormal,
            child: CircleAvatar(
              child: Image.asset('assets/png/ic_avatar_small.png'),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              Padding(
                padding: context.padding.horizontalNormal +
                    context.padding.onlyTopNormal,
                child: const Text('Hi, Andrea'),
              ),
              Padding(
                padding: context.padding.horizontalNormal +
                    context.padding.onlyTopLow,
                child: Text(
                  'What are you looking for today?',
                  style: context.general.textTheme.headlineMedium
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: context.padding.horizontalNormal +
                    context.padding.onlyTopNormal,
                child: const CustomTextField(
                  borderRadius: 10,
                  hintText: 'Search Headphone',
                  imageString: 'assets/png/ic_search.png',
                ),
              ),
              Expanded(
                child: Padding(
                  padding: context.padding.onlyTopNormal,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: ColorConstant.cascadingWhite,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15))),
                    child: Column(
                      children: [
                        Padding(
                          padding: context.padding.onlyTopNormal +
                              context.padding.horizontalLow,
                          child: SizedBox(
                            height: 30,
                            child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: context.padding.onlyLeftLow,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shadowColor:
                                            ColorConstant.cascadingWhite,
                                        elevation: 0,
                                        backgroundColor:
                                            ColorConstant.cascadingWhite),
                                    child: const Text('Headphone'),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: context.padding.horizontalLow +
                              context.padding.onlyTopLow,
                          child: SizedBox(
                            height: 200,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: context.padding.onlyLeftLow,
                                  child: SizedBox(
                                    width: 350,
                                    child: Card(
                                      elevation: 0.05,
                                      color: Colors.white,
                                      // child: ListTile(
                                      //   title: const Text(
                                      //       'TMA-2 Modular Headphone'),
                                      //   trailing: Image.asset(
                                      //     'assets/png/ic_headset.png',
                                      //   ),
                                      //   subtitle: TextButton(
                                      //       onPressed: () {},
                                      //       child: const Text('Shop now ')),
                                      // ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                            padding:
                                                context.padding.onlyTopMedium,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('TMA-2',
                                                    style: context.general
                                                        .textTheme.titleLarge
                                                        ?.copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                Text('Modular',
                                                    style: context.general
                                                        .textTheme.titleLarge
                                                        ?.copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                Text('Headphone',
                                                    style: context.general
                                                        .textTheme.titleLarge
                                                        ?.copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                Padding(
                                                  padding: context
                                                      .padding.onlyTopNormal,
                                                  child: const Text('Shop now'),
                                                )
                                              ],
                                            ),
                                          ),
                                          Image.asset(
                                              'assets/png/ic_headset.png')
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: context.padding.onlyTopLow +
                              context.padding.horizontalNormal,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Featured Products',
                                  style: context.general.textTheme.titleMedium,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('See all'),
                                )
                              ]),
                        ),
                        Padding(
                          padding: context.padding.onlyTopLow,
                          child: GridView.builder(
                            padding: context.padding.horizontalLow,
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                  color: Colors.white,
                                  elevation: 0.05,
                                  child: Column(
                                    children: [
                                      Image.asset('assets/png/ic_headset.png'),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text('TMA-2 HD Wireless'),
                                          Text(
                                            'USD 350',
                                            style: context
                                                .general.textTheme.titleSmall
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      )
                                    ],
                                  ));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
