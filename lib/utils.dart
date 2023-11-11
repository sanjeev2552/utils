library utils;

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

part 'debouncer.dart';

part 'validator.dart';

// services
part 'service/connectivity.service.dart';
part 'service/crashlytics.service.dart';
part 'service/context.service.dart';

// mvvm
part 'mvvm/observer.dart';
part 'mvvm/base_viewmodel.dart';
part 'mvvm/state_observer.dart';
part 'mvvm/events/base_event.dart';
part 'mvvm/events/loading_event.dart';
