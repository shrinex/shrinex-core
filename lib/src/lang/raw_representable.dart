/*
 * Created by Archer on 2022/12/10.
 * Copyright © 2022 Archer. All rights reserved.
 * Github: https://github.com/shrinex
 * Home: http://anyoptional.com
 */

abstract class RawRepresentable<T> {
  T get rawValue;
}

abstract class RawEnum<T> extends Enum implements RawRepresentable<T> {}

extension EnumByRawValue<T, E extends RawEnum<T>> on Iterable<E> {
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
