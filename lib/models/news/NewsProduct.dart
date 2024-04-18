import 'package:flutter/material.dart';

class NewsProduct {
  final String image, title, description;
  final String author, date;
  final int id;
  final Color color;

  NewsProduct(
      {required this.image,
      required this.title,
      required this.description,
      required this.author,
      required this.date,
      required this.id,
      required this.color});
}

List<NewsProduct> newsproduct = [
  NewsProduct(
      id: 1,
      title:
          'Pothole repairs in Metro Manila roads slated on Eid’l Adha holiday',
      author: 'By: Dona Magsino ',
      date: 'August 12, 2019 3:45pm',
      description: news1,
      image: 'assets/images/news_images/Rectangle 4.png',
      color: Color.fromARGB(255, 215, 216, 216)),
  NewsProduct(
      id: 2,
      title: "Spaghetti wires are threat to safety, eyesore in Metro Manila",
      author: 'By: Dona Magsino',
      date: 'February 28, 2019 1:43am',
      description: news2,
      image: 'assets/images/news_images/Rectangle 6.png',
      color: Color.fromARGB(255, 215, 216, 216)),
];

List<NewsProduct> newsproduct2 = [

  NewsProduct(
      id: 3,
      title: "2 pillars of Cebu's Mandaue-Mactan bridge exposed to fire",
      author: 'By: Nikko Sereno',
      date: 'March 15, 2024 11:01 AM',
      description: "The Department of Public Works and Highways inspected the Mandaue-Mactan Bridge (first bridge) in Cebu after a huge fire broke out below the structure. In an initial inspection, two of the bridge’s piers were found to be exposed to the blaze. \nPiers 5 and 6, or the big posts of the bridge, were reported to be tainted with soot after having been exposed to the fumes. \nAdditional assessment will be done on the 50-year-old bridge, DPWH said. \n “We’ll report it to the regional office, again, naa man gud sila’y mga tools to further assess the building, naa pa’y mga JICA tools nga gi-donate for checking para sa bridge (We’ll report it to the regional office, again, meron silang tools to further assess the building, meron pa silang mga JICA tools na i-dinonate for checking the bridge,” according to Engr. Justin Carlo Amoguis of DPWH Cebu 6th Engineering District–Maintenance Management Unit.\nJICA stands for Japan International Cooperation Agency.\nTWO-HOUR FIRE- A fire which took two hours to control broke out on March 12, 2024 below the bridge in Barangay Looc, Mandaue City. The fire displaced informal settlers in Sitio UTB (Under the Bridge) and Sitio Bantayan sa Hari. \nAccording to an initial list furnished by the barangay, the fire razed 386 houses that rendered homeless 516 families or 1,745 individuals. The barangay council held a special session on March 13, 2024 leading to a declaration of a state of calamity.",
      image: 'assets/images/news_images/rect.png',
      color: Color.fromARGB(255, 215, 216, 216)),

  NewsProduct(
      id: 4,
      title: "Spaghetti wires are threat to safety, eyesore in Metro Manila",
      author: 'By: GISELLE OMBAY',
      date: 'February 28, 2019 1:43am',
      description: 'A significant amount of improperly disposed garbage caused flooding in several areas in the National Capital Region amid the heavy rains on Saturday, according to the Metropolitan Manila Development Authority (MMDA). advertisement MMDA General Manager Procopio Lipana said on Sunday that MMDA personnel recovered garbage, such as plastics and even a plywood plank, that blocked a drain near EDSA-Camp Aguinaldo. “Talaga namang sangkaterbang basura ang nakuha despite na continuous ang ating paglilinis sa mga daluyan ng tubig. Ganun pa rin, marami pa rin tayong nakukuha,” Lipana said on Super Radyo dzBB. (We obtained a huge amount of garbage despite the continuous cleaning of storm gutters.). “Bukod sa talagang maraming basura na nakabara, biglaan din ang pagdating tubig at may kaliitan na talaga ang drainage system natin,” he added. (Aside from the large amount of garbage blocking the drainage, the heavy rain came down suddenly, and our drainage system has become inadequate.). With this, Lipana reiterated that the MMDA planned to create a 50-year drainage master plan for Metro Manila to address perennial flooding during the rainy season. He said the drainage systems in the regions cities need to be aligned and enlarged to accommodate the larger volume of water',
      image: 'assets/images/news_images/phrect.png',
      color: Color.fromARGB(255, 215, 216, 216)),
];

String news1 =
    "More than 90 repairs in some of Metro Manila's major roads have been scheduled on the Eid'l Adha holiday on Monday. \nAccording to Mark Salazar's report in GMA News TV's Balitanghali, the holiday was dedicated to road repair efforts because traffic volume was light.Authorities identified 91 potholes to be asphalted. \n\nThe MMDA said that this measure would prevent road accidents and lessen traffic buildup";

String news2 =
    "The cable wires, many hanging loosely, from street posts pose as serious threats to the safety of pedestrians and residents in some parts of Metro Manila. \nIn an episode of GMA News TV's Brigada, Cesar Apolinario reported about the situation in Isla Puting Bato in Tondo, Manila where electric cable wires are obstructing the way. \n Nahihirapan po talaga 'yung mga residente namin dito dahil unang-una, syempre 'yung kasiguraduhan din ng mga nakatira dito, dahil katulad nga niyan na talagang super baba na, said Rebecca Sanchez, a purok leader in the area. \nThe wires have gone down below their original installation height after some residents tampered with these when they encounter electrical problems, she added. \nA 68-year-old carpenter living in the compound almost lost his life after the roof of the kuliglig vehicle he was riding got entangled with the drooping wires. \n Pinahinto ng driver dahil mapuputol 'yung kuryente. Kung tinuluy-tuloy niya, mapuputol 'yung kuryente, patay kami, the victim Roberto Aday said. \nOn the other hand, this danger doesn't seem to bother the residents of Barangay Damayang Lagi in Quezon City where convoluted electric cable wires also abound. \nThey casually hang their clothes on the wires.";
