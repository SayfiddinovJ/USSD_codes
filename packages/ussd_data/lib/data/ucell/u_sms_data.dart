import 'package:ussd_data/data/u_model/u_sms_model.dart';

class USMSData {
  static List<USMSModel> getSMS() {
    List<USMSModel> sms = [];

    sms.add(USMSModel(
      name: '50 SMS',
      amount: '50',
      payment: '1 684 so\'m',
      code: '*147#',
      validityPeriod: '30 kun',
    ));
    sms.add(USMSModel(
      name: '150 SMS',
      amount: '150',
      payment: '4 210 so\'m',
      code: '*147#',
      validityPeriod: '30 kun',
    ));
    sms.add(USMSModel(
      name: '500 SMS',
      amount: '500',
      payment: '10 525 so\'m',
      code: '*147#',
      validityPeriod: '30 kun',
    ));

    sms.add(USMSModel(
      name: 'Kunlik SMS-to‘plam 25',
      amount: '25',
      payment: '631.5 so\'m',
      code: '*148#',
      validityPeriod: '30 kun',
    ));
    sms.add(USMSModel(
      name: 'Kunlik SMS-to‘plam 40',
      amount: '40',
      payment: '842 so\'m',
      code: '*148#',
      validityPeriod: '30 kun',
    ));
    sms.add(USMSModel(
      name: 'Kunlik SMS-to‘plam 75',
      amount: '75',
      payment: '1 263 so\'m',
      code: '*148#',
      validityPeriod: '30 kun',
    ));
    return sms;
  }
}
