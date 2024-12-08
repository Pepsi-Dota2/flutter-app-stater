enum Province {
  attapeu,
  bokeo,
  bolikhamxai,
  champasak,
  houaphanh,
  khammouane,
  luangNamtha,
  luangPrabang,
  oudomxay,
  phongsali,
  salavan,
  savannakhet,
  sekong,
  vientianeProvince,
  xayaboury,
  xaysomboun,
  xiengKhouang,
  vientianePrefecture
}

// Extension to get display names in English and Lao
extension ProvinceExtension on Province {
  String get englishName {
    switch (this) {
      case Province.attapeu:
        return 'Attapeu';
      case Province.bokeo:
        return 'Bokeo';
      case Province.bolikhamxai:
        return 'Bolikhamxai';
      case Province.champasak:
        return 'Champasak';
      case Province.houaphanh:
        return 'Houaphanh';
      case Province.khammouane:
        return 'Khammouane';
      case Province.luangNamtha:
        return 'Luang Namtha';
      case Province.luangPrabang:
        return 'Luang Prabang';
      case Province.oudomxay:
        return 'Oudomxay';
      case Province.phongsali:
        return 'Phongsali';
      case Province.salavan:
        return 'Salavan';
      case Province.savannakhet:
        return 'Savannakhet';
      case Province.sekong:
        return 'Sekong';
      case Province.vientianeProvince:
        return 'Vientiane Province';
      case Province.xayaboury:
        return 'Xayaboury';
      case Province.xaysomboun:
        return 'Xaysomboun';
      case Province.xiengKhouang:
        return 'Xieng Khouang';
      case Province.vientianePrefecture:
        return 'Vientiane Capital';
    }
  }

  String get laoName {
    switch (this) {
      case Province.attapeu:
        return 'ອັດຕະປື';
      case Province.bokeo:
        return 'ບໍ່ແກ້ວ';
      case Province.bolikhamxai:
        return 'ບໍລິຄໍາໄຊ';
      case Province.champasak:
        return 'ຈໍາປາສັກ';
      case Province.houaphanh:
        return 'ຫົວພັນ';
      case Province.khammouane:
        return 'ຄໍາມ່ວນ';
      case Province.luangNamtha:
        return 'ຫຼວງນໍ້າທາ';
      case Province.luangPrabang:
        return 'ຫຼວງພະບາງ';
      case Province.oudomxay:
        return 'ອຸດົມໄຊ';
      case Province.phongsali:
        return 'ຜົ້ງສາລີ';
      case Province.salavan:
        return 'ສາລະວັນ';
      case Province.savannakhet:
        return 'ສະຫວັນນະເຂດ';
      case Province.sekong:
        return 'ເຊກອງ';
      case Province.vientianeProvince:
        return 'ແຂວງວຽງຈັນ';
      case Province.xayaboury:
        return 'ໄຊຍະບູລີ';
      case Province.xaysomboun:
        return 'ໄຊສົມບູນ';
      case Province.xiengKhouang:
        return 'ຊຽງຂວາງ';
      case Province.vientianePrefecture:
        return 'ນະຄອນຫຼວງວຽງຈັນ';
    }
  }
}

// Chanthabouly District Villages
// village.dart

enum VillageChanthabouly {
  anou,
  haisok,
  phonesinat,
  phonkheng,
  thatkhao,
  watchanh,
  sisaket,
  xiengnyuen
}

enum VillageSikhottabong {
  kaoliao,
  dongsavath,
  phonpapao,
  nongbone,
  phonthan,
  thongkhankham,
  nongduang
}

enum VillageXaysetha {
  phonethan,
  phontong,
  saphanthong,
  saphanthongtai,
  phonsinuan,
  phonkheng,
  nongnieng
}

enum VillageSisattanak {
  hongkae,
  phonsinuan,
  sisangvone,
  nongchanh,
  phontong,
  sisavath,
  wattayyai
}

enum VillageNaxaithong {
  naxaithong,
  dongphosy,
  napho,
  sivilay,
  nasack,
  phonkham
}

extension VillageChanthaboulyExtension on VillageChanthabouly {
  String get name {
    switch (this) {
      case VillageChanthabouly.anou:
        return 'ບ້ານ ອານຸ';
      case VillageChanthabouly.haisok:
        return 'ບ້ານ ຫາຍໂສກ';
      case VillageChanthabouly.phonesinat:
        return 'ບ້ານ ໂພນສີນາດ';
      case VillageChanthabouly.phonkheng:
        return 'ບ້ານ ໂພນແກ້ງ';
      case VillageChanthabouly.thatkhao:
        return 'ບ້ານ ທາດຂາວ';
      case VillageChanthabouly.watchanh:
        return 'ບ້ານ ວັດຈັນ';
      case VillageChanthabouly.sisaket:
        return 'ບ້ານ ສີສະເກດ';
      case VillageChanthabouly.xiengnyuen:
        return 'ບ້ານ ຊຽງຍືນ';
    }
  }
}

extension VillageSikhottabongExtension on VillageSikhottabong {
  String get name {
    switch (this) {
      case VillageSikhottabong.kaoliao:
        return 'ບ້ານ ເກົ່າລ້ຽວ';
      case VillageSikhottabong.dongsavath:
        return 'ບ້ານ ດົງສະຫວາດ';
      case VillageSikhottabong.phonpapao:
        return 'ບ້ານ ໂພນປ່າເປົ້າ';
      case VillageSikhottabong.nongbone:
        return 'ບ້ານ ໜອງບອນ';
      case VillageSikhottabong.phonthan:
        return 'ບ້ານ ໂພນທັນ';
      case VillageSikhottabong.thongkhankham:
        return 'ບ້ານ ທົ່ງຂັນຄຳ';
      case VillageSikhottabong.nongduang:
        return 'ບ້ານ ໜອງດ້ວງ';
    }
  }
}

extension VillageXaysethaExtension on VillageXaysetha {
  String get name {
    switch (this) {
      case VillageXaysetha.phonethan:
        return 'ບ້ານ ໂພນຕານ';
      case VillageXaysetha.phontong:
        return 'ບ້ານ ໂພນຕ້ອງ';
      case VillageXaysetha.saphanthong:
        return 'ບ້ານ ສະພານທອງ';
      case VillageXaysetha.saphanthongtai:
        return 'ບ້ານ ສະພານທອງໃຕ້';
      case VillageXaysetha.phonsinuan:
        return 'ບ້ານ ໂພນສີນວນ';
      case VillageXaysetha.phonkheng:
        return 'ບ້ານ ໂພນແກ້ງ';
      case VillageXaysetha.nongnieng:
        return 'ບ້ານ ໜອງນ້ຽງ';
    }
  }
}

extension VillageSisattanakExtension on VillageSisattanak {
  String get name {
    switch (this) {
      case VillageSisattanak.hongkae:
        return 'ບ້ານ ໂຮງແກ້';
      case VillageSisattanak.phonsinuan:
        return 'ບ້ານ ໂພນສີນວນ';
      case VillageSisattanak.sisangvone:
        return 'ບ້ານ ສີແສງວົງ';
      case VillageSisattanak.nongchanh:
        return 'ບ້ານ ໜອງຈັນ';
      case VillageSisattanak.phontong:
        return 'ບ້ານ ໂພນຕ້ອງ';
      case VillageSisattanak.sisavath:
        return 'ບ້ານ ສີສະຫວາດ';
      case VillageSisattanak.wattayyai:
        return 'ບ້ານ ວັດຕາຍາຍ';
    }
  }
}

extension VillageNaxaithongExtension on VillageNaxaithong {
  String get name {
    switch (this) {
      case VillageNaxaithong.naxaithong:
        return 'ບ້ານ ນາຊາຍທອງ';
      case VillageNaxaithong.dongphosy:
        return 'ບ້ານ ດົງໂພສີ';
      case VillageNaxaithong.napho:
        return 'ບ້ານ ນາໂພ';
      case VillageNaxaithong.sivilay:
        return 'ບ້ານ ສີວິໄລ';
      case VillageNaxaithong.nasack:
        return 'ບ້ານ ນາສັກ';
      case VillageNaxaithong.phonkham:
        return 'ບ້ານ ໂພນຄຳ';
    }
  }
}

class VillageHelper {
  static List<String> getVillagesByDistrict(String district) {
    switch (district.toLowerCase()) {
      case 'chanthabouly':
        return VillageChanthabouly.values.map((v) => v.name).toList();
      case 'sikhottabong':
        return VillageSikhottabong.values.map((v) => v.name).toList();
      case 'xaysetha':
        return VillageXaysetha.values.map((v) => v.name).toList();
      case 'sisattanak':
        return VillageSisattanak.values.map((v) => v.name).toList();
      case 'naxaithong':
        return VillageNaxaithong.values.map((v) => v.name).toList();
      default:
        return [];
    }
  }

  static List<String> getAllVillages() {
    return [
      ...VillageChanthabouly.values.map((v) => v.name),
      ...VillageSikhottabong.values.map((v) => v.name),
      ...VillageXaysetha.values.map((v) => v.name),
      ...VillageSisattanak.values.map((v) => v.name),
      ...VillageNaxaithong.values.map((v) => v.name),
    ];
  }
}