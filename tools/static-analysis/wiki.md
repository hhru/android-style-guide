# Комментарии по некоторым правилам и их настройкам

1. [[lint] GradleDependency](#GradleDependency)
2. [[detekt] WildcardImport](#WildcardImport)
3. [[detekt] UtilityClassWithPublicConstructor](#UtilityClassWithPublicConstructor)
4. [[lint] NewerVersionAvailable](#NewerVersionAvailable)


# <a name='GradleDependency'>[lint] GradleDependency</a>
Отключили, т.к. в текущей конфигурации, когда анализ проводится на PR в дев, мы не хотим что бы разработчики обгновляли зависимости библиотек в рамках реализации каких-либо фичей или правки багов.

# <a name='WildcardImport'>[detekt] WildcardImport</a>
Возникают проблему с автокоррекцией студии, которая делает WildcardImport для enum-ов

# <a name='UtilityClassWithPublicConstructor'>[detekt] UtilityClassWithPublicConstructor</a>
Правило предполагает переводить классы без состояний в object, но мы наоборот хотим использовать object по минимому

# <a name='NewerVersionAvailable'>[lint] NewerVersionAvailable</a>
Отключили, т.к. в текущей конфигурации, когда анализ проводится на PR в дев, мы не хотим что бы разработчики обгновляли зависимости библиотек в рамках реализации каких-либо фичей или правки багов.
