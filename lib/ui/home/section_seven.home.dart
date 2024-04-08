import 'package:avatar_glow/avatar_glow.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:layout/layout.dart';
import 'package:website/ui/widgets/action_button.dart';

class SectionSevenHome extends StatefulWidget {
  const SectionSevenHome({
    super.key,
    this.modal = false,
  });

  final bool modal;

  @override
  State<SectionSevenHome> createState() => _SectionSevenHomeState();
}

class _SectionSevenHomeState extends State<SectionSevenHome> {
  PageController mainPageController = PageController(
    initialPage: 0,
  );
  int mainStep = 0;

  PageController pageController = PageController(
    initialPage: 0,
  );
  int currentStep = 0;

  TextEditingController wohnortController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  String? selectedObjectArt;
  String? selectedStock;
  String? selectedAnzahlZimmer;
  TextEditingController wohnflaecheController = TextEditingController();

  String? selectedSex;
  bool? uploadMedia;

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.image,
    );

    if (result != null) {}
  }

  next() {
    pageController
        .nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    )
        .then((_) {
      setState(() {
        currentStep += 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: widget.modal ? 0 : 50,
        horizontal: context.breakpoint > LayoutBreakpoint.xs
            ? 100
            : widget.modal
                ? 0
                : 20,
      ),
      color: Colors.white,
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                height: 1,
              ),
              children: [
                TextSpan(
                  text: 'Kostenloses\n',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                const TextSpan(
                  text: 'Umzugsangebot einholen',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              mainStep = 0;
                            });
                            mainPageController.animateToPage(0,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.ease);
                          },
                          child: Icon(
                            Icons.email,
                            size: 45,
                            color: mainStep == 0
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                          ),
                        ),
                      ),
                      const VerticalDivider(),
                      AvatarGlow(
                        animate: mainStep != 1,
                        glowColor: Theme.of(context).primaryColor,
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                mainStep = 1;
                              });
                              mainPageController.animateToPage(1,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.phone,
                                  size: 45,
                                  color: mainStep == 1
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: context.breakpoint > LayoutBreakpoint.md
                      ? MediaQuery.of(context).size.width * 0.6
                      : null,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: ExpandablePageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: mainPageController,
                    children: [
                      mainViewEmail(context),
                      mainViewPhone(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding mainViewPhone(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (context.breakpoint > LayoutBreakpoint.md)
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/img/privatumzueg.webp',
                ),
              ),
            ),
          if (context.breakpoint > LayoutBreakpoint.md) const Gap(20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Theme.of(context).primaryColor,
                        size: 30,
                      ),
                      const Gap(5),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Telefonisch anrufen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            Gap(20),
                            Text(
                              '0172 - 30 50 125',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.schedule,
                        color: Theme.of(context).primaryColor,
                        size: 30,
                      ),
                      const Gap(5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Arbeitszeiten',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            const Gap(20),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Montag',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '7:00 - 18:00 Uhr',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Dienstag',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '7:00 - 18:00 Uhr',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Mittwoch',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '7:00 - 18:00 Uhr',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Donnerstag',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '7:00 - 18:00 Uhr',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Freitag',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '7:00 - 18:00 Uhr',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Samstag',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '7:00 - 18:00 Uhr',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Sonntag',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Geschlossen',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                            const Gap(20),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 15,
                                    )
                                  ],
                                ),
                                child: ActionButton(
                                  text: 'JETZT ANRUFEN',
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  borderSize: 2,
                                  glowSize: 2,
                                  borderColor:
                                      Theme.of(context).colorScheme.secondary,
                                  shadowColor: Colors.grey,
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding mainViewEmail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                stepItem(1, 'Angebot'),
                stepItem(2, 'Auszug'),
                stepItem(3, 'Einzug'),
                stepItem(4, 'Daten'),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ExpandablePageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              children: [
                firstView(context),
                secondView(context),
                thirdView(context),
                fourthView(context)
              ],
            ),
          ),
          const Gap(20),
          ElevatedButton(
            onPressed: next,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Weiter',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column fourthView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'An wen dürften wir das Umzugsangebot senden?',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 30,
          ),
        ),
        RadioListTile<String>(
          title: const Text('Mann'),
          value: 'Mann',
          groupValue: selectedSex,
          onChanged: (value) {
            setState(() {
              selectedSex = value;
            });
          },
        ),
        RadioListTile<String>(
          title: const Text('Frau'),
          value: 'Frau',
          groupValue: selectedSex,
          onChanged: (value) {
            setState(() {
              selectedSex = value;
            });
          },
        ),
        const Gap(20),
        const Text(
          'Vorname',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Max',
          ),
        ),
        const Gap(20),
        const Text(
          'Nachname',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Mustermann',
          ),
        ),
        const Gap(20),
        const Text(
          'Telefonnummer',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: '+49 1234 5678 912',
          ),
        ),
        const Gap(20),
        const Text(
          'Email',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'max@example.com',
          ),
        ),
        const Gap(20),
        const Text(
          'Wann sind Sie am besten erreichbar?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            const Gap(5),
            const Text('Morgens von 8:00 bis 11:30 Uhr')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            const Gap(5),
            const Text('Mittags von 11:30 bis 13:00 Uhr')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            const Gap(5),
            const Text('Abends ab 17 Uhr')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            const Gap(5),
            const Text('Durchgehend erreichbar')
          ],
        ),
        const Gap(20),
        const Text(
          'Möchten Sie Bilder hochladen?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Theme.of(context).primaryColor,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: _pickFile,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.upload,
                        size: 40,
                        color: Theme.of(context).primaryColor,
                      ),
                      const Text(
                        'Datei hochladen',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Column thirdView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Wie ist Ihre aktuelle Wohnsituation?',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 30,
          ),
        ),
        const Gap(20),
        const Text(
          'Neuer Wohnort',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: '88888 Musterstadt',
          ),
        ),
        const Gap(20),
        const Text(
          'Straße / Nr.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'Musterstraße 123',
          ),
        ),
        const Text(
          'Objectart',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<String>(
          value: null,
          hint: const Text('Bitte auswählen'),
          isExpanded: true,
          dropdownColor: Colors.white,
          onChanged: (value) {
            setState(() {
              selectedObjectArt = value ?? '';
            });
          },
          items: const [
            DropdownMenuItem<String>(
              value: 'Objektart',
              child: Text('Objektart'),
            ),
            DropdownMenuItem<String>(
              value: 'Wohnung',
              child: Text('Wohnung'),
            ),
            DropdownMenuItem<String>(
              value: 'Maisonettewohnung',
              child: Text('Maisonettewohnung'),
            ),
            DropdownMenuItem<String>(
              value: 'WG',
              child: Text('WG'),
            ),
            DropdownMenuItem<String>(
              value: 'Einstöckiges Haus',
              child: Text('Einstöckiges Haus'),
            ),
            DropdownMenuItem<String>(
              value: 'Zweistöckiges Haus',
              child: Text('Zweistöckiges Haus'),
            ),
            DropdownMenuItem<String>(
              value: 'Haus mit 4+ Etagen',
              child: Text('Haus mit 4+ Etagen'),
            ),
            DropdownMenuItem<String>(
              value: 'Lagerraum',
              child: Text('Lagerraum'),
            ),
            DropdownMenuItem<String>(
              value: 'Büro',
              child: Text('Büro'),
            ),
          ],
        ),
        const Text(
          'Stockwerk',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<String>(
          value: null,
          hint: const Text('Bitte auswählen'),
          isExpanded: true,
          dropdownColor: Colors.white,
          onChanged: (value) {
            setState(() {
              selectedStock = value ?? '';
            });
          },
          items: const [
            DropdownMenuItem<String>(
              value: 'Untergeschoss',
              child: Text('Untergeschoss'),
            ),
            DropdownMenuItem<String>(
              value: 'Erdgeschoss',
              child: Text('Erdgeschoss'),
            ),
            DropdownMenuItem<String>(
              value: 'Hochparterre',
              child: Text('Hochparterre'),
            ),
            DropdownMenuItem<String>(
              value: '1. Stock',
              child: Text('1. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '2. Stock',
              child: Text('2. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '3. Stock',
              child: Text('3. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '4. Stock',
              child: Text('4. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '5. Stock',
              child: Text('5. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '6. Stock',
              child: Text('6. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '7. Stock',
              child: Text('7. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '8. Stock',
              child: Text('8. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '9. Stock',
              child: Text('9. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '10+. Stock',
              child: Text('10+. Stock'),
            ),
          ],
        ),
        const Gap(20),
        const Text(
          'Zusätzliche Optionen',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            const Gap(5),
            const Text('Möbelabbau')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            const Gap(5),
            const Text('Lampen abmontieren')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            const Gap(5),
            const Text('Hausrat einpacken')
          ],
        ),
        const Gap(20),
        const Text(
          'Ist ein Lift vorhanden?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<String>(
          value: null,
          hint: const Text('Bitte auswählen'),
          isExpanded: true,
          dropdownColor: Colors.white,
          onChanged: (value) {},
          items: const [
            DropdownMenuItem<String>(
              value: 'Ja',
              child: Text('Ja'),
            ),
            DropdownMenuItem<String>(
              value: 'Nein',
              child: Text('Nein'),
            ),
          ],
        ),
        const Gap(20),
        const Text(
          'Zusätzliche Informationen',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'z.B. die Tiefgarage',
          ),
        ),
      ],
    );
  }

  Column secondView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Wie ist Ihre neue Wohnsituation?',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 30,
          ),
        ),
        const Gap(20),
        const Text(
          'Objectart',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<String>(
          value: null,
          hint: const Text('Bitte auswählen'),
          isExpanded: true,
          dropdownColor: Colors.white,
          onChanged: (value) {
            setState(() {
              selectedObjectArt = value ?? '';
            });
          },
          items: const [
            DropdownMenuItem<String>(
              value: 'Objektart',
              child: Text('Objektart'),
            ),
            DropdownMenuItem<String>(
              value: 'Wohnung',
              child: Text('Wohnung'),
            ),
            DropdownMenuItem<String>(
              value: 'Maisonettewohnung',
              child: Text('Maisonettewohnung'),
            ),
            DropdownMenuItem<String>(
              value: 'WG',
              child: Text('WG'),
            ),
            DropdownMenuItem<String>(
              value: 'Einstöckiges Haus',
              child: Text('Einstöckiges Haus'),
            ),
            DropdownMenuItem<String>(
              value: 'Zweistöckiges Haus',
              child: Text('Zweistöckiges Haus'),
            ),
            DropdownMenuItem<String>(
              value: 'Haus mit 4+ Etagen',
              child: Text('Haus mit 4+ Etagen'),
            ),
            DropdownMenuItem<String>(
              value: 'Lagerraum',
              child: Text('Lagerraum'),
            ),
            DropdownMenuItem<String>(
              value: 'Büro',
              child: Text('Büro'),
            ),
          ],
        ),
        const Gap(20),
        const Text(
          'Stockwerk',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<String>(
          value: null,
          hint: const Text('Bitte auswählen'),
          isExpanded: true,
          dropdownColor: Colors.white,
          onChanged: (value) {
            setState(() {
              selectedStock = value ?? '';
            });
          },
          items: const [
            DropdownMenuItem<String>(
              value: 'Untergeschoss',
              child: Text('Untergeschoss'),
            ),
            DropdownMenuItem<String>(
              value: 'Erdgeschoss',
              child: Text('Erdgeschoss'),
            ),
            DropdownMenuItem<String>(
              value: 'Hochparterre',
              child: Text('Hochparterre'),
            ),
            DropdownMenuItem<String>(
              value: '1. Stock',
              child: Text('1. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '2. Stock',
              child: Text('2. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '3. Stock',
              child: Text('3. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '4. Stock',
              child: Text('4. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '5. Stock',
              child: Text('5. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '6. Stock',
              child: Text('6. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '7. Stock',
              child: Text('7. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '8. Stock',
              child: Text('8. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '9. Stock',
              child: Text('9. Stock'),
            ),
            DropdownMenuItem<String>(
              value: '10+. Stock',
              child: Text('10+. Stock'),
            ),
          ],
        ),
        const Gap(20),
        const Text(
          'Anzahl Zimmer',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<String>(
          value: null,
          hint: const Text('Bitte auswählen'),
          isExpanded: true,
          dropdownColor: Colors.white,
          onChanged: (value) {
            setState(() {
              selectedAnzahlZimmer = value ?? '';
            });
          },
          items: const [
            DropdownMenuItem<String>(
              value: '1',
              child: Text('1'),
            ),
            DropdownMenuItem<String>(
              value: '1.5',
              child: Text('1.5'),
            ),
            DropdownMenuItem<String>(
              value: '2',
              child: Text('2'),
            ),
            DropdownMenuItem<String>(
              value: '2.5',
              child: Text('2.5'),
            ),
            DropdownMenuItem<String>(
              value: '3',
              child: Text('3'),
            ),
            DropdownMenuItem<String>(
              value: '3.5',
              child: Text('3.5'),
            ),
            DropdownMenuItem<String>(
              value: '4',
              child: Text('4'),
            ),
            DropdownMenuItem<String>(
              value: '4.5',
              child: Text('4.5'),
            ),
            DropdownMenuItem<String>(
              value: '5',
              child: Text('5'),
            ),
            DropdownMenuItem<String>(
              value: '5.5',
              child: Text('5.5'),
            ),
            DropdownMenuItem<String>(
              value: '6',
              child: Text('6'),
            ),
            DropdownMenuItem<String>(
              value: '6.5',
              child: Text('6.5'),
            ),
            DropdownMenuItem<String>(
              value: '7',
              child: Text('7'),
            ),
            DropdownMenuItem<String>(
              value: '7.5',
              child: Text('7.5'),
            ),
            DropdownMenuItem<String>(
              value: '8',
              child: Text('8'),
            ),
            DropdownMenuItem<String>(
              value: '8.5',
              child: Text('8.5'),
            ),
          ],
        ),
        const Gap(20),
        const Text(
          'Wohnfläche in m²',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          controller: wohnflaecheController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: '100',
          ),
        ),
        const Gap(20),
        const Text(
          'Anzahl umziehender Personen',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<String>(
          value: null,
          hint: const Text('Bitte auswählen'),
          isExpanded: true,
          dropdownColor: Colors.white,
          onChanged: (value) {
            setState(() {
              selectedAnzahlZimmer = value ?? '';
            });
          },
          items: const [
            DropdownMenuItem<String>(
              value: '1 Person',
              child: Text('1 Person'),
            ),
            DropdownMenuItem<String>(
              value: '2 Personen',
              child: Text('2 Personen'),
            ),
            DropdownMenuItem<String>(
              value: '3 Personen',
              child: Text('3 Personen'),
            ),
            DropdownMenuItem<String>(
              value: '4 Personen',
              child: Text('4 Personen'),
            ),
            DropdownMenuItem<String>(
              value: '5 Personen',
              child: Text('5 Personen'),
            ),
            DropdownMenuItem<String>(
              value: '6 Personen',
              child: Text('6 Personen'),
            ),
            DropdownMenuItem<String>(
              value: '6+ Personen',
              child: Text('6+ Personen'),
            ),
          ],
        ),
        const Gap(20),
        const Text(
          'Wie viele Umzugskartons müssen gezügelt werden?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<String>(
          value: null,
          hint: const Text('Bitte auswählen'),
          isExpanded: true,
          dropdownColor: Colors.white,
          onChanged: (value) {},
          items: const [
            DropdownMenuItem<String>(
              value: 'Keine',
              child: Text('Keine'),
            ),
            DropdownMenuItem<String>(
              value: '5-10 Kisten',
              child: Text('5-10 Kisten'),
            ),
            DropdownMenuItem<String>(
              value: '10-20 Kisten',
              child: Text('10-20 Kisten'),
            ),
            DropdownMenuItem<String>(
              value: '20-30 Kisten',
              child: Text('20-30 Kisten'),
            ),
            DropdownMenuItem<String>(
              value: '30-40 Kisten',
              child: Text('30-40 Kisten'),
            ),
            DropdownMenuItem<String>(
              value: '40-50 Kisten',
              child: Text('40-50 Kisten'),
            ),
            DropdownMenuItem<String>(
              value: 'Über 50 Kisten',
              child: Text('Über 50 Kisten'),
            ),
          ],
        ),
        const Gap(20),
        const Text(
          'Zusätzliche Optionen',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            const Gap(5),
            const Text('Möbelabbau')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            const Gap(5),
            const Text('Lampen abmontieren')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            const Gap(5),
            const Text('Hausrat einpacken')
          ],
        ),
        const Gap(20),
        const Text(
          'Ist ein Lift vorhanden?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        DropdownButton<String>(
          value: null,
          hint: const Text('Bitte auswählen'),
          isExpanded: true,
          dropdownColor: Colors.white,
          onChanged: (value) {},
          items: const [
            DropdownMenuItem<String>(
              value: 'Ja',
              child: Text('Ja'),
            ),
            DropdownMenuItem<String>(
              value: 'Nein',
              child: Text('Nein'),
            ),
          ],
        ),
        const Gap(20),
        const Text(
          'Zusätzliche Informationen',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'z.B. die Tiefgarage',
          ),
        ),
      ],
    );
  }

  Column firstView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kostenloses Umzugsangebot einholen',
          textAlign: context.breakpoint > LayoutBreakpoint.xs
              ? null
              : TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: context.breakpoint > LayoutBreakpoint.xs ? 30 : 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_right_rounded,
              color: Theme.of(context).primaryColor,
            ),
            const Expanded(
              child: Text(
                'Sie erhalten ihr Umzugsangebot noch am gleichen Tag',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        const Gap(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_right_rounded,
              color: Theme.of(context).primaryColor,
            ),
            const Expanded(
              child: Text(
                'Mit Umzug Profis Bayern einfach besser umziehen',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        const Gap(20),
        const Text(
          'Aktueller Wohnort',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: '88888 Musterstadt',
          ),
        ),
        const Gap(10),
        const Text(
          'Strasse / Nr.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'Musterstraße 22',
          ),
        ),
        const Gap(10),
        const Text(
          'Gewünschtes Umzugsdatum',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        TextField(
          onTap: () async {
            FocusScope.of(context).unfocus();

            final DateTime? picked = await showDatePicker(
              context: context,
              locale: const Locale('de'),
              initialDate: DateTime.now(),
              firstDate: DateTime(2015, 8),
              lastDate: DateTime(2101),
            );

            if (picked != null) {
              dateController.text =
                  '${picked.day < 10 ? '0${picked.day}' : picked.day}.${picked.month < 10 ? '0${picked.month}' : picked.month}.${picked.year}';
            }
          },
          controller: dateController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'DD.MM.YYYY',
          ),
        ),
      ],
    );
  }

  Widget stepItem(int index, String text) {
    return context.breakpoint > LayoutBreakpoint.xs
        ? Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: index - 1 == currentStep
                      ? Theme.of(context).primaryColor
                      : null,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: index - 1 == currentStep
                        ? Theme.of(context).primaryColor
                        : Colors.grey,
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    index.toString(),
                    style: TextStyle(
                      color: index - 1 == currentStep ? Colors.white : null,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const Gap(10),
              Text(
                text,
                style: TextStyle(
                  color: index - 1 == currentStep
                      ? Theme.of(context).primaryColor
                      : null,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: index - 1 == currentStep
                      ? Theme.of(context).primaryColor
                      : null,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: index - 1 == currentStep
                        ? Theme.of(context).primaryColor
                        : Colors.grey,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    index.toString(),
                    style: TextStyle(
                      color: index - 1 == currentStep ? Colors.white : null,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Gap(5),
              Text(
                text,
                style: TextStyle(
                  color: index - 1 == currentStep
                      ? Theme.of(context).primaryColor
                      : null,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          );
  }
}