import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import '../../theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final controller = CreateSplitController();

  late List<Widget> pages;

  @override
  void initState() {
    pages = [
      StepOnePage(
        onChanged: (value) {
          controller.setEventName(value);
          setState(() {});
        },
      ),
      StepTwoPage(),
      StepThreePage(),
    ];
    super.initState();
  }

  var index = 0;

  void nextPage() {
    if (index < 2) {
      index++;
      setState(() {});
    }
  }

  void backPage() {
    if (index > 0) {
      index--;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      appBar: CreateSplitAppBar(
        actualPage: index,
        onTapBack: backPage,
        size: pages.length,
      ),
      body: pages[index],
      bottomNavigationBar: BottomStepperBar(
        enabledButtons: controller.enableNavigateButton(),
        onTapCancel: () {},
        onTapNext: nextPage,
      ),
    );
  }
}
