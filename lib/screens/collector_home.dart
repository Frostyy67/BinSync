import 'package:flutter/material.dart';

class CollectorHomeScreen extends StatelessWidget {
  const CollectorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String collectorName = "John Doe";
    const int collectionsToday = 15;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("BinSync Collector", style: TextStyle(fontWeight: FontWeight.w700)),
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
                    child: Icon(Icons.local_shipping_rounded),
                    backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(collectorName, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                        Text(
                          "Collections Today: $collectionsToday",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Text('Recent Collections', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),

            _buildActivityTile(
              icon: Icons.person_pin_circle_rounded,
              title: 'Collection from Alex Doe',
              subtitle: 'Thrissur, 10:15 AM',
              points: '+2.5 kg',
              iconColor: Colors.green,
            ),
            _buildActivityTile(
              icon: Icons.person_pin_circle_rounded,
              title: 'Collection from Mini Doe',
              subtitle: 'Edapally, 9:50 AM',
              points: '+1.8 kg',
              iconColor: Colors.green,
            ),
            _buildActivityTile(
              icon: Icons.person_pin_circle_rounded,
              title: 'Collection from BinSync Apt.',
              subtitle: 'Kochi, 9:22 AM',
              points: '+12.1 kg',
              iconColor: Colors.green,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("Opening QR Scanner...");
        },
        label: const Text('Scan Resident QR'),
        icon: const Icon(Icons.qr_code_scanner_rounded),
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
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 0.5,
      child: ListTile(
        leading: Icon(icon, color: iconColor, size: 28),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle),
        trailing: Text(points, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
