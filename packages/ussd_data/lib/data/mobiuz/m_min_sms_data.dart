import 'package:ussd_data/data/m_model/min_sms_model.dart';

class MMinData {
  static List<MMinModel> getMinute() {
    List<MMinModel> minutes = [];
    minutes.add(MMinModel(
        name: '«60 daqiqalik to\'plam»',
        code: '*103*60#',
        cost: '4 000 so\'m'));
    minutes.add(MMinModel(
        name: '«120 daqiqalik to\'plam»',
        code: '*103*120#',
        cost: '7 000 so\'m'));
    minutes.add(MMinModel(
        name: '«180 daqiqalik to\'plam»',
        code: '*103*180#',
        cost: '10 000 so\'m'));
    minutes.add(MMinModel(
        name: '«300 daqiqalik to\'plam»',
        code: '*103*300#',
        cost: '16 000 so\'m'));
    minutes.add(MMinModel(
        name: '«900 daqiqalik to\'plam»',
        code: '*103*900#',
        cost: '37 000 so\'m'));
    minutes.add(MMinModel(
        name: '«1200 daqiqalik to\'plam»',
        code: '*103*1200#',
        cost: '45 000 so\'m'));
    minutes.add(MMinModel(
        name: '«1800 daqiqalik to\'plam»',
        code: '*103*1800#',
        cost: '62 000 so\'m'));
    return minutes;
  }
}

class MSMSData {
  static List<MSMSModel> getSMS() {
    List<MSMSModel> sms = [];
    sms.add(MSMSModel(
        name: '«SMS 100»',
        count: '100',
        code: '*104*100#',
        cost: '4 500 so\'m'));
    sms.add(MSMSModel(
        name: '«SMS 300»',
        count: '300',
        code: '*104*300#',
        cost: '10 500 so\'m'));
    sms.add(MSMSModel(
        name: '«SMS-OnNet»',
        count: '50',
        code: '*204*50#',
        cost: '450 so\'m kuniga'));
    return sms;
  }
}
