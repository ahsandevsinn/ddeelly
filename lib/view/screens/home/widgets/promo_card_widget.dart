import 'package:ddeelly/core/imports/imports.dart';

class PromoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String discount;
  final String imagePath;

  const PromoCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.discount,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
        double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
   
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.red.withOpacity(0.7),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            
            Positioned(
              top: 60,
              left: 16,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  discount,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: Text(
                price,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 28,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: subtitle,
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                  const SizedBox(height: 4),
                  AppText(
                    text: title,
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
