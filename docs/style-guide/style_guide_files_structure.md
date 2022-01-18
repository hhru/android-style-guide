# Структура файлов в feature-модуле и feature:core-модуле

## Корневая директория

Корневая директория модуля должна иметь следующую структуру (квадратные скобки - директория):

```
- [data]
- [domain]
- [presentation]
- [facade]
- [analytics]
- [experiment]
```

- `[data]` - data-слой, место для источников данных, внутри могут появляться директории `[network]`, `[local]` и другие;
- `[domain]` - domain-слой приложения, место для интеракторов, domain-моделей и прочего;
- `[presentation]` - presentation-слой, место для `Fragment`-ов, `ViewModel`, `View` и все что угодно, связанное с UI;
- `[facade]` - место для `FeatureFacade` и его компонентов, а также для вспомогательных классов, являющихся частью api
  или deps фичи;
- `[analytics]` - место для аналитики;
- `[experiment]` - классы экспериментов.

Если какие-то директории не требуются, то их не нужно добавлять в корневую директорию модуля.

**Пример**

- нет эксперимента в фиче - директория `[experiment]` не нужна;
- feature:core модуль, где нет presentation-слоя - директория `[presentation]` не нужна.

## Структура внутри директорий

В каждой директории могут появляться дополнительные директории для удобства навигации по файлам в зависимости от
сложности вашего модуля.

**Примеры**

- Если в вашем domain-слое присутствуют несколько интеракторов, моделей, утилитных классов, то лучше их положить в
  отдельные директории внутри `[domain]`, т.е.:

```
- [domain]
    - [interactor]
        - Interactor1.kt
        - Interactor2.kt
    - [model]
        - Model1.kt
        - Model2.kt
    - [utils]
        - Utils1.kt
        - Utils2.kt
```

- Если `FeatureFacade` имеет `Deps` разбитый на несколько интерфейсов, то следует их сложить в отдельную директорию
  внутри `[facade]`:

```
- [facade]
    - [deps]
        - Deps1.kt
        - Deps2.kt
        - Deps3.kt
        - FeatureDeps.kt
    - FeatureApi.kt
    - FeatureFacade.kt
    - FeatureModule.kt
```

## Директория для компонентов MVI

Обычно MVI может появляться только в 2 слоях приложения: `[domain]` (стандартный MVI с бизнес-логикой экрана)
и `[data]` (`StoreFeature`). Компоненты MVI необходимо складывать в директорию `[mvi]`, а эта директория дополнительно
помещается в директорию `[domain]` /  `[data]` слоя.

```
- [data]
    - [mvi]
        - DataFeature.kt
        - DataActor.kt
        - DataReducer.kt
- [domain]
    - [mvi]
        - DomainFeature.kt
        - DomainActor.kt
        - DomainReducer.kt
```

## Директории для DI-модулей

DI-модули делим на 4-типа в зависимости от кого, какие компоненты в него установлены:

- рутовый модуль для FeatureFacade c байндингом `Api` модуля;
- модуль data-слоя
- модуль domain-слоя
- модуль presentation-слоя

Следовательно, DI-модули требуется складывать в соответствующие директории:

- `[facade/di]`
- `[data/di]`
- `[domain/di]`
- `[presentation/di]`

При этом могут появляться дополнительные директории внутри каждого слоя для лучшего структурирования компонентов.

**Пример**

Фича-модуль, где есть несколько экранов в рамках этой фичи. DI-модуль presentation-слоя конкретного экрана можно сложить
в `[presentation/screen_name/di]`:

```
- [presentation]
    - [screen_1]
        - [di]
            - Module1.kt
        - Fragment1.kt
        - ViewModel1.kt
    - [screen_2]
        - [di]
            - Module2.kt
        - Fragment2.kt
        - ViewModel2.kt
    - [screen_3]
        - [di]
            - Module3.kt
        - Fragment3.kt
        - ViewModel3.kt
```

