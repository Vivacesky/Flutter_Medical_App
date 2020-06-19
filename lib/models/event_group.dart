import 'package:my_first_shop/models/event_model.dart';

class ActionGroup {
  List<Event> events;

  ActionGroup({this.events});
}

List<Event> events = [
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
];
