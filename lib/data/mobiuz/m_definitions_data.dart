import 'package:mobiuz/data/model/definition_model.dart';

class MobiUzDefinition {
  static List<DefinitionModel> getDefinition() {
    List<DefinitionModel> definitions = [];
    definitions.add(
      DefinitionModel(
          name: 'Xotirjam 100',
          internet: '100 000 MB',
          minute: 'CHEKSIZ',
          sms: '5000 SMS',
          payment: '100 000 SO\'M',
          addtionToList: [
            'Telegram',
            'Instagram',
            'Facebook',
            'Facebook messenger',
            'Youtube',
            'Vkontakte',
            'Odnoklassniki',
            'WhatsApp',
            'Viber',
            'Skype',
            'Zoom',
            'LinkedIn'
          ],
          addition: 'CHEKSIZ',
          code: '',
          addtionToMinute: 'daqiqalar O\'zbekiston bo\'yicha',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addtionToSMS: 'oyiga',
          addtionToInternet: 'mobil internet oyiga'),
    );
    definitions.add(
      DefinitionModel(
          name: 'Xotirjam 80',
          internet: '60 000 MB',
          minute: 'CHEKSIZ',
          sms: '3500 SMS',
          payment: '80 000 SO\'M',
          addtionToList: [
            'Telegram',
            'Instagram',
            'Facebook',
            'Facebook messenger',
            'Youtube',
            'Vkontakte',
            'Odnoklassniki',
            'WhatsApp',
            'Viber',
            'Skype',
            'Zoom',
            'LinkedIn'
          ],
          addition: 'CHEKSIZ',
          code: '',
          addtionToMinute: 'daqiqalar O\'zbekiston bo\'yicha',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addtionToSMS: 'oyiga',
          addtionToInternet: 'mobil internet oyiga'),
    );
    definitions.add(
      DefinitionModel(
          name: 'Xotirjam 60',
          internet: '35 000 MB',
          minute: 'CHEKSIZ',
          sms: '3000 SMS',
          payment: '60 000 SO\'M',
          addtionToList: [
            'Telegram',
            'Instagram',
            'Facebook',
            'Facebook messenger',
            'Youtube',
            'Vkontakte',
            'Odnoklassniki',
            'WhatsApp',
            'Viber'
          ],
          addition: 'CHEKSIZ',
          code: '',
          addtionToMinute: 'daqiqalar O\'zbekiston bo\'yicha',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addtionToSMS: 'oyiga',
          addtionToInternet: 'mobil internet oyiga'),
    );
    definitions.add(
      DefinitionModel(
          name: 'Xotirjam 40',
          internet: '15 000 MB',
          minute: 'CHEKSIZ',
          sms: '2000 SMS',
          payment: '40 000 SO\'M',
          addtionToList: [
            'Telegram',
            'Instagram',
            'Facebook',
            'Facebook messenger',
            'Youtube',
            'Vkontakte',
            'Odnoklassniki',
            'WhatsApp',
            'Viber'
          ],
          addition: 'CHEKSIZ',
          code: '',
          addtionToMinute: 'daqiqalar O\'zbekiston bo\'yicha',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addtionToSMS: 'oyiga',
          addtionToInternet: 'mobil internet oyiga'),
    );
    definitions.add(
      DefinitionModel(
          name: 'Xotirjam 25',
          internet: '7 500 MB',
          minute: 'CHEKSIZ',
          sms: '1000 SMS',
          payment: '25 000 SO\'M',
          addtionToList: ['<<Telegram>>ga kirish imkoniyati'],
          addition: 'CHEKSIZ',
          code: '',
          addtionToMinute: 'daqiqalar O\'zbekiston bo\'yicha',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addtionToSMS: 'oyiga',
          addtionToInternet: 'mobil internet oyiga'),
    );
    definitions.add(
      DefinitionModel(
          name: 'Talaba',
          internet: '1 000 MB',
          minute: '500 daqiqa',
          sms: '500 SMS',
          payment: '15 000 SO\'M',
          addtionToList: ["tungi to'plam 00.00 dan 08.00 gacha oyiga"],
          addition: '1 000 MB',
          code: '',
          addtionToMinute: 'daqiqalar O\'zbekiston bo\'yicha',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addtionToSMS: 'oyiga',
          addtionToInternet: 'mobil internet oyiga'),
    );
    definitions.add(
      DefinitionModel(
          name: 'Talaba+',
          internet: '10 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '1 000 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '1 000 SMS',
          addtionToSMS: 'oyiga',
          payment: '50 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: '10 000 MB',
          addtionToList: ["tungi to'plam 00.00 dan 08.00 gacha oyiga"],
          code: ''),
    );
    definitions.add(
      DefinitionModel(
          name: 'Mobi 150 Yillik',
          internet: '100 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: 'CHEKSIZ',
          addtionToMinute: 'daqiqalar O\'zbekiston bo\'yicha',
          sms: '10 000 SMS',
          addtionToSMS: 'oyiga',
          payment: '1 500 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi (yiliga bir marta)',
          addition: '',
          addtionToList: [''],
          code: '*111*146#'),
    );
     definitions.add(
      DefinitionModel(
          name: "Gap Yo'q Ultra",
          internet: '90 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '1500 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '1500 SMS',
          addtionToSMS: 'oyiga',
          payment: '100 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: 'CHEKSIZ',
          addtionToList: ['daqiqalar Mobiuz tarmog\'i ichida'],
          code: '*111*105#'),
    );
     definitions.add(
      DefinitionModel(
          name: "Gap Yo'q Pro",
          internet: '50 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '1000 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '1000 SMS',
          addtionToSMS: 'oyiga',
          payment: '75 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: 'CHEKSIZ',
          addtionToList: ['daqiqalar Mobiuz tarmog\'i ichida'],
          code: '*111*101#'),
    );
     definitions.add(
      DefinitionModel(
          name: "Gap Yo'q Maxi",
          internet: '30 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '750 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '750 SMS',
          addtionToSMS: 'oyiga',
          payment: '55 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: 'CHEKSIZ',
          addtionToList: ['daqiqalar Mobiuz tarmog\'i ichida'],
          code: '*111*104#'),
    );
     definitions.add(
      DefinitionModel(
          name: "Gap Yo'q Optima",
          internet: '20 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '600 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '600 SMS',
          addtionToSMS: 'oyiga',
          payment: '45 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: 'CHEKSIZ',
          addtionToList: ['daqiqalar Mobiuz tarmog\'i ichida'],
          code: '*111*106#'),
    );
     definitions.add(
      DefinitionModel(
          name: "Gap yo'q",
          internet: '10 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '500 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '',
          addtionToSMS: '',
          payment: '35 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: 'CHEKSIZ',
          addtionToList: ['daqiqalar Mobiuz tarmog\'i ichida'],
          code: '*111*100#'),
    );
     definitions.add(
      DefinitionModel(
          name: "Gap Yo'q Mini",
          internet: '5 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '250 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '',
          addtionToSMS: '',
          payment: '20 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: 'CHEKSIZ',
          addtionToList: ['daqiqalar Mobiuz tarmog\'i ichida'],
          code: '*111*103#'),
    );
     definitions.add(
      DefinitionModel(
          name: "Jozibali",
          internet: '15 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '5000 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '1000 SMS',
          addtionToSMS: 'oyiga',
          payment: '25 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: '',
          addtionToList: [''],
          code: ''),
    );
     definitions.add(
      DefinitionModel(
          name: "Omad Plus",
          internet: '1 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '400 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '400 SMS',
          addtionToSMS: 'oyiga',
          payment: '12 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: '',
          addtionToList: [''],
          code: ''),
    );
    definitions.add(
      DefinitionModel(
          name: "Terminal Yillik",
          internet: '300 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: 'taqdim etilmaydi',
          addtionToMinute: 'Ovozli aloqa',
          sms: '',
          addtionToSMS: '',
          payment: '120 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi yiliga',
          addition: '',
          addtionToList: [''],
          code: ''),
    );
    definitions.add(
      DefinitionModel(
          name: "Maktab",
          internet: '3 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '500 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '500 SMS',
          addtionToSMS: 'oyiga',
          payment: '20 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: '',
          addtionToList: [''],
          code: ''),
    );
    definitions.add(
      DefinitionModel(
          name: "Fidokor+",
          internet: '8 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '3 000 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '3 000 SMS',
          addtionToSMS: 'oyiga',
          payment: '30 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: '',
          addtionToList: [''],
          code: ''),
    );
    definitions.add(
      DefinitionModel(
          name: "Fidokor",
          internet: '4 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '2 000 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '2 000 SMS',
          addtionToSMS: 'oyiga',
          payment: '15 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: '',
          addtionToList: [''],
          code: ''),
    );
    definitions.add(
      DefinitionModel(
          name: "O'qituvchi 1",
          internet: '4 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '2 000 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '100 SMS',
          addtionToSMS: 'oyiga',
          payment: '16 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: '',
          addtionToList: [''],
          code: ''),
    );
    definitions.add(
      DefinitionModel(
          name: "O'qituvchi 2",
          internet: '8 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '2 000 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '100 SMS',
          addtionToSMS: 'oyiga',
          payment: '30 000 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: '',
          addtionToList: [''],
          code: ''),
    );
    definitions.add(
      DefinitionModel(
          name: "Mobiuz bilan birga",
          internet: '2 000 MB',
          addtionToInternet: 'mobile internet oyiga',
          minute: '1 000 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '500 SMS',
          addtionToSMS: 'oyiga',
          payment: '8 400 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: '',
          addtionToList: [''],
          code: ''),
    );
    definitions.add(
      DefinitionModel(
          name: "Faxriy",
          internet: '',
          addtionToInternet: '',
          minute: '200 daqiqa',
          addtionToMinute: 'O\'zbekiston bo\'yicha',
          sms: '',
          addtionToSMS: '',
          payment: '0,00 so\'m',
          addtionToPayment: 'Abonent to\'lovi oyiga',
          addition: '',
          addtionToList: [''],
          code: ''),
    );
    return definitions;
  }
}
