import 'package:ddeelly/core/imports/imports.dart';


class DealOfTheDay extends StatelessWidget {
  const DealOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            padding: const EdgeInsets.symmetric(horizontal: 0),
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 12),
                child: DealCard(),
              );
            },
          ),
        ),
      ],
    );
  }
}

class DealCard extends StatelessWidget {
  const DealCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  AppImages.restP,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black54.withOpacity(0.4),
                  ),
                  child: const AppText(
                    text: "30% off",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Positioned(
                top: 8,
                right: 8,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 26,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: "Ristorante – Niko Romito",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                SizedBox(height: 4),
                AppText(
                  text: "Dine and enjoy a 20% Discount",
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.grey),
                SizedBox(width: 4),
                Expanded(
                  child: AppText(
                    text: "Ristorante L’Olivo at Al Mah... +5 more",
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                AppText(
                  text: "5.0",
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(width: 4),
                Icon(Icons.star, size: 16, color: Colors.green),
                SizedBox(width: 4),
                AppText(
                  text: "(7 reviews)",
                  color: Colors.grey,
                  fontSize: 12,
                ),
                Spacer(),
                AppText(
                  text: "Sold: 7350",
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
