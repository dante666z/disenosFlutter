import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Imagen
        const Image(image: AssetImage('assets/landscape.jpg')),
        // Title widget
        const Title(),
        //Button Section
        const ButtonSection(),
        // Description
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const Text(
            'Aliquip consectetur aliqua aliquip tempor tempor ut irure sunt. Laboris esse veniam minim Lorem voluptate et nostrud ipsum mollit occaecat cillum ut aliqua. Ut eiusmod Lorem ea in consectetur est id labore ipsum nisi Lorem deserunt cillum officia. Eu amet aute ex pariatur anim do amet Lorem non pariatur minim magna magna. Aliqua culpa anim pariatur consequat minim magna esse sunt aliquip qui ex Lorem.',
          ),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Laje Campgorund',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg Switzerland',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(
            icon: Icons.phone,
            text: 'Call',
          ),
          CustomButton(
            icon: Icons.route_outlined,
            text: 'Route',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'Share',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(text)
      ],
    );
  }
}
