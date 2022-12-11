/*
 * Created by Archer on 2022/12/10.
 * Copyright © 2022 Archer. All rights reserved.
 * Github: https://github.com/shrinex
 * Home: http://anyoptional.com
 */

/// A type that can be converted to and from an associated raw value
abstract class RawRepresentable<T> {
  /// The corresponding value of the raw type
  T get rawValue;
}

abstract class RawEnum<T> extends Enum implements RawRepresentable<T> {}

/// Access enum values by rawValue
extension EnumByRawValue<T, E extends RawEnum<T>> on Iterable<E> {
  /// Finds the enum value in this list with rawValue [rawValue]
  E byRawValue(T rawValue) {
    for (var value in this) {
      if (value.rawValue == rawValue) {
        return value;
      }
    }
    throw ArgumentError.value(
        rawValue, "rawValue", "No enum value with that rawValue");
  }
}
