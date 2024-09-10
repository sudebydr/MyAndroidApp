import 'package:flutter/material.dart';
import 'package:theme_board/kategori_data.dart';
import 'package:theme_board/kategori_modeli.dart';
import 'package:theme_board/widgets.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<KategoriModeli> kategori = [];
  //List<KategoriModeli> kategori= new List();
  @override
  void initState() {
    kategori=getKategori();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: BrandName(),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.grey[800],
        child: Column(
        children: <Widget>[
          SizedBox(height: 16,),
          Container(
            height: 200,
            child:
            ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 24),
              itemCount: kategori.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                return Kategoriler(title: kategori[index].kategoriAdi,
                  imgUrl: kategori[index].imgUrl,
                );
                }),
          ),
          SizedBox(height: 40,),

          Container(
            color: Colors.grey[800],
            height: 400,
            width: 200,

            child: Scaffold(
              body: WallpaperCategories(),backgroundColor: Colors.grey[800],
            ),
          )
        ],
       ),
      ),
    );
  }
}

class Kategoriler extends StatelessWidget {
  final String imgUrl, title;
  Kategoriler({required this.title, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 6),
      child: Stack(children: <Widget>[

          ClipRRect(
            borderRadius: BorderRadius.circular(20),
              child: Image.asset(imgUrl, height: 10000, width: 120, fit: BoxFit.cover,)),
        Container(

          height: 10000, width: 120,
          alignment: Alignment.center,
          child: Text(title,style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 17),),)

      ],),
    );
  }
}

//


class WallpaperCategories extends StatelessWidget {
  final List<String> categories = ['Fairytale', 'MonetStyle', 'Daughter of sea', 'Mariposa',"Energy's stuff",'Art'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WallpaperList(category: categories[index]),
              ),
            );
          },
          child: CategoryCard(category: categories[index]),
        );
      },
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String category;

  CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      margin: EdgeInsets.only(top: 6.0, bottom: 5.0),
      child: ListTile(
        title: Center(child: Text(category,style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w500) ,)),
      ),
    );
  }
}

class WallpaperList extends StatelessWidget {
  final String category;

  WallpaperList({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text(category, style: TextStyle(color: Colors.white),),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WallpaperDetail(
                    category: category,
                    photoIndex: index + 1,
                  ),
                ),
              );
            },
            child: Image.asset(
              "assets/images/$category/${index + 1}.jpg",
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

class WallpaperDetail extends StatelessWidget {
  final String category;
  final int photoIndex;

  WallpaperDetail({required this.category, required this.photoIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
      ),
      body: Center(
        child: Image.asset(
          "assets/images/$category/$photoIndex.jpg",
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
