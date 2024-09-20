part of 'models.dart';

class User extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? address;
  final String? houseNumber;
  final String? phoneNumber;
  final String? city;
  final String? picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  // TODO: implement props
  List<Object?> get props => [
  id,
  name,
  email,
  address,
  houseNumber,
  phoneNumber,
  city,
  picturePath,
  ];
}

User mockUser = User(
  id: 1,
  name: 'batman',
  email: 'ucupweb@gmail.com',
  address: 'Jl. Setiabudi No. 193',
  houseNumber: 'A2',
  phoneNumber: '08123456789',
  city: 'Bandung',
  picturePath: 'https://i.pinimg.com/564x/49/64/9f/49649fbf7c78a6df56dc4376693e7e3c.jpg'
);