/*
 * Created by Archer on 2022/12/13.
 * Copyright © 2022 Archer. All rights reserved.
 * Github: https://github.com/shrinex
 * Home: http://anyoptional.com
 */

import 'package:flutter_test/flutter_test.dart';
import 'package:shrinex_core/shrinex_core.dart';

enum MockWidgetState implements RawEnum<int> {
  init(1),
  activate(2),
  deactivate(3),
  dispose(4);

  @override
  final int rawValue;

  const MockWidgetState(this.rawValue);
}

void main() {
  group("byRawValue", () {
    test(
        "byRawValue_whenMatch_returnsEnumValue",
        () => {
              expect(
                MockWidgetState.values.byRawValue(1),
                MockWidgetState.init,
              ),
              expect(
                MockWidgetState.values.byRawValue(2),
                MockWidgetState.activate,
              ),
            });

    test(
        "byRawValue_whenNotMatch_returnsNull",
        () => {
              expect(
                MockWidgetState.values.byRawValue(0),
                null,
              )
            });
  });

  group("byRequiredRawValue", () {
    test(
        "byRequiredRawValue_whenMatch_returnsEnumValue",
        () => {
              expect(
                MockWidgetState.values.byRequiredRawValue(3),
                MockWidgetState.deactivate,
              )
            });

    test(
        "byRequiredRawValue_whenNotMatch_throwsArgumentError",
        () => {
              expect(
                () => MockWidgetState.values.byRequiredRawValue(-1),
                throwsArgumentError,
              )
            });
  });
}
