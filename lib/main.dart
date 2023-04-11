import 'package:flutter/material.dart';

class NewNavBar extends StatelessWidget {
  final List<IconData> icons;
  const NewNavBar(this.icons);

  void botaoTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: botaoTocado,
        backgroundColor: Colors.purpleAccent,
        items: List.generate(
            icons.length,
            (index) => BottomNavigationBarItem(
                  icon: Icon(icons[index]),
                  label: 'Item $index',
                )));
  }
}

class NewBod extends StatelessWidget {
  NewBod();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: Text("La Fin Du Monde - Bock - 65 ibu"),
      ),
      Expanded(
        child: Text("La Fin Du Monde - Bock - 65 ibu"),
      ),
      Expanded(
        child: Text("La Fin Du Monde - Bock - 65 ibu"),
      ),
    ]);
  }
}

class NewBar extends StatelessWidget {
  NewBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Dicas"),
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Scaffold(
          appBar: PreferredSize(
              child: NewBar(), preferredSize: Size.fromHeight(kToolbarHeight)),
          body: NewBod(),
          bottomNavigationBar: NewNavBar([
            Icons.menu_outlined,
            Icons.coffee_outlined,
            Icons.local_drink_outlined,
            Icons.flag_outlined,
            Icons.search_outlined,
          ]),
        ));
  }
}

void main() {
  runApp(MyApp());
}
