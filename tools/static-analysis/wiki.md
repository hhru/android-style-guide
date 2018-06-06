# Комментарии по некоторым правилам и их настройкам

1. [[lint] GradleDependency](#GradleDependency)
2. [[detekt] WildcardImport](#WildcardImport)


# <a name='GradleDependency'>[lint] GradleDependency</a>
Отключили, т.к. в текущей конфигурации, когда анализ проводится на PR в дев, мы не хотим что бы разработчики обгновляли зависимости библиотек в рамках реализации каких-либо фичей или правки багов.

# <a name='WildcardImport'>[detekt] WildcardImport</a>
ВОзникают проблему с автокоррекцией студии, которая делает WildcardImport для enum-ов
