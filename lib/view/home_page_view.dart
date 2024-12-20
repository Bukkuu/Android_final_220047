import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int _currentIndex = 0;

  // Pages displayed for each tab
  final List<Widget> _pages = [
    const HomeContent(), // Home Page Content
    const Center(
      child: Text(
        'Orders Page',
        style: TextStyle(
            fontSize: 24, fontFamily: 'Montserrat-Bold', color: Colors.brown),
      ),
    ),
    const Center(
      child: Text(
        'My List Page',
        style: TextStyle(
            fontSize: 24, fontFamily: 'Montserrat-Bold', color: Colors.brown),
      ),
    ),
    const Center(
      child: Text(
        'Profile Page',
        style: TextStyle(
            fontSize: 24, fontFamily: 'Montserrat-Bold', color: Colors.brown),
      ),
    ),
    const Center(
      child: Text(
        'Logout Page',
        style: TextStyle(
            fontSize: 24, fontFamily: 'Montserrat-Bold', color: Colors.brown),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6D4C41),
        title: const Text(
          'Gemsera',
          style: TextStyle(
            fontFamily:
                'Montserrat-Italic', // Montserrat-Italic for AppBar title
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'My List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        selectedItemColor: Colors.brown[600],
        unselectedItemColor: Colors.brown[300],
      ),
    );
  }
}

// Home Page Content as a Separate StatelessWidget
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Hero Section
          Stack(
            children: [
              Image.asset(
                'assets/images/1.jpeg',
                fit: BoxFit.cover,
                height: 250,
                width: double.infinity,
              ),
              const Positioned(
                left: 20,
                top: 40,
                child: Text(
                  'Gemsera',
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Montserrat-Bold',
                    color: Colors.brown,
                    shadows: [
                      Shadow(
                        blurRadius: 10,
                        color: Colors.black45,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Text(
              'Where Beauty Meets Purpose',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Montserrat-Bold', // Montserrat-Bold
                color: Color(0xFF6D4C41),
              ),
            ),
          ),
          // Image Grid
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/2.jpeg',
                        height: 120,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Elegant Earrings',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'Montserrat-Bold'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/3.jpeg',
                        height: 120,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Sophisticated Jewelry',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'Montserrat-Bold'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          // Second Image Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/4.jpeg',
                        height: 120,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Classic Elegance',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'Montserrat-Bold'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/5.jpeg',
                        height: 120,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Timeless Designs',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'Montserrat-Bold'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Footer Section
          Container(
            color: const Color(0xFF6D4C41),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  'Stay Inspired with Gemsera',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat-Bold',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Explore our blog for the latest in jewelry trends, sustainability practices, and more.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat-Bold',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Enter Email Address',
                          hintStyle: const TextStyle(
                            fontFamily:
                                'Montserrat-Italic', // Montserrat-Italic
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4E342E),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20),
                      ),
                      child: const Text(
                        'Send Email',
                        style: TextStyle(
                          fontFamily: 'Montserrat-Italic', // Montserrat-Italic
                        ),
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
