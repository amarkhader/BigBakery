
class Categori {
  num numer;
  String name;
  String imageUrl;
  String id;
  Categori(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.numer});
      factory Categori.fromjson(Map<String , dynamic>json){
        return Categori(id:json ['id'], imageUrl:json ['imageUrl'], name:json ['name'], numer:json ['numer']);
      }
}
