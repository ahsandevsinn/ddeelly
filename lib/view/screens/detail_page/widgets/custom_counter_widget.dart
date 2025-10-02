import 'package:ddeelly/core/imports/imports.dart';
import 'package:ddeelly/viewmodel/detail_page_view_model.dart';
import 'package:flutter/material.dart';

class ReservationCounter extends StatefulWidget {
  const ReservationCounter({super.key});

  @override
  State<ReservationCounter> createState() => _ReservationCounterState();
}

class _ReservationCounterState extends State<ReservationCounter> {

  @override
  Widget build(BuildContext context) {
    return Consumer<DetailPageViewModel>(
      builder: (context,detailPageViewModel,child) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               const AppText(
                 text:    AppStrings.reservationFee,
                   
                      fontSize: 16,
                      color: Colors.grey, 
                  
                  ),
                  const SizedBox(height: 4),
                  AppText(text:
                    '${detailPageViewModel.totalFee.toInt()} AED', 
                  
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    
                  ),
                ],
              ),
        
        
              Row(
                children: [
                  
                  CircularButton(
                    icon: Icons.remove,
                    onPressed:(){
                 detailPageViewModel.decrement();
                    },
                    color: AppColors.black,
                  ),
                  
                 
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: AppText(
                    text:   '${detailPageViewModel.quantity}',
                      
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      
                    ),
                  ),
                  
           
                  CircularButton(
                    icon: Icons.add,
                    onPressed:  (){
                      detailPageViewModel.increment()
;                    },
                    color: AppColors.black,
                  ),
                ],
              ),
            ],
          );
      }
    );
    
  }
}



class CircularButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color color;

  const CircularButton({
    required this.icon,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: color, width: 2), 
        ),
        child: Icon(
          icon,
          size: 20,
          color: color,
        ),
      ),
    );
  }
}