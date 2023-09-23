import 'package:ussd_data/data/u_model/u_definition_model.dart';

class UDefinitionData {
  static List<UDefinitionModel> getDefinitions() {
    List<UDefinitionModel> definitions = [];
    definitions.add(UDefinitionModel(
      name: 'Doimiy 25',
      mb: '6',
      additionMb: '10',
      additionMBFor: ['Facebook', 'Instagram'],
      minute: 'CHEKSIZ',
      sms: '500',
      addition: 'Limitdan tashqari 1 MB / 1 SMS narxi – 50 so‘m',
      payment: '25 000 so\'m',
      code: '',
    ));
    definitions.add(UDefinitionModel(
      name: 'Doimiy 35',
      mb: '10',
      additionMb: 'CHEKSIZ',
      additionMBFor: ['Facebook', 'Instagram'],
      minute: 'CHEKSIZ',
      sms: '1000',
      addition: 'Limitdan tashqari 1 MB / 1 SMS narxi – 50 so‘m',
      payment: '35 000 so\'m',
      code: '',
    ));
    definitions.add(UDefinitionModel(
      name: 'Doimiy 50',
      mb: '20',
      additionMb: 'CHEKSIZ',
      additionMBFor: ['Telegram', 'WhatsApp', 'Instagram', 'Facebook'],
      minute: 'CHEKSIZ',
      sms: '1500',
      addition: 'Limitdan tashqari 1 MB / 1 SMS narxi – 25 so‘m',
      payment: '50 000 so\'m',
      code: '',
    ));
    definitions.add(UDefinitionModel(
      name: 'Doimiy 70',
      mb: '35',
      additionMb: 'CHEKSIZ',
      additionMBFor: [
        'YouTube',
        'Telegram',
        'WhatsApp',
        'Instagram',
        'Facebook'
      ],
      minute: 'CHEKSIZ',
      sms: '2000',
      addition: 'Limitdan tashqari 1 MB / 1 SMS narxi – 25 so‘m',
      payment: '70 000 so\'m',
      code: '',
    ));
    definitions.add(UDefinitionModel(
      name: 'Doimiy 100',
      mb: '100',
      additionMb: 'CHEKSIZ',
      additionMBFor: [
        'YouTube',
        'Telegram',
        'WhatsApp',
        'Instagram',
        'Facebook'
      ],
      minute: 'CHEKSIZ',
      sms: '2500',
      addition: 'Limitdan tashqari 1 MB / 1 SMS narxi – 25 so‘m',
      payment: '100 000 so\'m',
      code: '',
    ));
    definitions.add(UDefinitionModel(
      name: 'Doimiy 150',
      mb: '200',
      additionMb: 'CHEKSIZ',
      additionMBFor: [
        'YouTube',
        'Telegram',
        'WhatsApp',
        'Instagram',
        'Facebook'
      ],
      minute: 'CHEKSIZ',
      sms: '3000',
      addition: 'Limitdan tashqari 1 MB / 1 SMS narxi – 25 so‘m',
      payment: '150 000 so\'m',
      code: '',
    ));
    definitions.add(UDefinitionModel(
      name: 'Internet 60',
      mb: '60',
      additionMb: '',
      additionMBFor: [],
      minute: '',
      sms: '',
      addition: '',
      payment: '60 000 so\'m',
      code: '*120#',
    ));
    return definitions;
  }
}
