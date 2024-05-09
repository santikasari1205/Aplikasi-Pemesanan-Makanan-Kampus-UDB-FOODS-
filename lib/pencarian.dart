import 'package:flutter/material.dart';
import 'package:project_uts/riwayat_pembelian.dart';
import 'package:project_uts/keranjang.dart';

void main() {
  runApp(SearchPage());
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SearchBody(),
      ),
    );
  }
}

class SearchBody extends StatefulWidget {
  @override
  _SearchBodyState createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  String _searchQuery = '';
  List<String> _foodItems = [
    'Nasi',
    'Nasi Ayam',
    'Burger',
    'Mie',
    'Mie Ayam',
  ];

  List<Restaurant> _restaurants = [
    Restaurant(
      name: 'Nasi Ayam',
      cuisine: 'Indonesia',
      menu: [
        MenuItem(
            name: 'Nasi Ayam Goreng',
            price: 10000,
            image: 'asset_media/image/nasi_ayam.jpg'),
        MenuItem(
            name: 'Nasi Ayam Kremes',
            price: 10000,
            image: 'asset_media/image/nasi_ayam_kremes.jpg'),
        MenuItem(
            name: 'Nasi Ayam Geprek',
            price: 12000,
            image: 'asset_media/image/nasi_ayam_geprek.jpg'),
        MenuItem(
            name: 'Nasi Ayam Penyet',
            price: 11000,
            image: 'asset_media/image/nasi_ayam_penyet.jpg'),
        MenuItem(
            name: 'Nasi Ayam Penyet Sambal Ijo',
            price: 12000,
            image: 'asset_media/image/nasi_ayam_penyet_sambal_ijo.jpg'),
      ],
      drinks: [
        MenuItem(
            name: 'Ice Tea',
            price: 3000,
            image: 'asset_media/image/es_teh.jpg'),
        MenuItem(
            name: 'Ice Lemon Tea',
            price: 3500,
            image: 'asset_media/image/es_lemon_tea.jpg'),
        MenuItem(
            name: 'Ice Lemonade',
            price: 4000,
            image: 'asset_media/image/es_jeruk.jpg'),
      ],
    ),
    Restaurant(
      name: 'Nasi Langgi',
      cuisine: 'Indonesia',
      menu: [
        MenuItem(
            name: 'Nasi Uduk',
            price: 10000,
            image: 'asset_media/image/nasi_uduk.jpg'),
        MenuItem(
            name: 'Nasi Kuning',
            price: 12000,
            image: 'asset_media/image/nasi_kuning.jpg'),
        MenuItem(
            name: 'Nasi Langgi',
            price: 11000,
            image: 'asset_media/image/nasi_langgi.jpg'),
        MenuItem(
            name: 'Nasi Rames',
            price: 11000,
            image: 'asset_media/image/nasi_rames.jpg'),
      ],
      drinks: [
        MenuItem(
            name: 'Ice Tea',
            price: 3000,
            image: 'asset_media/image/es_teh.jpg'),
        MenuItem(
            name: 'Ice Lemon Tea',
            price: 3500,
            image: 'asset_media/image/es_lemon_tea.jpg'),
        MenuItem(
            name: 'Ice Lemonade',
            price: 4000,
            image: 'asset_media/image/es_jeruk.jpg'),
        MenuItem(
            name: 'Milkshake',
            price: 5000,
            image: 'asset_media/image/milkshake.jpg'),
      ],
    ),
    Restaurant(
      name: 'Mie Ayam',
      cuisine: 'Indonesia',
      menu: [
        MenuItem(
            name: 'Mie Ayam',
            price: 8000,
            image: 'asset_media/image/mie_Ayam_biasa.jpg'),
        MenuItem(
            name: 'Mie Ayam Spesial',
            price: 12000,
            image: 'asset_media/image/mie_ayam_spesial.jpg'),
        MenuItem(
            name: 'Mie Ayam Pangsit',
            price: 11000,
            image: 'asset_media/image/mie_ayam_pangsit.jpg'),
        MenuItem(
            name: 'Mie Ayam Ceker',
            price: 11000,
            image: 'asset_media/image/mie_ayam_ceker.jpg'),
        MenuItem(
            name: 'Mie Ayam Bakso',
            price: 11000,
            image: 'asset_media/image/mie_ayam_bakso.jpg'),
      ],
      drinks: [
        MenuItem(
            name: 'Ice Tea',
            price: 3000,
            image: 'asset_media/image/es_teh.jpg'),
        MenuItem(
            name: 'Ice Lemon Tea',
            price: 4000,
            image: 'asset_media/image/es_lemon_tea.jpg'),
        MenuItem(
            name: 'Ice Lemonade',
            price: 4000,
            image: 'asset_media/image/es_jeruk.jpg'),
        MenuItem(
            name: 'Milkshake',
            price: 5000,
            image: 'asset_media/image/milkshake.jpg'),
      ],
    ),
    Restaurant(
      name: 'Burger Bar',
      cuisine: 'American',
      menu: [
        MenuItem(
            name: 'Cheeseburger',
            price: 8000,
            image: 'asset_media/image/cheseeburger.jpg'),
        MenuItem(
            name: 'Beefburger',
            price: 10000,
            image: 'asset_media/image/beef_burger.jpg'),
        MenuItem(
            name: 'Beefburger Spesial',
            price: 10000,
            image: 'asset_media/image/beef_burger_special.jpg'),
        MenuItem(
            name: 'Double Beefburger',
            price: 15000,
            image: 'asset_media/image/double_cheeseburger.jpg'),
        MenuItem(
            name: 'Chicken Burger',
            price: 15000,
            image: 'asset_media/image/chicken_burger.jpg'),
        MenuItem(
            name: 'Veggie Burger',
            price: 15000,
            image: 'asset_media/image/veggie_burger.jpg'),
      ],
      drinks: [
        MenuItem(
            name: 'Ice Tea',
            price: 6000,
            image: 'asset_media/image/es_teh.jpg'),
        MenuItem(
            name: 'Ice Lyche Tea',
            price: 6000,
            image: 'asset_media/image/lyche_tea.jpg'),
        MenuItem(
            name: 'Milkshake',
            price: 5000,
            image: 'asset_media/image/milkshake.jpg'),
        MenuItem(
            name: 'Ice Strawberry',
            price: 3000,
            image: 'asset_media/image/es_strawberry.jpg'),
      ],
    ),
  ];

  List<MenuItem> _cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              suffixIcon: Icon(Icons.search),
            ),
            onChanged: (value) {
              setState(() {
                _searchQuery = value.toLowerCase();
              });
            },
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PromoPage()),
            );
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PromoPage()),
                      );
                    },
                    child: Icon(Icons.local_offer),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PersenPage()),
                      );
                    },
                    child: Icon(Icons.pie_chart),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShoppingCartPage()),
                      );
                    },
                    child: Icon(Icons.shopping_cart),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _restaurants.length,
            itemBuilder: (context, index) {
              final restaurant = _restaurants[index];
              if (_searchQuery.isNotEmpty &&
                  !restaurant.name.toLowerCase().contains(_searchQuery)) {
                return Container();
              }
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RestaurantDetailPage(
                        restaurant: restaurant,
                      ),
                    ),
                  );
                },
                child: RestaurantCard(
                  restaurant: restaurant,
                  onAddToCart: (item) {
                    setState(() {
                      _cartItems.add(item);
                    });
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Restaurant {
  final String name;
  final String cuisine;
  final List<MenuItem> menu;
  final List<MenuItem> drinks;

  Restaurant(
      {required this.name,
      required this.cuisine,
      required this.menu,
      required this.drinks});
}

class MenuItem {
  final String name;
  final int price;
  final String image;
  int quantity;

  MenuItem({
    required this.name,
    required this.price,
    required this.image,
    this.quantity = 1, // Inisialisasi quantity dengan nilai default 1
  });
}

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  final Function(MenuItem) onAddToCart;

  RestaurantCard({required this.restaurant, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            'asset_media/image/${restaurant.name.toLowerCase().replaceAll(' ', '_')}.jpg',
            fit: BoxFit.cover,
            height: 150,
            width: double.infinity,
          ),
          ListTile(
            title: Text(restaurant.name),
            subtitle: Text(restaurant.cuisine),
          ),
        ],
      ),
    );
  }
}

class CartPage extends StatefulWidget {
  final List<MenuItem> cartItems;

  CartPage({required this.cartItems});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int totalPrice = 0;

  @override
  void initState() {
    super.initState();
    _calculateTotalPrice();
  }

  void _calculateTotalPrice() {
    int total = 0;
    for (var item in widget.cartItems) {
      total += (item.price * item.quantity);
    }
    setState(() {
      totalPrice = total;
    });
  }

  void _showCheckoutDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Checkout Confirmation'),
          content: Text('Total Price: Rp $totalPrice\n\nProceed to checkout?'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Checkout'),
              onPressed: () {
                Navigator.of(context).pop();
                _checkout();
              },
            ),
          ],
        );
      },
    );
  }

  void _checkout() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PaymentHistoryPage()),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Checkout Success'),
          content: Text('Thank you for your purchase!'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                final item = widget.cartItems[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle:
                      Text('Rp ${item.price.toString()} x ${item.quantity}'),
                  trailing: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (item.quantity > 0) {
                          item.quantity--;
                          _calculateTotalPrice();
                        }
                      });
                    },
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showCheckoutDialog();
            },
            child: Text('Checkout - Rp $totalPrice'),
          ),
        ],
      ),
    );
  }
}

class PromoPage extends StatelessWidget {
  final List<String> promos = [
    'Beli 2 diskon 40%',
    'Beli 2 gratis 1',
    // Tambahkan promo lain jika diperlukan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promo'),
      ),
      body: ListView.builder(
        itemCount: promos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(promos[index]),
            onTap: () {
              // Panggil fungsi untuk menangani promo tertentu
              _handlePromo(promos[index], context);
            },
          );
        },
      ),
    );
  }

  void _handlePromo(String promo, BuildContext context) {
    // Implementasi logika untuk setiap promo
    if (promo == 'Beli 2 diskon 40%') {
      // Implementasi logika diskon beli 2 diskon 40%
      // Misalnya, tampilkan pesan bahwa promo sedang tidak tersedia
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Promo Beli 2 diskon 40% sedang tidak tersedia.'),
          duration: Duration(seconds: 2),
        ),
      );
    } else if (promo == 'Beli 2 gratis 1') {
      // Implementasi logika beli 2 gratis 1
      // Misalnya, tampilkan pesan bahwa promo sedang tidak tersedia
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Promo Beli 2 gratis 1 sedang tidak tersedia.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
    // Tambahkan implementasi untuk promo lain jika diperlukan
  }
}

class PersenPage extends StatelessWidget {
  final List<String> persenPromos = [
    'Diskon 10%',
    'Diskon 20%',
    'Diskon 30%',
    // Tambahkan promo diskon lain jika diperlukan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persen'),
      ),
      body: ListView.builder(
        itemCount: persenPromos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(persenPromos[index]),
            onTap: () {
              // Panggil fungsi untuk menangani promo diskon persen tertentu
              _handlePersenPromo(persenPromos[index], context);
            },
          );
        },
      ),
    );
  }

  void _handlePersenPromo(String promo, BuildContext context) {
    // Implementasi logika untuk setiap promo diskon persen
    // Misalnya, tampilkan pesan bahwa promo sedang tidak tersedia
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Promo $promo sedang tidak tersedia.'),
        duration: Duration(seconds: 2),
      ),
    );
    // Tambahkan implementasi untuk promo diskon persen lain jika diperlukan
  }
}

class RestaurantDetailPage extends StatelessWidget {
  final Restaurant restaurant;

  RestaurantDetailPage({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Menu:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildMenuList(restaurant.menu, context), // Tambahkan context
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Minuman:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildMenuList(restaurant.drinks, context), // Tambahkan context
          ],
        ),
      ),
    );
  }

  Widget _buildMenuList(List<MenuItem> items, BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          leading: Image.asset(
            item.image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(item.name),
              Row(
                children: [
                  Text(
                    'Rp ${item.price.toString()}',
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      item.quantity++; // Tambahkan 1 ke quantity
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to cart: ${item.name}'),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
