# Инструкция по настройке

Для текущей реализации проще всего подключить весь репозиторий к проекту целиком как submodule.
После подключения submodule к проекту в рутовом build.script необходимо подключить gradle-файл из подмодуля:
```gradle
apply from: rootProject.file('android-style-guide/tools/static-analysis/gradle/staticAnalysis.gradle')
```
Сейчас поддерживается возможность запустить следующие анализаторы:
  - detekt
  - android lint
  - cpd
  - pmd
  - checkstyle

Для использования CPD так же необходимо подключить [gradle-плагин](https://github.com/aaschmid/gradle-cpd-plugin)
```gradle
dependencies {
    classpath 'de.aaschmid:gradle-cpd-plugin:1.0'
}
```
Для выполнения задачи на анализ кода необходимо выполнить в консоле команду:
```sh
./gradlew staticAnalysis
```
Результатом выполнения таски явлется как отчет о проведенном анализе в консоли, так и набор артефактов, которые располагаются по пути `BuildProjectDir/reports`:
1. Файлы с результатами, соответствующие подключенным анализаторам
2. Файл full_report.html, который агрегирует все ошибки, найденные разными анализаторами
3. Файл count_report.txt, который содержит только число найденных ошибок

Так же есть возможность настройки выполнения таски. Для этого нужно в проекте (рутовом gradle-скрипте) задать соответствующие проперти в виде объекта anlysators:
```gradle
ext.anlysators = [
        staticAnalysisExcludes : ["cpd", "pmd", "checkstyle"],
        detektBaselinePath: "${rootDir}/detekt/detekt-baseline.xml",
        detektConfigPath: "${rootDir}/detekt/detekt-config.xml",
        lintBaselinePath: "${rootDir}/lint/"
        lintConfigPath: "${rootDir}/lint/lint-config.xml"
]
```
1. В параметре `staticAnalysisExcludes` можно указать какие инструменты мы хотим исключить при выполнении анализа. В качестве элементов можно указать: *cpd, pmd, checkstyle, detekt, lint*.
2. В параметре `detektBaselinePath` можно указать путь до baseline файла к detekt-у
3. В параметре `detektConfigPath` можно указать путь до конфиг файла к detekt-у
4. В параметре `lintBaselinePath` можно указать путь до директории с baseline файл(ом/ами) к lint-у. Из-за того что проект может содержать несколько модулей, то и baseline файлов к lint-у может быть несколько
5. В параметре `lintConfigPath` можно указать путь до конфиг файла к lint-у

Так же есть поддержка задавать разные профили для проведения анализа, профили и настройки к ним указываются внутри объекта anlysators:
```gradle
ext.anlysators = [
        staticAnalysisExcludes : ["cpd", "pmd", "checkstyle"],
        detektBaselinePath: "${rootDir}/detekt/detekt-baseline.xml",
        detektConfigPath: "${rootDir}/detekt/detekt-config.xml",
        lintBaselinePath: "${rootDir}/lint/"
        lintConfigPath: "${rootDir}/lint/lint-config.xml",

        release : [
                    staticAnalysisExcludes : ["cpd", "pmd", "checkstyle", "lint"],
                    detektConfigPath: "${rootDir}/detekt/detekt-release-config.xml",
                    lintConfigPath: "${rootDir}/lint/lint-release-config.xml"
                  ]
]
```
Для выполнения задачи на анализ с использованием профиля необходимо в командной строке указать профиль с помощью параметра `useProfile`:
```sh
./gradlew staticAnalysis -PuseProfile=release
```

При запуске через командную строку есть возможность ограничить запуск проверок lint-a одим модулем с помощью параметра `runLintModuleOnly`:
```sh
./gradlew staticAnalysis -PrunLintModuleOnly=common
```
Для создания baseline файлов для lint-a необходимо выполнить команду.
```sh
./gradlew generateLintBaseline
```
При выполнении этой таски в конфиге должен быть обязательно указан параметр `lintBaselinePath`.
Так же при выполнении этой таски будет полностью удалено содержимое каталога, указаного в параметре `lintBaselinePath`.

Для создания дефолтного конфига для detekt-a необходимо выполнить команду.
```sh
./gradlew generateDetektConfig
```
После успешного выполнения gradle-таски будет создан файл default-detekt-config.yml в корне проекта.

Для создания baseline файла для detekt-a необходимо выполнить команду.
```sh
./gradlew generateDetektBaseline
```
После выполнения gradle-таски будет создан файл detekt-baseline.xml в корне проекта. Gradle-таска завершается не успешно, из-за реализации генерации baseline файла detekta-a.

# ROADMAP

1. Подумать как можно ускорить повторный процесс проверки на ошибки