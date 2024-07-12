import 'package:flutter/material.dart';
import 'package:jornal_app/widget/grid_view_widget.dart';
import 'package:jornal_app/widget/row_title_news_widget.dart';

import '../widget/carousel_widget.dart';
import '../model/lists.dart';
import '../widget/list_row_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            title: Image.asset(
              'assets/bhaz-logo.webp',
              height: 60,
            ),
            toolbarHeight: 86,
            leading: const DrawerButton(),
            actions: const [
              Icon(
                Icons.search,
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: ListRowWdiget(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'BHAZ | NOTÍCIAS DE HOJE SOBRE BELO ',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'HORIZONTE, MINAS GERAIS E BRASIL',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Divider(
                    height: 3,
                    thickness: 3,
                    color: Colors.grey[500],
                  ),
                  const SizedBox(height: 10),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: size.height * 0.24,
                    ),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagesCarousel.length,
                      itemBuilder: (context, index) {
                        return CarouselWidget(
                          width: size.width * 0.90,
                          onTap: () {},
                          title: titlesNews[index],
                          image: Image.asset(
                            imagesCarousel[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  RowTitleNewsWidget(
                    title: 'BH',
                    colorTitle: Colors.red,
                    width: size.width * 0.87,
                    colorDivider: Colors.red[500],
                  ),
                  const GridViewWidget(),
                  const SizedBox(height: 10),
                  RowTitleNewsWidget(
                    title: 'LOGO',
                    colorTitle: Colors.red,
                    width: size.width * 0.82,
                    colorDivider: Colors.yellow[500],
                  ),
                  const SizedBox(height: 10),
                  RowTitleNewsWidget(
                    title: 'ARREDA PRA CÁ',
                    colorTitle: Colors.blue,
                    width: size.width * 0.62,
                    colorDivider: Colors.yellow[500],
                  ),
                  const SizedBox(height: 10),
                  RowTitleNewsWidget(
                    title: 'ESPORTES',
                    colorTitle: Colors.green,
                    width: size.width * 0.72,
                    colorDivider: Colors.green,
                  ),
                  const SizedBox(height: 10),
                  RowTitleNewsWidget(
                    title: 'VARIEDADES',
                    colorTitle: Colors.red,
                    width: size.width * 0.69,
                    colorDivider: Colors.red[500],
                  ),
                  const SizedBox(height: 10),
                  RowTitleNewsWidget(
                    title: 'BRASIL',
                    colorTitle: Colors.red,
                    width: size.width * 0.79,
                    colorDivider: Colors.red[500],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
