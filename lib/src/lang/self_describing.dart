/*
 * Created by Archer on 2022/12/10.
 * Copyright © 2022 Archer. All rights reserved.
 * Github: https://github.com/shrinex
 * Home: http://anyoptional.com
 */

/// A type with a customized textual representation
mixin SelfDescribing {
  /// A textual representation of this instance
  String get description => toString();
}
