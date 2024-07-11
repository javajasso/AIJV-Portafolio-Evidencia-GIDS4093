import 'package:flutter/material.dart';

class HerMessage extends StatelessWidget {
  const HerMessage({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola XD', style: TextStyle(color: Colors.white),),
            ),
        ),
        const SizedBox(height: 20,),
        _Image()
      ],
    );
  }
}

class _Image extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network("https://th.bing.com/th/id/R.780ee8e92e7eddaa7323d532d7b89b2f?rik=IkZpE%2fpNPzlOPg&riu=http%3a%2f%2fwww.scifinow.co.uk%2fwp-content%2fuploads%2f2015%2f01%2fBig-Hero-6-team.jpg&ehk=LL5lAeyMzLRf9099yBSXzuhkcVl0%2fvBLdPQxcodo%2f4U%3d&risl=&pid=ImgRaw&r=0",
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('recibiendo imagen'),
          );
        },
      ),
    );
  }
}
