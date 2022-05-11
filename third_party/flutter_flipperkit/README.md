# flutter_flipperkit

[![pub version][pub-image]][pub-url]

[pub-image]: https://img.shields.io/pub/v/flutter_flipperkit.svg
[pub-url]: https://pub.dev/packages/flutter_flipperkit

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Introduction](#introduction)
  - [Features](#features)
- [Quick Start](#quick-start)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
    - [Android](#android)
    - [iOS](#ios)
  - [Usage](#usage)
  - [Run the app](#run-the-app)
- [Related Links](#related-links)
- [Discussion](#discussion)
- [License](#license)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Introduction

[Flipper](https://fbflipper.com) (Extensible mobile app debugger) for flutter. [View document](https://flutter-widget.live/flutter_flipperkit)

![](./screenshots/flipper.png)

### Features

- Network inspector
- Shared preferences inspector
- Redux inspector
- Database Browser

## Quick Start

### Prerequisites

Before starting make sure you have:

- Installed [Flipper Desktop](https://fbflipper.com/docs/getting-started.html)

### Installation

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  flutter_flipperkit: ^0.0.23
```

Or

```yaml
dependencies:
  flutter_flipperkit:
    git:
      url: https://github.com/blankapp/flutter_flipperkit
      ref: master
```

#### Android

Change your project files according to the example:

`android/app/build.gradle`:

```diff
android {
-    compileSdkVersion 27
+    compileSdkVersion 28

    defaultConfig {
-        targetSdkVersion 27
+        targetSdkVersion 28
    }
}
```

`android/app/gradle.properties`:

```diff
+android.useAndroidX=true
+android.enableJetifier=true
```

`android/settings.gradle`:

```diff
...

plugins.each { name, path ->
    def pluginDirectory = flutterProjectRoot.resolve(path).resolve('android').toFile()
    include ":$name"
    project(":$name").projectDir = pluginDirectory

+    if (name == 'flutter_flipperkit') {
+        include ':flipper-no-op'
+        project(':flipper-no-op').projectDir = new File(pluginDirectory, 'flipper-no-op')
+    }
}

...

```

#### iOS

> Open `ios/Runner.xcworkspace` Add a empty Swift file (e.g `Runner-Noop.swift`) into `Runner` Group And make sure the `Runner-Bridging-Header.h` file is created. 

Change your project `ios/Podfile` file according to the example:

```diff
# Uncomment this line to define a global platform for your project
-# platform :ios, '8.0'
+platform :ios, '9.0'

# CocoaPods analytics sends network stats synchronously affecting flutter build latency.
ENV['COCOAPODS_DISABLE_STATS'] = 'true'

project 'Runner', {
  'Debug' => :debug,
  'Profile' => :release,
  'Release' => :release,
}

def parse_KV_file(file, separator='=')
  file_abs_path = File.expand_path(file)
  if !File.exists? file_abs_path
    return [];
  end
  generated_key_values = {}
  skip_line_start_symbols = ["#", "/"]
  File.foreach(file_abs_path) do |line|
    next if skip_line_start_symbols.any? { |symbol| line =~ /^\s*#{symbol}/ }
    plugin = line.split(pattern=separator)
    if plugin.length == 2
      podname = plugin[0].strip()
      path = plugin[1].strip()
      podpath = File.expand_path("#{path}", file_abs_path)
      generated_key_values[podname] = podpath
    else
      puts "Invalid plugin specification: #{line}"
    end
  end
  generated_key_values
end

target 'Runner' do
  # Flutter Pod

  copied_flutter_dir = File.join(__dir__, 'Flutter')
  copied_framework_path = File.join(copied_flutter_dir, 'Flutter.framework')
  copied_podspec_path = File.join(copied_flutter_dir, 'Flutter.podspec')
  unless File.exist?(copied_framework_path) && File.exist?(copied_podspec_path)
    # Copy Flutter.framework and Flutter.podspec to Flutter/ to have something to link against if the xcode backend script has not run yet.
    # That script will copy the correct debug/profile/release version of the framework based on the currently selected Xcode configuration.
    # CocoaPods will not embed the framework on pod install (before any build phases can generate) if the dylib does not exist.

    generated_xcode_build_settings_path = File.join(copied_flutter_dir, 'Generated.xcconfig')
    unless File.exist?(generated_xcode_build_settings_path)
      raise "Generated.xcconfig must exist. If you're running pod install manually, make sure flutter pub get is executed first"
    end
    generated_xcode_build_settings = parse_KV_file(generated_xcode_build_settings_path)
    cached_framework_dir = generated_xcode_build_settings['FLUTTER_FRAMEWORK_DIR'];

    unless File.exist?(copied_framework_path)
      FileUtils.cp_r(File.join(cached_framework_dir, 'Flutter.framework'), copied_flutter_dir)
    end
    unless File.exist?(copied_podspec_path)
      FileUtils.cp(File.join(cached_framework_dir, 'Flutter.podspec'), copied_flutter_dir)
    end
  end

  # Keep pod path relative so it can be checked into Podfile.lock.
  pod 'Flutter', :path => 'Flutter'

  # Plugin Pods

  # Prepare symlinks folder. We use symlinks to avoid having Podfile.lock
  # referring to absolute paths on developers' machines.
  system('rm -rf .symlinks')
  system('mkdir -p .symlinks/plugins')
  plugin_pods = parse_KV_file('../.flutter-plugins')
  plugin_pods.each do |name, path|
    symlink = File.join('.symlinks', 'plugins', name)
    File.symlink(path, symlink)
    pod name, :path => File.join(symlink, 'ios')
  end

+  # If you use `use_frameworks!` in your Podfile,
+  # uncomment the below $static_framework array and also
+  # the pre_install section.  This will cause Flipper and
+  # it's dependencies to be built as a static library and all other pods to
+  # be dynamic.
+  # $static_framework = ['FlipperKit', 'Flipper', 'Flipper-Folly',
+  #   'CocoaAsyncSocket', 'ComponentKit', 'Flipper-DoubleConversion',
+  #   'Flipper-Glog', 'Flipper-PeerTalk', 'Flipper-RSocket', 'Yoga', 'YogaKit',
+  #   'CocoaLibEvent', 'OpenSSL-Universal', 'boost-for-react-native']
+  #
+  # pre_install do |installer|
+  #   Pod::Installer::Xcode::TargetValidator.send(:define_method, :verify_no_static_framework_transitive_dependencies) {}
+  #   installer.pod_targets.each do |pod|
+  #       if $static_framework.include?(pod.name)
+  #         def pod.build_type;
+  #           Pod::BuildType.static_library
+  #         end
+  #       end
+  #     end
+  # end
end

# Prevent Cocoapods from embedding a second Flutter framework and causing an error with the new Xcode build system.
install! 'cocoapods', :disable_input_output_paths => true

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ENABLE_BITCODE'] = 'NO'
    end
+    if target.name == 'YogaKit'
+      target.build_configurations.each do |config|
+        config.build_settings['SWIFT_VERSION'] = '4.1'
+      end
+    end
  end
+  file_name = Dir.glob("*.xcodeproj")[0]
+  app_project = Xcodeproj::Project.open(file_name)
+  app_project.native_targets.each do |target|
+    target.build_configurations.each do |config|
+      cflags = config.build_settings['OTHER_CFLAGS'] || '$(inherited) '
+      unless cflags.include? '-DFB_SONARKIT_ENABLED=1'
+        puts 'Adding -DFB_SONARKIT_ENABLED=1 in OTHER_CFLAGS...'
+        cflags << '-DFB_SONARKIT_ENABLED=1'
+      end
+      config.build_settings['OTHER_CFLAGS'] = cflags
+    end
+    app_project.save
+  end
+  installer.pods_project.save
end
```

### Usage

```dart
import 'package:flutter_flipperkit/flutter_flipperkit.dart';

void main() {
  FlipperClient flipperClient = FlipperClient.getDefault();

  flipperClient.addPlugin(new FlipperNetworkPlugin(
    // If you use http library, you must set it to false and use https://pub.dev/packages/flipperkit_http_interceptor
    // useHttpOverrides: false,
    // Optional, for filtering request
    filter: (HttpClientRequest request) {
      String url = '${request.uri}';
      if (url.startsWith('https://via.placeholder.com') || url.startsWith('https://gravatar.com')) {
        return false;
      }
      return true;
    }
  ));
  flipperClient.addPlugin(new FlipperReduxInspectorPlugin());
  flipperClient.addPlugin(new FlipperSharedPreferencesPlugin());
  flipperClient.start();

  runApp(MyApp());
}

...

```

> Please refer to [examples](./examples), to integrate `flutter_flipperkit` into your project.

You can install packages from the command line:

```bash
$ flutter clean
$ flutter packages get
```

### Run the app

```bash
$ flutter run
```

## Related Links

- https://github.com/facebook/flipper
- https://github.com/blankapp/flipper-plugin-dbbrowser
- https://github.com/blankapp/flipper-plugin-reduxinspector

## Discussion

If you have any suggestions or questions about this project, you can discuss it by [Telegram Group](https://t.me/flipper4flutter) with me.

## License

```text
MIT License

Copyright (c) 2019 LiJianying <lijy91@foxmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
