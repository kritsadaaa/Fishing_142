class ListProductType {
  int? value;
  String? name;

  ListProductType(this.value, this.name);

  static List<ListProductType> getListProductType() {
    return [
      ListProductType(1, 'อุปกรณ์ตกปลาทะเล'),
      ListProductType(2, 'อุปกรณ์ตกปลาน้ำจืด'),
    ];
  }
}
