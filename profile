import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  String _getRandomAvatarUrl() {
    final random = Random();
    final randomSeed = random.nextInt(1000);
    return 'https://api.dicebear.com/6.x/avataaars/svg?seed=$randomSeed';
  }

  @override
  Widget build(BuildContext context) {
    final avatarUrl = _getRandomAvatarUrl();

    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: SvgPicture.network(avatarUrl),
            ),
            const SizedBox(height: 16),
            const Text(
              'Maria Mangatt',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'An engineering student at Rajagiri School of Engineering and Technology, studying Computer Science with a focus on Business Systems',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: const Text('Show Less'),
            ),
            const SizedBox(height: 16),
            const Icon(Icons.favorite, color: Colors.red),
            const Text('Like Profile'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Unfollow'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(icon: const Icon(Icons.email), onPressed: () {}),
                IconButton(icon: const Icon(Icons.phone), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: ProfileCard(),
      ),
    ),
  ));
}
