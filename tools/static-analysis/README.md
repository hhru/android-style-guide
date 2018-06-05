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
Так же есть возможность настройки выполнения таски. Для этого нужно в проекте (рутовом gradle-скрипте) задать соответствующие проперти в виде объекта anlysators:
```gradle
ext.anlysators = [
        staticAnalysisExcludes : ["cpd", "pmd", "checkstyle"],
        detektBaselinePath: "${rootDir}/detekt/detekt-baseline.xml",
        lintBaselinePath: "${rootDir}/lint/"
]
```
1. В параметре `staticAnalysisExcludes` можно указать какие инструменты мы хотим исключить при выполнении анализа. В качестве элементов можно указать: *cpd, pmd, checkstyle, detekt, lint*.
2. В параметре `detektBaselinePath` можно указать путь до baseline файла к detekt-у
3. В параметре `lintBaselinePath` можно указать путь до директории с baseline файл(ом/ами) к lint-у. Из-за того что проект может содержать несколько модулей, то и baseline файлов к lint-у может быть несколько

# ROADMAP

1. Сделать таску для генерации baseline файлов
2. Подумать как можно ускорить повторный процесс проверки на ошибки