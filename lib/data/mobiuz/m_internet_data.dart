import 'package:mobiuz/data/model/internet_model.dart';

class MMonthMBData {
  static List<MonthlyMBModel> getMBCollections() {
    List<MonthlyMBModel> mbCollections = [];

    mbCollections
        .add(MonthlyMBModel(mb: '100 000 MB', cost: '90 000', code: ''));
    mbCollections.add(
        MonthlyMBModel(mb: '50 000 MB', cost: '75 000', code: '*102*50000#'));
    mbCollections.add(
        MonthlyMBModel(mb: '30 000 MB', cost: '65 000', code: '*102*30000#'));
    mbCollections.add(
        MonthlyMBModel(mb: '20 000 MB', cost: '55 000', code: '*102*20000#'));
    mbCollections.add(
        MonthlyMBModel(mb: '10 000 MB', cost: '50 000', code: '*102*10000#'));
    mbCollections.add(
        MonthlyMBModel(mb: '5 000 MB', cost: '33 000', code: '*102*5000#'));
    mbCollections.add(
        MonthlyMBModel(mb: '3 000 MB', cost: '25 000', code: '*102*3000#'));
    mbCollections.add(
        MonthlyMBModel(mb: '2 000 MB', cost: '17 000', code: '*102*2000#'));
    mbCollections.add(
        MonthlyMBModel(mb: '1 000 MB', cost: '11 000', code: '*102*1000#'));
    return mbCollections;
  }
}

class MDriveData {
  static List<MDriveModel> getDrives() {
    List<MDriveModel> drives = [];
    drives.add(MDriveModel(
        name: 'Tungi DRIVE 30',
        mb: 'CHEKSIZ',
        mbAddition: '30 sutka 00:00dan 08:00gacha',
        cost: '60 000',
        code: '*200*30*1#',
        checkCode: '*200*30#'));
    drives.add(MDriveModel(
        name: 'Tungi DRIVE 7',
        mb: 'CHEKSIZ',
        mbAddition: '7 sutka 00:00dan 08:00gacha',
        cost: '20 000',
        code: '*200*7*1#',
        checkCode: '*200*7#'));
    drives.add(MDriveModel(
        name: 'Tungi DRIVE 1',
        mb: 'CHEKSIZ',
        mbAddition: '1 sutka 00:00dan 08:00gacha',
        cost: '5 000',
        code: '*200*1*1#',
        checkCode: '*200*1#'));
    return drives;
  }
}

class MOnNetData {
  static List<OnNetModel> getOnNets() {
    List<OnNetModel> onNets = [];

    onNets.add(
        OnNetModel(mb: '50 000', cost1: '75 000', cost2: '67 500', code: ''));
    onNets.add(
        OnNetModel(mb: '30 000', cost1: '65 000', cost2: '58 500', code: ''));
    onNets.add(
        OnNetModel(mb: '20 000', cost1: '55 000', cost2: '49 500', code: ''));
    onNets.add(
        OnNetModel(mb: '10 000', cost1: '50 000', cost2: '45 000', code: ''));
    onNets.add(OnNetModel(
        mb: '5 000', cost1: '33 000', cost2: '29 700', code: '*202*5000#'));
    onNets.add(OnNetModel(
        mb: '3 000', cost1: '25 000', cost2: '22 500', code: '*202*3000#'));
    onNets.add(OnNetModel(
        mb: '2 000', cost1: '17 000', cost2: '15 300', code: '*202*2000#'));
    onNets.add(OnNetModel(
        mb: '1 000', cost1: '11 000', cost2: '9 900', code: '*202*1000#'));
    onNets.add(OnNetModel(
        mb: '500', cost1: '9 000', cost2: '8 100', code: '*202*500#'));
    onNets.add(OnNetModel(
        mb: '300', cost1: '8 000', cost2: '7 200', code: '*202*300#'));
    return onNets;
  }
}

class MNightCollectionsData {
  static List<MNightCollectionModel> getNightCollection() {
    List<MNightCollectionModel> collections = [];

    collections.add(MNightCollectionModel(
        mb: '50 000', cost: '44 000', code: '*200*50000#'));
    collections.add(MNightCollectionModel(
        mb: '20 000', cost: '33 000', code: '*200*20000#'));
    collections.add(MNightCollectionModel(
        mb: '10 000', cost: '22 000', code: '*200*10000#'));
    collections.add(
        MNightCollectionModel(mb: '5 000', cost: '17 000', code: '*200*5000#'));
    collections.add(
        MNightCollectionModel(mb: '3 000', cost: '12 500', code: '*200*3000#'));
    collections.add(
        MNightCollectionModel(mb: '2 000', cost: '9 500', code: '*200*1000#'));
    collections.add(
        MNightCollectionModel(mb: '1 000', cost: '5 000', code: '*200*1000#'));
    return collections;
  }
}
