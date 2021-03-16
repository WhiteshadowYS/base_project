import 'package:base_project_template/dictionary/models/language.dart';
import 'package:base_project_template/dictionary/models/global/global_language.dart';
import 'package:base_project_template/dictionary/models/home_page/home_page_language.dart';
import 'package:base_project_template/dictionary/models/login_page/login_page_language.dart';

const Language ru = Language(
  name: 'Russian',
  global: GlobalLanguage(
    noNameText: 'Без Имени',
    buyButtonText: 'Купить',
    buttonOkText: 'Ок',
    buttonErrorText: 'Отмена',
    errorTitle: 'Ошибка',
    descriptionTitle: 'Описание',
    languageTitle: 'Выберете язык',
    cityTitle: 'Выберете город',
    currecyTitle: 'Цена: ',
    currencyValue: ' грн',
    weightTitle: 'Вес: ',
    weightValue: 'г',
  ),
  homePage: HomePageLanguage(
    title: 'Заказы',
    createdOrdersTitle: 'Новые',
    closedOrdersTitle: 'Закрытые',
    activeOrdersTitle: 'Активные',
    closeOrder: 'Закрыть',
    startOrder: 'Начать',
    startText: 'Начало',
    endText: 'Конец',
  ),
  loginPage: LoginPageLanguage(
    title: 'Вход',
    emailHint: 'Email',
    passwordHint: 'Password',
  ),
);
