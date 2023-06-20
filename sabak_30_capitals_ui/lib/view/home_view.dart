import 'package:flutter/material.dart';
import 'package:sabak_30_capitals_ui/constants/app_colors.dart';

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
          title: const Text('Мамлекеттер борбору'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: AppColors.blue,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: AppColors.black,
              ),
            ),
          ],
          elevation: 0,
        ),
        body: Column(
          children: [
            const Divider(
              indent: 15,
              endIndent: 15,
              color: AppColors.dividerColor,
              height: 1,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 20, right: 10),
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: 6,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(15)),
                      );
                    }),
              ),
            )
          ],
        ));
  }
}
