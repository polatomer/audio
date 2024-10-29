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
            Image.asset('assets/png/ic_audio_small.png'),
            const Text('Audio')
          ],
        ),
        actions: [
          CircleAvatar(
            child: Image.asset('assets/png/ic_avatar_small.png'),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              Padding(
                padding: context.padding.horizontalLow +
                    context.padding.onlyTopNormal,
                child: const Text('Hi, Andrea'),
              ),
              Padding(
                padding:
                    context.padding.horizontalLow + context.padding.onlyTopLow,
                child: const Text('What are you looking for today?'),
              ),
              Padding(
                padding: context.padding.horizontalLow +
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
                        color: Colors.green,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15))),
                    child: Column(
                      children: [
                        Padding(
                          padding: context.padding.onlyTopNormal +
                              context.padding.horizontalLow,
                          child: SizedBox(
                            height: 25,
                            child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: context.padding.onlyLeftLow,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: const Text('data')),
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
                                      child: ListTile(
                                        title: const Text(
                                            'TMA-2 Modular Headphone'),
                                        trailing: Image.asset(
                                            'assets/png/ic_headset.png'),
                                        subtitle: TextButton(
                                            onPressed: () {},
                                            child: const Text('Shop now ')),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: context.padding.onlyTopNormal,
                          child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Featured Products'),
                                Text('See all')
                              ]),
                        ),
                        Padding(
                          padding: context.padding.onlyTopNormal,
                          child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                  child: Column(
                                children: [
                                  Image.asset('assets/png/ic_headset.png'),
                                  const Text('TMA-2 HD Wireless'),
                                  const Text('USD 350')
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
