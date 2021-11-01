// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_balance.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TotalBalanceAdapter extends TypeAdapter<TotalBalance> {
  @override
  final int typeId = 1;

  @override
  TotalBalance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TotalBalance()..amount = fields[0] as dynamic;
  }

  @override
  void write(BinaryWriter writer, TotalBalance obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.amount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TotalBalanceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
