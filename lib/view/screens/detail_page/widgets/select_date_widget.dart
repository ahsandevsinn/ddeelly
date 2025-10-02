import 'package:ddeelly/core/imports/imports.dart';
import 'package:intl/intl.dart';
class SelectDateWidget extends StatefulWidget {
  const SelectDateWidget({super.key});

  @override
  State<SelectDateWidget> createState() => _SelectDateWidgetState();
}

class _SelectDateWidgetState extends State<SelectDateWidget> {
  @override
  Widget build(BuildContext context) {

    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
            text: AppStrings.selectDate,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.mediumGrey),
        Gap(10.0),
        CustomDateInput(),
     

      ],
    );
  }
}

class CustomDateInput extends StatefulWidget {
  const CustomDateInput({super.key});

  @override
  State<CustomDateInput> createState() => _CustomDateInputState();
}

class _CustomDateInputState extends State<CustomDateInput> {
  
  DateTime _selectedDate = DateTime.now();

  final DateFormat _dateFormatter = DateFormat('dd MMM yyyy');

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000), 
      lastDate: DateTime(2100), 
      builder: (context, child) {
        
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor:AppColors.primary,
            hintColor: AppColors.primary,
            colorScheme: const ColorScheme.light(primary: AppColors.primary,),
            buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    
  

    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: AppColors.mediumGrey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
          
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            AppText(
           text:    _dateFormatter.format(_selectedDate),
         
                fontSize: 18,
                color: Colors.grey, 
              ),
            
            const Icon(
              Icons.calendar_month, 
              color: Colors.grey,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
