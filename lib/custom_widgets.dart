// ignore_for_file: unused_import, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_file.dart';

Widget appBar() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(child: greeting()),
        Container(
          child: Icon(Icons.dark_mode),
        )
      ],
    ),
  );
}

Widget greeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return Container(
      child: Text(
        'Good Morning 😊',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
  if (hour < 17) {
    return Container(
      child: Text(
        'Good Afternoon 🔆',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
  return Container(
    child: Text(
      'Good Evening 💤',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}

Widget dailyRosary() {
  var now = DateTime.now();
  var dayOfWeek = DateFormat('EEEE').format(now);
  mystery() {
    if (dayOfWeek == 'Monday' || dayOfWeek == 'Saturday') {
      return 'Joyful Mystery';
    } else if (dayOfWeek == 'Tuesday' || dayOfWeek == 'Friday') {
      return 'Sorrowful Mystery';
    } else if (dayOfWeek == 'Wednesday' || dayOfWeek == 'Sunday') {
      return 'Glorious Mystery';
    } else if (dayOfWeek == 'Thursday') {
      return 'Luminous Mystery';
    }
  }

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
        width: double.infinity,
        height: 64,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.deepPurpleAccent, // Set the border color
            width: 2.0, // Set the border width
          ),
          borderRadius: BorderRadius.circular(10.0), // Set the border radius
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 2, top: 5, left: 10),
              child: Text(
                'Daily Rosary :',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                '$dayOfWeek - ${mystery()}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )),
  );
}

Widget divider() {
  return SizedBox(
    height: 15,
  );
}

Widget signofthecross() {
  return Text(
    'Sign of the cross - (In the name of the Father, and of the Son and of the holy Spirit. Amen',
    style: TextStyle(
      color: Colors.black,
      fontSize: 23,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      height: 0,
    ),
  );
}

Widget apostlecreedtitle() {
  return Text(
    'The Apostles Creed ',
    style: TextStyle(
      color: Colors.black,
      fontSize: 23,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      height: 0,
    ),
  );
}

Widget apostlescreed() {
  return SizedBox(
    width: 393,
    child: Text(
      'I believe in God, the Father almighty, creator of heaven and earth.\nI believe in Jesus Christ, his only Son, our Lord, who was conceived by the Holy Spirit and born of the virgin Mary. He suffered under Pontius Pilate, was crucified, died, and was buried; he descended to hell. The third day he rose again from the dead. He ascended to heaven and is seated at the right hand of God the Father almighty. From there he will come to judge the living and the dead.\nI believe in the Holy Spirit, the holy catholic* church, the communion of saints, the forgiveness of sins, the resurrection of the body, and the life everlasting. Amen.',
      style: TextStyle(
        color: Colors.black,
        fontSize: 23,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        height: 0,
      ),
    ),
  );
}

Widget lordsprayertitle() {
  return Text(
    "The Lord’s Prayer",
    style: TextStyle(
      color: Colors.black,
      fontSize: 23,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
      height: 0,
    ),
  );
}

Widget lorsdprayer() {
  return Text(
    'Our Father in heaven, hallowed be your name, your kingdom come, your will be done, on earth as in heaven. Give us today our daily bread. Forgive us our sins as we forgive those who sin against us. Lead us not into temptation but deliver us from evil.',
    style: TextStyle(
      color: Colors.black,
      fontSize: 23,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
  );
}

Widget hailmary(times) {
  return Text(
    'Hail Mary, Full of Grace, The Lord is with thee. Blessed art thou among women, and blessed is the fruit of thy womb, Jesus.Holy Mary, Mother of God, pray for us sinners now, and at the hour of death. (say this $times times)',
    style: TextStyle(
      color: Colors.black,
      fontSize: 23,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
  );
}

Widget glorybe() {
  return Text(
    'Glory be to the Father, and to the Son, and to the Holy Spirit, as it was in the beginning, is now, and ever shall be, world without end.',
    style: TextStyle(
      color: Colors.black,
      fontSize: 23,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
  );
}

Widget startrosary() {
  return Column(
    children: [
      signofthecross(),
      divider(),
      apostlecreedtitle(),
      divider(),
      apostlescreed(),
      divider(),
      lordsprayertitle(),
      divider(),
      lorsdprayer(),
      divider(),
      hailmary('3'),
      divider(),
      glorybe(),
    ],
  );
}

Widget decades(decade, mystery, title) {
  return Column(
    children: [
      Text(
        'The $decade $mystery Mystery - $title',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          height: 0,
        ),
      ),
      divider(),
      hailmary(10),
      divider(),
      glorybe(),
      divider(),
      ohgoodjesus(),
      divider()
    ],
  );
}

Widget ohgoodjesus() {
  return Text(
    'O my Jesus, forgive us our sins, save us from the fires of hell; lead all souls to Heaven, especially those who have most need of your mercy.',
    style: TextStyle(
      color: Colors.black,
      fontSize: 23,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
  );
}

Widget hailholyqueen() {
  return Text(
    'Hail, holy Queen, mother of mercy, our life, our sweetness, and our hope. To you we cry, poor banished children of Eve; to you we send up our sighs, mourning and weeping in this valley of tears.Turn, then, most gracious advocate, your eyes of mercy toward us; and after this, our exile, show unto us the blessed fruit of your womb, Jesus. O clement, O loving, O sweet Virgin Mary.',
    style: TextStyle(
      color: Colors.black,
      fontSize: 23,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
  );
}

Widget letusprayhhq() {
  return Text(
    'O God, whose Only Begotten Son, by His Life, Death, and Resurrection, has purchased for us the rewards of eternal life, grant, we beseech thee, that while meditating on these mysteries of the most holy Rosary of the Blessed Virgin Mary, we may imitate what they contain and obtain what they promise, through the same Christ our Lord. Amen.',
    style: TextStyle(
      color: Colors.black,
      fontSize: 23,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
      height: 0,
    ),
  );
}

class LitanyWidget extends StatelessWidget {
  final String litanyText = '''
God, the Father of heaven, have mercy on us.
God the Son, Redeemer of the world, have mercy on us.
God the Holy Spirit, have mercy on us.
Holy Trinity, one God, have mercy on us.

Holy Mary, pray for us.
Holy Mother of God, pray for us.
Holy Virgin of virgins, pray for us.
Mother of Christ, pray for us.
Mother of the Church, pray for us.
Mother of divine grace, pray for us.
Mother most pure, pray for us.
Mother most chaste, pray for us.
Mother inviolate, pray for us.
Mother undefiled, pray for us.
Mother most amiable, pray for us.
Mother admirable, pray for us.
Mother of good counsel, pray for us.
Mother of our Creator, pray for us.
Mother of our Savior, pray for us.
Mother of mercy, pray for us.

Virgin most prudent, pray for us.
Virgin most venerable, pray for us.
Virgin most renowned, pray for us.
Virgin most powerful, pray for us.
Virgin most merciful, pray for us.
Virgin most faithful, pray for us.
Mirror of justice, pray for us.
Seat of wisdom, pray for us.
Cause of our joy, pray for us.
Spiritual vessel, pray for us.
Vessel of honor, pray for us.
Singular vessel of devotion, pray for us.
Mystical rose, pray for us.
Tower of David, pray for us.
Tower of ivory, pray for us.
House of gold, pray for us.
Ark of the covenant, pray for us.
Gate of heaven, pray for us.
Morning star, pray for us.
Health of the sick, pray for us.
Refuge of sinners, pray for us.
Comfort of the afflicted, pray for us.
Help of Christians, pray for us.
Queen of Angels, pray for us.
Queen of Patriarchs, pray for us.
Queen of Prophets, pray for us.
Queen of Apostles, pray for us.
Queen of Martyrs, pray for us.
Queen of Confessors, pray for us.
Queen of Virgins, pray for us.
Queen of all Saints, pray for us.
Queen conceived without original sin, pray for us.
Queen assumed into heaven, pray for us.
Queen of the most holy Rosary, pray for us.
Queen of families, pray for us.
Queen of peace.

Lamb of God, who takest away the sins of the world, spare us, O Lord.
Lamb of God, who takest away the sins of the world, graciously hear us, O Lord.
Lamb of God, who takest away the sins of the world, have mercy on us.

Pray for us, O holy Mother of God. That we may be made worthy of the promises of Christ.

Let us pray. Grant, we beseech thee, O Lord God, that we, your servants, may enjoy perpetual health of mind and body; and by the intercession of the Blessed Mary, ever Virgin, may be delivered from present sorrow, and obtain eternal joy. Through Christ our Lord. Amen.
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Litany of the Virgin Mary'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            litanyText,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
