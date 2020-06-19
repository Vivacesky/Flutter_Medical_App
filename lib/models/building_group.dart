import 'package:my_first_shop/models/event_model.dart';

import 'building_model.dart';

class BuildingGroup {
  String imageUrl;
  String name;
  List<Building> buildings;

  BuildingGroup({this.imageUrl, this.name, this.buildings});
}

List<Building> buildings = [
  Building(
      id: 1,
      name: 'Red Cross department in Heusden-Zolder',
      imageUrl: 'assets/images/rHeusden.jpg',
      address: 'Rode Kruisstraat 1',
      zipcode: '3550',
      town: 'Heusden-Zolder',
      description:
          'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
      group: 'B',
      events: [
        Event(
          id: 1,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action1.jpg',
          town: 'Heusden-Zolder',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 2,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action2.jpg',
          town: 'Hasselt',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 3,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action3.jpg',
          town: 'Leuven',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
      ]),
  Building(
      id: 2,
      name: 'Rode Kruis Hasselt',
      imageUrl: 'assets/images/rHasselt.jpg',
      address: 'Boomkensstraat 303',
      zipcode: '3500',
      town: 'Hasselt',
      description:
          'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
      group: 'B',
      events: [
        Event(
          id: 1,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action1.jpg',
          town: 'Heusden-Zolder',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 2,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action2.jpg',
          town: 'Hasselt',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 3,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action3.jpg',
          town: 'Leuven',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
      ]),
  Building(
      id: 3,
      name: 'Jessa Ziekenhuis',
      imageUrl: 'assets/images/rLeuven.jpg',
      address: 'Herestraat 49',
      zipcode: '3000',
      town: 'Leuven',
      description:
          'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
      group: 'B',
      events: [
        Event(
          id: 1,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action1.jpg',
          town: 'Heusden-Zolder',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 2,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action2.jpg',
          town: 'Hasselt',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 3,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action3.jpg',
          town: 'Leuven',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
      ]),
  Building(
      id: 4,
      name: 'Pharmaproducts',
      imageUrl: 'assets/images/aHeusden.png',
      address: 'Pastoor Paquaylaan 81',
      zipcode: '3550',
      town: 'Heusden-Zolder',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      group: 'P',
      events: [
        Event(
          id: 1,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action1.jpg',
          town: 'Heusden-Zolder',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 2,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action2.jpg',
          town: 'Hasselt',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 3,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action3.jpg',
          town: 'Leuven',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
      ]),
  Building(
      id: 5,
      name: 'Apotheek De Bond',
      imageUrl: 'assets/images/aLeuven.png',
      address: 'Herestraat 49',
      zipcode: '3000',
      town: 'Leuven',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      group: 'P',
      events: [
        Event(
          id: 1,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action1.jpg',
          town: 'Heusden-Zolder',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 2,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action2.jpg',
          town: 'Hasselt',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 3,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action3.jpg',
          town: 'Leuven',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
      ]),
  Building(
      id: 6,
      name: 'Aphotheek in het Zwaard Hasselt',
      imageUrl: 'assets/images/aHasselt.jpg',
      address: 'Salvatorstraat 20',
      zipcode: '3500',
      town: 'Hasselt',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      group: 'P',
      events: [
        Event(
          id: 1,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action1.jpg',
          town: 'Heusden-Zolder',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 2,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action2.jpg',
          town: 'Hasselt',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 3,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action3.jpg',
          town: 'Leuven',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
      ]),
  Building(
      id: 7,
      name: 'Medisch Centrum Beringen',
      imageUrl: 'assets/images/mBeringen.jpg',
      address: 'Hospitaalstraat 27',
      zipcode: '3582',
      town: 'Beringen',
      description:
          'Het Medisch Centrum in Beringen maakt deel uit van het Sint-Franciskus Ziekenhuis in Heusden. Hier kan je terecht voor een raadpleging (na afspraak).',
      group: 'M',
      events: [
        Event(
          id: 1,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action1.jpg',
          town: 'Heusden-Zolder',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 2,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action2.jpg',
          town: 'Hasselt',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 3,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action3.jpg',
          town: 'Leuven',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
      ]),
  Building(
      id: 8,
      name: 'Medex medisch centrum Hasselt',
      imageUrl: 'assets/images/mHasselt.jpg',
      address: 'FAC Verwilghen',
      zipcode: '3500',
      town: 'Hasselt',
      description:
          'Medex voert objectieve medische expertises uit bij overheidspersoneel (in het kader van ziekte, arbeidsongeval, vervroegde pensioenring, beroepsziekte), bij vervoerders (piloten, chauffeurs, schippers), bij bepaalde slachtoffers (oorlogsslachtoffers, militaire slachtoffers in vredestijd, slachtoffers opzettelijk geweld, slachtoffers terreurdaad, politie).',
      group: 'M',
      events: [
        Event(
          id: 1,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action1.jpg',
          town: 'Heusden-Zolder',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 2,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action2.jpg',
          town: 'Hasselt',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 3,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action3.jpg',
          town: 'Leuven',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
      ]),
  Building(
      id: 9,
      name: 'Medex medisch centrum Leuven',
      imageUrl: 'assets/images/mLeuven.jpg',
      address: 'Philipssite 3b',
      zipcode: '3001',
      town: 'Leuven',
      description:
          'Medex voert objectieve medische expertises uit bij overheidspersoneel (in het kader van ziekte, arbeidsongeval, vervroegde pensioenring, beroepsziekte), bij vervoerders (piloten, chauffeurs, schippers), bij bepaalde slachtoffers (oorlogsslachtoffers, militaire slachtoffers in vredestijd, slachtoffers opzettelijk geweld, slachtoffers terreurdaad, politie).',
      group: 'M',
      events: [
        Event(
          id: 1,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action1.jpg',
          town: 'Heusden-Zolder',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 2,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action2.jpg',
          town: 'Hasselt',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 3,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action3.jpg',
          town: 'Leuven',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
      ]),
  Building(
      id: 10,
      name: 'Sint-Franciscusziekenhuis',
      imageUrl: 'assets/images/sfz.jpg',
      address: ' Pastoor Paquaylaan 129',
      zipcode: '3550',
      town: 'Heusden-Zolder',
      description:
          'Het Sint-Franciscusziekenhuis is een katholiek ziekenhuis gelegen te Heusden-Zolder in de provincie Limburg, regio Vlaanderen, België. In 2016 werden er meer dan 38.000 patiënten behandeld. Er werken ongeveer 800 mensen, waarvan meer dan 95 artsen. Het ziekenhuis heeft ook een medisch centrum gelegen te Beringen.',
      group: 'H',
      events: [
        Event(
          id: 1,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action1.jpg',
          town: 'Heusden-Zolder',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 2,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action2.jpg',
          town: 'Hasselt',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 3,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action3.jpg',
          town: 'Leuven',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
      ]),
  Building(
      id: 11,
      name: 'UZ Leuven campus Gasthuisberg',
      imageUrl: 'assets/images/uzleuven.jpg',
      address: 'Herestraat 49',
      zipcode: '3000',
      town: 'Leuven',
      description:
          'Het Universitair Ziekenhuis Leuven is een Belgisch katholiek academisch ziekenhuis in Leuven verbonden aan en deel uitmakend van de rechtspersoonlijkheid van de Katholieke Universiteit Leuven. De voornaamste campus van UZ Leuven bevindt zich sinds 1972 in de wijk Gasthuisberg.',
      group: 'H',
      events: [
        Event(
          id: 1,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action1.jpg',
          town: 'Heusden-Zolder',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 2,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action2.jpg',
          town: 'Hasselt',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 3,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action3.jpg',
          town: 'Leuven',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
      ]),
  Building(
      id: 12,
      name: 'Jessa Ziekenhuis',
      imageUrl: 'assets/images/jessa.jpg',
      address: 'Salvatorstraat 20',
      zipcode: '3500',
      town: 'Hasselt',
      description:
          'Het Jessa Ziekenhuis is een regionaal ziekenhuis in de Belgische stad Hasselt. Met zijn 988 erkende bedden is het Jessa Ziekenhuis het op vier na grootste ziekenhuis in Vlaanderen. Het telt drie campussen: campus Virga Jesse aan de Stadsomvaart en campus Salvator in Hasselt en campus Sint-Ursula in Herk-de-Stad.',
      group: 'H',
      events: [
        Event(
          id: 1,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action1.jpg',
          town: 'Heusden-Zolder',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 2,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action2.jpg',
          town: 'Hasselt',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
        Event(
          id: 3,
          name: 'World Blood Donor Day',
          imageUrl: 'assets/images/action3.jpg',
          town: 'Leuven',
          date: '14 JUN 2020',
          description:
              'Onze Rode Kruisafdeling staat klaar om jou te helpen! Samen met mensen uit de buurt zetten we onze schouders onder verschillende projecten: van bloedinzamelingen tot eerste hulp aanleren of zorgeloos evenementen organiseren.',
        ),
      ]),
];
