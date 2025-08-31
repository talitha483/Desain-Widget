import 'package:flutter/material.dart';

class OvoHome extends StatelessWidget {
  const OvoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "OVO",
                    style: TextStyle(
                      color: Colors.purple[900],
                      fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.discount, color: Colors.white, size: 18),
                        SizedBox(width: 5),
                        Text("Promo",
                            style: TextStyle(color: Colors.white, fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Kartu Saldo dengan gradient
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF7F00FF), Color(0xFF3F2B96)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("OVO Cash",
                      style: TextStyle(color: Colors.white70, fontSize: 14)),
                  Row(
                    children: const [
                      Text("Total Saldo",
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      SizedBox(width: 8),
                      Icon(Icons.visibility_off, color: Colors.white, size: 18),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Rp 50,000.000.000",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold)),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.stars, color: Colors.white, size: 18),
                            SizedBox(width: 5),
                            Text("9.789 Points",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Menu TopUp, Transfer, Tarik Tunai, History (berwarna)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      _menuIcon(Icons.add_circle, "Top Up", Color.fromARGB(255, 250, 252, 253)),
                      _menuIcon(Icons.arrow_circle_up, "Transfer", Color.fromARGB(255, 248, 250, 248)),
                      _menuIcon(Icons.download, "Tarik Tunai", Color.fromARGB(255, 248, 248, 247)),
                      _menuIcon(Icons.history, "History", Color.fromARGB(255, 249, 247, 248)),
                    ],
                  ),
                ],
              ),
            ),

            // Card Promo Putih
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 5,
                      offset: const Offset(0, 3))
                ],
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.yellow,
                    child: Icon(Icons.savings, color: Colors.deepPurple),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      "Mau bunga 5%? Yuk, upgrade ke OVO Nabung! Mudah, cepet, dan cuan! ✨",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    child: const Text("Cek OVO Nabung",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  )
                ],
              ),
            ),

            // Menu Favorit
            // Tambahkan setelah container utama saldo
// Container untuk pilihan menu
Container(
  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
  decoration: BoxDecoration(
    color: Colors.white.withOpacity(0.9), // transparan tapi kelihatan
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 6,
        offset: Offset(0, 3),
      ),
    ],
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      // Menu Favorit
      GestureDetector(
        onTap: () {
          // aksi jika diklik
        },
        child: Column(
          children: [
            Text(
              "Favorit",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 4),
            Container(
              height: 3,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),

      // Menu Pilihan Lain
      GestureDetector(
        onTap: () {},
        child: Text(
          "Pilihan Lain",
          style: TextStyle(color: Colors.black87),
        ),
      ),

      // Menu Grab
      GestureDetector(
        onTap: () {},
        child: Text(
          "Grab",
          style: TextStyle(color: Colors.black87),
        ),
      ),

      // Menu Finansial
      GestureDetector(
        onTap: () {},
        child: Text(
          "Finansial",
          style: TextStyle(color: Colors.black87),
        ),
      ),
    ],
  ),
),


            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              children: const [
                _favoriteMenu(Icons.account_balance_wallet, "Nabung",
                    Colors.deepPurple),
                _favoriteMenu(Icons.request_page, "Pinjaman", Colors.red),
                _favoriteMenu(Icons.qr_code, "Uang Elektronik", Colors.blue),
                _favoriteMenu(Icons.credit_card, "Kredit", Colors.orange),
                _favoriteMenu(Icons.phone_android, "Pulsa/Data", Colors.blue),
                _favoriteMenu(Icons.bolt, "PLN", Colors.yellow),
                _favoriteMenu(Icons.water_drop, "Air PDAM", Colors.lightBlue),
                _favoriteMenu(Icons.tv, "Internet & TV", Colors.redAccent),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Widget menu icon berwarna
class _menuIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  const _menuIcon(this.icon, this.label, this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, size: 28, color: color),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }
}

// Widget grid favorit dengan warna berbeda
class _favoriteMenu extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  const _favoriteMenu(this.icon, this.label, this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color.withOpacity(0.15),
          child: Icon(icon, color: color),
        ),
        const SizedBox(height: 6),
        Text(label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, color: Colors.black87)),
      ],
    );
  }
}
