Набор соглашений по оформлению кода на языке XML. 

# Содержание
1. [Общие положения](#common_rules)
1. [Длина строки](#line_length)
1. [Правила именования xml-ресурсов](#resources_naming)
1. [Правила именования id](#id_naming)
1. [Порядок следования модификаторов](#modifier_order) 
1. [Текстовые поля](#text_fields)

# <a name='common_rules'>Общие положения</a>
- В файле не должно быть предупреждений

# <a name='line_length '>Длина строки</a>
- Максимальная длина строки: 100 символов.

# <a name='resources_naming'>Правила именования xml-ресурсов</a>
- Имя записано в стиле lower_snake_case.xml

## drawable
- Имя имеет маску {название ресурса}\_{описание}\_{свойства: размер, цвет и пр.}
- Сокращенные названия ресурсов:

| Полное название | Сокращенное название |
| --------------- | -------------------- |
| icon            | ic                   |
| background      | bg                   |

- Последовательность указания свойств:
  1. размер
  2. цвет
  3. прочие

Пример:\
ic_favorite_gray_24dp\
bg_button_blue.xml

## menu
- Имя имеет маску {описание}

Пример:\
resume_contacts.xml\
vacancy_actions.xml

## anim
- Имя имеет маску {описание}\_{свойства: время действия (опционально)}

Пример:\
enter_from_left_250ms.xml\
hide_icon.xml

# <a name='id_naming'>Правила именования Id</a>
- Имя записано в стиле lower_snake_case
- Имя имеет маску (название файла)(сокращенное название виджета)(название элемента) 
- Сокращенное название виджета:

| Сокращенное название | Виджет |
| ------ | ------ |
| view | View |
| text_view | TextView |
| edit_text | EditText |
| recycler | RecyclerView |
| button | Button |
| container | ViewGroup и все его наследники контейнеры |
- Название элемента отражает его предназначение. 


```xml
    <EditText
        android:id="@+id/fragment_discard_edit_text_phone"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:inputType="phone"/>
```

# <a name='modifier_order'>Порядок следования элементов</a>
В разработке

# <a name='text_fields'>Текстовые поля</a>
- Все тексты должны быть вынесены в ресурсы
- Исключение составляет текст для верстки, помеченный xml схемой **tools**
