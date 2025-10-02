import 'package:ddeelly/core/imports/imports.dart';
import 'package:ddeelly/model/promo_model.dart';
import 'package:ddeelly/view/screens/detail_page/detail_page.dart';
import 'package:ddeelly/view/screens/home/widgets/promo_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PromoCarousel extends StatefulWidget {
  const PromoCarousel({super.key});

  @override
  State<PromoCarousel> createState() => _PromoCarouselState();
}

class _PromoCarouselState extends State<PromoCarousel> {
  int _activeIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
       CarouselSlider.builder(
  itemCount: promos.length,
  itemBuilder: (context, index, realIndex) {
    final promo = promos[index];
    return GestureDetector(
      onTap: () {
        push(context, const DetailPage());
      },
      child: PromoCard(
        title: promo.title,
        subtitle: promo.subtitle,
        price: promo.price,
        discount: promo.discount,
        imagePath: promo.image,
      ),
    );
  },
  options: CarouselOptions(
    height: 200,
    viewportFraction: 1.0, 
    enlargeCenterPage: false,
    autoPlay: true,
    autoPlayInterval: const Duration(seconds: 3),
    onPageChanged: (index, reason) {
      setState(() => _activeIndex = index);
    },
  ),
),


        Indicator(activeIndex: _activeIndex, count: promos.length),
      ],
    );
  }
}


class Indicator extends StatelessWidget {
  final int activeIndex;
  final int count;

  const Indicator({super.key, required this.activeIndex, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
          width: activeIndex == index ? 16 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: activeIndex == index ? Colors.green : Colors.grey[300],
            borderRadius: BorderRadius.circular(20),
          ),
        );
      }),
    );
  }
}
