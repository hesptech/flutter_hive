import 'package:hive/hive.dart';

part 'animal_model.g.dart';
@HiveType(typeId: 1)

class Animal extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String breed;
  Animal({
    required this.name, 
    required this.breed,
  });
}