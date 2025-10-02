import 'package:ddeelly/core/imports/imports.dart';
import 'package:ddeelly/view/screens/detail_page/widgets/detail_page_body_widget.dart';
import 'package:ddeelly/view/screens/detail_page/widgets/detail_page_header_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child:Column(
          children: [
            Column(
              children: [
                DetailPageHeaderWidget(),
              ],
            ),
            DetailPageBodyWidget(),
          ],
        ),
      ),
    );
  }
}
