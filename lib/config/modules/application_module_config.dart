import 'package:injectable/injectable.dart';
import 'package:base_project/common/logic/focus/focus_manager.dart';
import 'package:base_project/common/logic/focus/i_focus_manager.dart';
import 'package:base_project/common/logic/validator/validator.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/common/logic/storage/storage.dart';
import 'package:base_project/common/logic/storage/i_storage.dart';
import 'package:base_project/domain/shared/dictionary/language.dart';
import 'package:base_project/common/logic/validator/i_validator.dart';
import 'package:base_project/common/handlers/deep_link/deep_link.dart';
import 'package:base_project/common/presentors/screen/screen_manager.dart';
import 'package:base_project/common/logic/validator/default_validator.dart';
import 'package:base_project/common/presentors/dictionary/i_dictionary.dart';
import 'package:base_project/common/presentors/screen/i_screen_manager.dart';
import 'package:base_project/common/logic/device_info/i_device_info_loader.dart';
import 'package:base_project/common/logic/project_info/i_project_info_loader.dart';
import 'package:base_project/common/logic/device_info/base_device_info_loader.dart';
import 'package:base_project/common/logic/project_info/base_project_info_loader.dart';
import 'package:base_project/utils/res/app_data.dart';

@module
abstract class ApplicationModuleConfig {
  AppRouter get _router => dependencyContainer!.get<AppRouter>();
  IDeviceInfoLoader get _deviceInfo => dependencyContainer!.get<IDeviceInfoLoader>();
  IDictionary<Language> get _dictionary => dependencyContainer!.get<IDictionary<Language>>();

  @singleton
  @factoryMethod
  AppRouter get router => AppRouter();

  @singleton
  @factoryMethod
  IDeviceInfoLoader get deviceInfo => BaseDeviceinfoLoader();

  @singleton
  @factoryMethod
  IValidator get validator {
    return Validator({
      Field.Email: {
        dictionary.data.errors.invalidValue: (arg) => !AppData.validations.emailRegExp.hasMatch(arg),
      },
      Field.FirstName: {
        dictionary.data.errors.nameValidation: (arg) => !AppData.validations.nameRegExp.hasMatch(arg),
      },
      Field.LastName: {
        dictionary.data.errors.nameValidation: (arg) => !AppData.validations.nameRegExp.hasMatch(arg),
      },
      Field.Instagram: {
        dictionary.data.errors.instagramValidation: (arg) => !AppData.validations.linkValidation.hasMatch(arg),
      },
      Field.Link: {
        dictionary.data.errors.websiteValidation: (arg) => !AppData.validations.linkValidation.hasMatch(arg),
      },
      Field.Location: {
        dictionary.data.errors.locationValidation: (arg) => !AppData.validations.locationRegExp.hasMatch(arg),
      },
      Field.Password: {
        dictionary.data.errors.invalidPassword: (arg) => !AppData.validations.passwordRegExp.hasMatch(arg),
      },
      Field.Phone: {
        dictionary.data.errors.phoneValidation: (arg) => !AppData.validations.phoneRegExp.hasMatch(arg),
      },
      Field.CompanyName: {
        dictionary.data.errors.companyValidation: (arg) => !AppData.validations.companyNameRegExp.hasMatch(arg),
      },
      Field.Role: {
        dictionary.data.errors.roleValidation: (arg) => !AppData.validations.companyRoleRegExp.hasMatch(arg),
      },
    });
  }

  @singleton
  @factoryMethod
  IProjectInfoLoader get projectInfo => BaseProjectinfoLoader();

  @singleton
  @factoryMethod
  IScreenManager get screenManager => ScreenManager(_deviceInfo);

  @singleton
  @factoryMethod
  IStorage get storage => Storage()..init();

  @singleton
  @factoryMethod
  DeepLinkService get deepLinks => DeepLinkService(_router);

  @injectable
  @factoryMethod
  IFocusManager get focusManager => FocusManager();
}
