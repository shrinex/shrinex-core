/*
 * Created by Archer on 2022/12/13.
 * Copyright © 2022 Archer. All rights reserved.
 * Github: https://github.com/shrinex
 * Home: http://anyoptional.com
 */

import 'package:flutter_test/flutter_test.dart';
import 'package:shrinex_core/shrinex_core.dart';

class MockPet implements SelfDescribing {
  final String name;

  final String master;

  @override
  String get description => "$master's pet $name";

  const MockPet(this.master, this.name);
}

void main() {
  test("description", () {
    const pet = MockPet("archer", "labubu");
    expect(pet.description, "archer's pet labubu");
  });
}
