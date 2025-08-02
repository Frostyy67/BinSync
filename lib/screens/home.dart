import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String username = "Jane Doe";
  String role = "collector";
  String points = "420";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("BinSync", style: TextStyle(fontWeight: FontWeight.w700),),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.settings_rounded)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person),
                    backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(username, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                        Text("$points points", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Text('Recent Activity', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            _buildActivityTile(
              icon: Icons.recycling_rounded,
              title: 'Collected Plastic Waste',
              subtitle: 'Today, 9:41 AM',
              points: '+50 Points',
              iconColor: Colors.blue,
            ),
            _buildActivityTile(
              icon: Icons.compost_rounded,
              title: 'Collected Glass Waste',
              subtitle: 'Yesterday, 2:15 PM',
              points: '+35 Points',
              iconColor: Colors.brown,
            ),
            _buildActivityTile(
              icon: Icons.shopping_bag_rounded,
              title: 'Redeemed Green Points',
              subtitle: '3 days ago',
              points: '-200 Points',
              iconColor: Colors.orange,
              pointsColor: Colors.red,
            ),

            const SizedBox(height: 24),

           
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
        },
        label: const Text('Schedule Collection'),
        icon: const Icon(Icons.schedule),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildActivityTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required String points,
    Color iconColor = Colors.green,
    Color pointsColor = Colors.green,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 0.5,
      child: ListTile(
        leading: Icon(icon, color: iconColor, size: 28),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle),
        trailing: Text(points, style: TextStyle(color: pointsColor, fontWeight: FontWeight.bold)),
      ),
    );
  }
}


