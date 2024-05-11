import 'package:user_app/provider/cart.dart';
import 'package:user_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/shared/appBar.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Checkout Products"),
        actions: [
          ProductsAndPrice(),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
                height: 600,
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    // itemCount: cart.selectedProducts.length,
                    itemCount: cart.itemCount,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          subtitle: Text(
                              "\$ ${cart.selectedProducts[index].price} - ${cart.selectedProducts[index].location}"),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                cart.selectedProducts[index].imgPath),
                          ),
                          title: Text(cart.selectedProducts[index].name),
                          trailing: IconButton(
                              onPressed: () {
                                cart.delete(cart.selectedProducts[index]);
                              },
                              icon: Icon(Icons.remove)),
                        ),
                      );
                    })),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNpink),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              "Pay \$ ${cart.sumPrice}",
              style: TextStyle(fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}
