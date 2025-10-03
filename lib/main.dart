import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_myapp/Provider_Page/cart_provider.dart';
import 'package:test_myapp/Provider_Page/product_page.dart';
import 'package:test_myapp/widgets/button.dart';
import 'package:test_myapp/widgets/container_sized.dart';
import 'package:test_myapp/widgets/dismissible.dart';
import 'package:test_myapp/widgets/list_grid.dart';
import 'package:test_myapp/widgets/rowsclos.dart';
import 'package:test_myapp/widgets/snackBar.dart';
import 'package:test_myapp/widgets/tapbar.dart';

import 'Project/home_screen.dart';
import 'Provider/home.dart';
import 'Provider/list_provider.dart';
import 'Provider_Page/cart_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => NumberListProvider(),)
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         // theme: ThemeData(
//         //   brightness: Brightness.light,
//         //   primaryColor: Colors.deepPurple,
//         // ),
//         theme: ThemeData(
//           // brightness: Brightness.light,
//           // primaryColor: Colors.green,
//         ),
//         // home: Container_Sized(),
//         // home: Rowsclos(),
//         // home: Buttonwidget(),
//         // home: ListGrid(),
//         // home: SnackbarWidget(),
//         // home: DismissibleWidget(),
//         // home: TapbarWidget(),
//         //home: HomePage(),
//         // home: HomeScreen(),
//       ),
//     );
//   }}
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider(),)
      ],
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
            home: ProductPage(),
            // home: CartPage(),
          ),
        );
  }
}
