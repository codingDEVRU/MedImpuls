# **MedImpuls**
## Локальной платформы «МедИмпульс» для контроля качества медицинских данных, их псевдонимизации и подготовки к воспроизводимому статистическому анализу
# Структура каталогов проекта:
### medimpuls/
### ├── .gitignore
### ├── LICENSE
### ├── README.md
### ├── CHANGELOG.md
### ├── Makefile                         # (опционально) автоматизация сборки, тестирования
### ├── docs/                             # Документация проекта
#### │   ├── user_guide.md
#### │   ├── admin_guide.md
#### │   ├── developer_guide.md
#### │   ├── api_reference.md
### │   └── demo/                         # Демонстрационные материалы (скриншоты, видео)
#### │   ├── screenshots/
#### │   └── demo_video.mp4
### ├── config/                           # Конфигурационные файлы
#### │   ├── app_settings.json              # Основные настройки приложения (порт, пути, ключи)
#### │   ├── logging.conf
### │   └── dq_rules/                      # Правила контроля качества (внешнее описание, если нужно)
#### │       ├── base_rules.json
#### │       └── advanced_rules.json
### ├── database/                          # Скрипты инициализации БД
#### │   ├── init.sql                        # Создание таблиц (InterBase/SQLite)
#### │   └── seeds/                           # Начальные данные (словари МКБ-10 и т.п.)
### ├── src/                                # Исходный код (Delphi)
#### │   ├── MedImpuls.dproj                  # Главный проект Delphi
#### │   ├── MedImpuls.dpr
### │   ├── Core/
#### │   │   ├── UApplication.pas
#### │   │   ├── USettings.pas
#### │   │   ├── UUtils.pas
#### │   │   └── UCryptoUtils.pas
### │   ├── WebUI/
#### │   │   ├── UWebServer.pas
#### │   │   ├── UWebRoutes.pas
#### │   │   └── UWebHandlers.pas
### │   ├── Ingestion/
#### │   │   ├── UIngestionEngine.pas
#### │   │   └── UIngestionHandlers.pas
### │   ├── PrivacyGate/
#### │   │   ├── UPrivacyGate.pas
#### │   │   └── UKeyManager.pas
### │   ├── DataQuality/
#### │   │   ├── UDQEngine.pas
#### │   │   ├── UDQRules.pas
#### │   │   ├── UDQAdvancedRules.pas
#### │   │   ├── UDQReport.pas
#### │   │   └── USRSCalculator.pas
### │   ├── CohortBuilder/
#### │   │   ├── UCohortBuilder.pas
#### │   │   ├── UFilter.pas
#### │   │   └── URanking.pas
### │   ├── Database/
#### │   │   ├── UDBManager.pas
#### │   │   └── UDBEntities.pas
### │   ├── Versioning/
#### │   │   ├── UVersioning.pas
#### │   │   └── UManifest.pas
### │   ├── Audit/
#### │   │   ├── UAudit.pas
#### │   │   └── UAuditLog.pas
### │   ├── Export/
#### │   │   ├── UExporter.pas
#### │   │   └── UExportFormats.pas
### │   ├── AI/                             # (опционально)
#### │   │   ├── ULocalAI.pas
#### │   │   └── URecommendations.pas
### │   └── ThirdParty/                      # Внешние компоненты
#### │       ├── TeeBI/
#### │       ├── WebUI4Delphi/
#### │       └── DCPcrypt/
### ├── webroot/                            # Статические файлы веб-интерфейса (локальные)
#### │   ├── index.html
### │   ├── css/
#### │   │   └── main.css
### │   ├── js/
#### │   │   ├── app.js
#### │   │   └── charts.js
### │   ├── assets/
#### │   │   ├── logo.svg
#### │   │   └── favicon.ico
### │   └── lib/                             # Локальные копии библиотек (Alpine.js, Chart.js)
#### │       ├── alpine.min.js
#### │       └── chart.min.js
### ├── data/                                # Динамические данные (создаются при работе)
#### │   ├── uploads/                           # Загруженные пользователем файлы
#### │   ├── exports/                           # Экспортированные датасеты и манифесты
#### │   ├── temp/                              # Временные файлы обработки
#### │   └── db/                                # Файлы базы данных (meddata.ib, если InterBase)
### ├── tests/                                # Тесты
### │   ├── DUnitX/
#### │   │   ├── TestDQEngine.pas
#### │   │   ├── TestPrivacyGate.pas
#### │   │   └── ...
### │   ├── TestData/                           # Тестовые наборы (обезличенные)
#### │   └── test_runner.bat                      # Запуск тестов
### ├── scripts/                              # Вспомогательные скрипты
#### │   ├── build.bat / build.sh                 # Сборка проекта
#### │   ├── run_local.bat                         # Запуск приложения локально (exe)
#### │   └── package_installer.bat                  # Создание дистрибутива (архива)
### ├── deliverables/                          # Поставляемые результаты по гранту
#### │   ├── PR1_MVP_platform/                     # Дистрибутив (архив с программой)
#### │   ├── PR2_configs/                           # Конфигурационные файлы и скрипты
#### │   ├── PR3_admin_guide.pdf
#### │   ├── PR4_user_guide.pdf
#### │   ├── PR5_rules_description.pdf
#### │   ├── PR6_business_plan.pdf
### │   ├── PR7_website/                            # Исходники сайта проекта (или ссылка)
### │   ├── PR8_demo_materials/                      # Скриншоты, видео
### │   └── PR9_program_registration/                 # Документы о регистрации ПО
### └── bin/                                   # Скомпилированные файлы (выходная папка)
#### ├── MedImpuls.exe
### ├── webroot/                              # Копия webroot для работы exe
### ├── config/                                # Копия конфигурации
### └── data/      # Ссылка или папка данных (создаётся при первом запуске)
