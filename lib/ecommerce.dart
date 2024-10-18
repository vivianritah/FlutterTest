import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery address',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            Text(
              '92 High Street, London',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search the entire shop",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Delivery Offer Section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Text(
                      'Delivery is ',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      '50% cheaper',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Categories Section
              const Text(
                'Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 100, // Adjust height as needed
                child: ListView(
                  scrollDirection: Axis.horizontal, // Makes ListView horizontal
                  children: [
                    buildCategoryItem(Icons.phone_iphone, 'Phones'),
                    buildCategoryItem(Icons.videogame_asset, 'Consoles'),
                    buildCategoryItem(Icons.laptop_mac, 'Laptops'),
                    buildCategoryItem(Icons.camera_alt, 'Cameras'),
                    buildCategoryItem(Icons.directions_car, 'Auto'),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Flash Sale Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Flash Sale',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See all'),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // GridView for Flash Sale Items
              GridView.builder(
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(), // Disable scrolling of GridView to allow outer scroll
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7, // Aspect ratio of each item
                ),
                itemCount: 2, // Number of items
                itemBuilder: (context, index) {
                  return buildFlashSaleItem(index);
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Catalog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  // Function to build each category item
  Widget buildCategoryItem(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[200],
            child: Icon(icon, color: Colors.black),
          ),
          const SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }

  // Function to build each flash sale item
  Widget buildFlashSaleItem(int index) {
    List<Map<String, String>> items = [
      {
        'image':
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.wired.com%2Fstory%2Fuse-your-phone-as-webcam%2F&psig=AOvVaw1ykHRiYMeUmwhOYXoqdBDy&ust=1729100614543000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNjPlvL3kIkDFQAAAAAdAAAAABAJ', // Placeholder image, replace with actual URL
        'name': 'Apple iPhone 15 Pro 128GB',
        'newPrice': '£699.00',
        'oldPrice': '£739.00'
      },
      {
        'image':
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepik.com%2Fphotos%2Fphone&psig=AOvVaw1ykHRiYMeUmwhOYXoqdBDy&ust=1729100614543000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNjPlvL3kIkDFQAAAAAdAAAAABAE', // Placeholder image, replace with actual URL
        'name': 'Samsung Galaxy Buds Pro',
        'newPrice': '£69.00',
        'oldPrice': '£85.00'
      }
    ];

    return Card(
      child: Column(
        children: [
          Image.network(
            items[index]['image']!,
            height: 120,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  items[index]['name']!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      items[index]['newPrice']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      items[index]['oldPrice']!,
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
