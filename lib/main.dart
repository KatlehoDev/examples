
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Profile(
      name: 'Katleho Mphomela',
      bio: 'Aspiring Software Engineer',
      avatarUrl: 'kat1.jpeg',
    ),
  );
}

class Profile extends StatelessWidget {
  final String name;
  final String bio;
  final String avatarUrl;

  const Profile({
    super.key,
    required this.name,
    required this.bio,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(avatarUrl),
                    radius: 50,
                  ),
                  const SizedBox(height: 10),

                  Text(
                    name,
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    bio,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.alternate_email),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
