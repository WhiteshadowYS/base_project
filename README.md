# Lalee

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

# Architecture
- BLoC with freezed and injectable
#### Versions:
    Flutter: 2.0.2
    Dart: 2.12.1
#### Version History
- 0.0.1 + 1 - No Releases

#### App Infrastucture: 
- All Singleton services created in "lib => config => third_party_module.dart".
- All Custom services created in "common" folder.
- All View in folder - presentation.
- All usecases, entityes, main blocs - domain folder.
- Connection with API and other services - data.

#### Code Generation:
- Models Created with - freezed & jsonSerializable
- Api connection created with - retrofit & dio
- For BLoC connection used - injectable + freezed
- For fast BLoC generation used - "freezed_bloc" VS Code extesions

#### Create new bloc: 
- Create a BLoC folder with "freezed_bloc".
- Add @injectable upper of bloc class.
    

    @injectable
    class ExampleBloc{}
- Write to console:
 

    flutter packages pub run build_runner build --delete-conflicting-outputs
- In view file create a STF widget and refactor them as this.
    

    class ExampleScreen extends StatefulWidget {
      @override
      _ExampleScreenState createState() => _ExampleScreenState();
    }

    class _ExampleScreenState extends BaseState<ExampleScreenState, ExampleScreenBloc, ExampleScreen> {
    
      @override
      Widget buildWidget(BuildContext context) {
          return storeObserver(
          context, 
          (state) {
              return Container();
          },
        );
      }
    }
    

# BLoC Example:
#### Bloc File:
    part 'example_screen_event.dart';
    part 'example_screen_event.dart';
    part 'example_screen_event.freezed.dart';
    
    @injectable
    class ExampleScreenBloc extends Bloc<ExampleScreenEvent, ExampleScreenState> {
      ExampleScreenBloc() : super(_Initial());
    
      @override
      Stream<ExampleScreenState> mapEventToState(
        ExampleScreenEvent event,
      ) async* {
        // TODO: implement mapEventToState
      }
    }
#### Event File:
    part of 'settings_screen_bloc.dart';
    
    @freezed
    class SettingsScreenEvent with _$SettingsScreenEvent {
      const factory SettingsScreenEvent.started() = _Started;
    }
#### State File:
    part of 'settings_screen_bloc.dart';

    @freezed
    class SettingsScreenState with _$SettingsScreenState {
      const factory SettingsScreenState.initial() = _Initial;
    }
    
# Entity Exaple: 
    part 'report.freezed.dart';
    part 'report.g.dart';
    
    @freezed
    class Report with _$Report {
      @JsonSerializable(
        fieldRename: FieldRename.snake,
        checked: true,
        explicitToJson: true,
      )
      const factory Report({
        @JsonKey(name: 'created_at') DateTime? creationDate,
        @JsonKey(name: 'report_type') ReportType? reportType,
        @JsonKey(name: 'file_path') String? filePath,
      }) = _Report;
    
      factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
    }
# Enum Example: 
    enum ReportType {
      @JsonValue('default')
      Default
    }
# View Example:
    class ExampleScreen extends StatefulWidget {
      @override
      _ExampleScreenState createState() => _ExampleScreenState();
    }

    class _ExampleScreenState extends BaseState<ExampleScreenState, ExampleScreenBloc, ExampleScreen> {
    
      @override
      Widget buildWidget(BuildContext context) {
          return storeObserver(
          context, 
          (state) {
              return Container();
          },
        );
      }
    }
    
