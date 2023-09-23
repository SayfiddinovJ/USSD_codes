import 'package:ussd_data/data/u_model/u_internet_model.dart';

class UInternetData {
  static List<UMBModel> getMonthlyCollections() {
    List<UMBModel> collections = [];
    collections.add(UMBModel(
      name: "To'plam 1 GB",
      mb: '1024',
      payment: '9 000',
      code: '',
      validityPeriod: '30 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 2 GB",
      mb: '2048',
      payment: '15 000',
      code: '',
      validityPeriod: '30 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 5 GB",
      mb: '5120',
      payment: '25 000',
      code: '',
      validityPeriod: '30 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 8 GB",
      mb: '8192',
      payment: '35 000',
      code: '',
      validityPeriod: '30 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 10 GB",
      mb: '10240',
      payment: '45 000',
      code: '',
      validityPeriod: '30 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 20 GB",
      mb: '20480',
      payment: '65 000',
      code: '',
      validityPeriod: '30 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 30 GB",
      mb: '30720',
      payment: '75 000',
      code: '',
      validityPeriod: '30 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 50 GB",
      mb: '51200',
      payment: '85 000',
      code: '',
      validityPeriod: '30 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 70 GB",
      mb: '71680',
      payment: '100 000',
      code: '',
      validityPeriod: '30 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 100 GB",
      mb: '102400',
      payment: '125 000',
      code: '',
      validityPeriod: '30 kun',
    ));
    return collections;
  }

  static List<UMBModel> getDailyCollections() {
    List<UMBModel> collections = [];
    collections.add(UMBModel(
      name: "To'plam 20",
      mb: '20',
      payment: '390',
      code: '*555*1*1*1#',
      validityPeriod: '1 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 40",
      mb: '40',
      payment: '550',
      code: '*555*1*2*1#',
      validityPeriod: '1 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 80",
      mb: '80',
      payment: '790',
      code: '*555*1*3*1#',
      validityPeriod: '1 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 150",
      mb: '150',
      payment: '1 190',
      code: '*555*1*4*1#',
      validityPeriod: '1 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 250",
      mb: '250',
      payment: '1 890',
      code: '*555*1*5*1#',
      validityPeriod: '1 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 400",
      mb: '400',
      payment: '2 790',
      code: '*555*1*6*1#',
      validityPeriod: '1 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 550",
      mb: '550',
      payment: '3 790',
      code: '*555*1*7*1#',
      validityPeriod: '1 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 700",
      mb: '700',
      payment: '4 490',
      code: '*555*1*8*1#',
      validityPeriod: '1 kun',
    ));
    collections.add(UMBModel(
      name: "To'plam 800",
      mb: '800',
      payment: '4 990',
      code: '*555*1*9*1#',
      validityPeriod: '1 kun',
    ));
    return collections;
  }

  static List<UMBTrafikPlusModel> getTrafikPlus() {
    List<UMBTrafikPlusModel> trafikPlus = [];
    trafikPlus.add(UMBTrafikPlusModel(
      options: ['Instagram'],
      mb: '10000',
      payment: '15000',
      code: '*777#',
      validityPeriod: '30 kun',
    ));
    trafikPlus.add(UMBTrafikPlusModel(
      options: ['Instagram', 'YouTube', 'Telegram'],
      mb: '10000',
      payment: '15000',
      code: '*777#',
      validityPeriod: '30 kun',
    ));
    trafikPlus.add(UMBTrafikPlusModel(
      options: ['Telegram', 'IMO', 'WhatsApp', 'Viber'],
      mb: '1000',
      payment: '3000',
      code: '*777#',
      validityPeriod: '30 kun',
    ));
    trafikPlus.add(UMBTrafikPlusModel(
      options: ['Telegram', 'Facebook', 'Vkontakte'],
      mb: '2000',
      payment: '5000',
      code: '*777#',
      validityPeriod: '30 kun',
    ));
    trafikPlus.add(UMBTrafikPlusModel(
      options: ['YouTube'],
      mb: '5000',
      payment: '8000',
      code: '*777#',
      validityPeriod: '30 kun',
    ));
    trafikPlus.add(UMBTrafikPlusModel(
      options: ['YouTube', 'Telegram'],
      mb: '7000',
      payment: '10000',
      code: '*777#',
      validityPeriod: '30 kun',
    ));
    trafikPlus.add(UMBTrafikPlusModel(
      options: ['Zoom'],
      mb: '4000',
      payment: '6000',
      code: '*777#',
      validityPeriod: '30 kun',
    ));
    trafikPlus.add(UMBTrafikPlusModel(
      options: [
        'PUBG MOBILE',
        'Call of Duty',
        'Clash of Clans',
        'Google Play Market'
      ],
      mb: '5000',
      payment: '7000',
      code: '*777#',
      validityPeriod: '30 kun',
    ));
    trafikPlus.add(UMBTrafikPlusModel(
      options: ['YouTube', 'Telegram', 'PUBG Mobile'],
      mb: '10000',
      payment: '12000',
      code: '*777#',
      validityPeriod: '30 kun',
    ));
    trafikPlus.add(UMBTrafikPlusModel(
      options: ['Instagram', 'YouTube', 'Telegram', 'PUBG Mobile'],
      mb: '15000',
      payment: '17000',
      code: '*777#',
      validityPeriod: '30 kun',
    ));
    trafikPlus.add(UMBTrafikPlusModel(
      options: ['Google Play Market'],
      mb: '7000',
      payment: '10000',
      code: '*777#',
      validityPeriod: '30 kun',
    ));
    return trafikPlus;
  }

  static List<UMBNightModel> getNight() {
    List<UMBNightModel> night = [];

    night.add(UMBNightModel(
      name: "To'plam 5 GB",
      mb: '5120',
      payment: '20 000 so\'m',
      code: '*616#',
      validityPeriod: '30 kun',
      periodOfUse: '01:00-09:00',
    ));

    night.add(UMBNightModel(
      name: "To'plam 20 GB",
      mb: '20480',
      payment: '45 000 so\'m',
      code: '*616#',
      validityPeriod: '30 kun',
      periodOfUse: '01:00-09:00',
    ));

    return night;
  }

  static List<UMBModel> getWeek() {
    List<UMBModel> week = [];

    week.add(UMBModel(
      name: 'Haftalik 1000 to\'plam',
      mb: '1000',
      payment: '8 000',
      code: '*555*2*1#',
      validityPeriod: '7 kun',
    ));
    week.add(UMBModel(
      name: 'Haftalik 2000 to\'plam',
      mb: '2000',
      payment: '12 000',
      code: '*555*2*2#',
      validityPeriod: '7 kun',
    ));
    week.add(UMBModel(
      name: 'Haftalik 3000 to\'plam',
      mb: '3000',
      payment: '16 000',
      code: '*555*2*3#',
      validityPeriod: '7 kun',
    ));

    return week;
  }
}
