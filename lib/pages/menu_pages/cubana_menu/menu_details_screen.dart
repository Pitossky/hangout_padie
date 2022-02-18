import 'package:flutter/material.dart';
import 'package:location/model/cubana_menu.dart';
import 'package:location/widgets/exports.dart';

//import 'main_menu_screen.dart';

class MenuDetailsScreen extends StatefulWidget {
  final List<SubCategory> subItems;
  const MenuDetailsScreen({Key? key, required this.subItems}) : super(key: key);

  @override
  _MenuDetailsScreenState createState() => _MenuDetailsScreenState();
}

class _MenuDetailsScreenState extends State<MenuDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomHeader(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 20.0,
                ),
                child: Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.72,
                    child: ListView.builder(
                      itemCount: widget.subItems.length,
                      itemBuilder: (context, index) {
                        return CustomMenuRow(
                          images: widget.subItems[index].subcategoryImage,
                            secondText: 'view all',
                        firstText: widget.subItems[index].subcategoryName,
                        );
                      },
                    ),
                  ),
                ),
              ),
              /*
              Expanded(
                //height: MediaQuery.of(context).size.height * 0.7,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        physics: const BouncingScrollPhysics(),
                        children: [
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomMenuRow(
                                images: [],
                                firstText: 'Alcohol & Beers',
                                secondText: 'view all',
                              ),
                              /* CustomMenuContainer(
                                drinkImages: menuImages
                                    .menuSubcategoryImages.alcoholImageUrl,
                                imageInt: menuImages.menuSubcategoryImages
                                    .alcoholImageUrl.length,
                              ),
                              const SizedBox(
                                height: 20,
                              ),*/
                              CustomMenuRow(
                                images: [],
                                firstText: 'Soft Drinks & Juices',
                                secondText: 'view all',
                              ),
                              /* CustomMenuContainer(
                                //drinkImages: menuImages
                                    .menuSubcategoryImages.softdrinksImageUrl,
                               // imageInt: menuImages.menuSubcategoryImages
                                    .softdrinksImageUrl.length,
                              ),*/
                              const SizedBox(
                                height: 20,
                              ),
                              CustomMenuRow(
                                images: [],
                                firstText: 'Cocktails & Special Drinks',
                                secondText: 'view all',
                              ),
                              /*CustomMenuContainer(
                                drinkImages: menuImages
                                    .menuSubcategoryImages.cocktailImageUrl,
                                imageInt: menuImages.menuSubcategoryImages
                                    .cocktailImageUrl.length,
                              ),*/
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),*/
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
