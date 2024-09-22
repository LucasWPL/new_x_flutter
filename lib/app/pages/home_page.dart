import 'package:flutter/material.dart';
import 'package:new_x/app/components/tweet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Tweet(
            name: 'Pedro Lucas',
            username: 'batatinha.ceo',
            text: 'esse definitivamento é o meu último tweet da noite',
          ),
          Tweet(
            name: 'Pedro Lucas',
            username: 'batatinha.ceo',
            text:
                'Meu nome é Pedro Lucas e eu sou o dono do X. Comprei este aplicativo pois meu pai tem várias minas de esmeraldas.',
          ),
          Tweet(
            name: 'Pedro Lucas',
            username: 'batatinha.ceo',
            text: 'esse app aqui não precisa de VPN haha',
          ),
        ],
      ),
    );
  }
}
