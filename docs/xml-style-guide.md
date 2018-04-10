Набор соглашений по оформлению кода на языке XML. 

# Содержание
1. [Общие положения](#common_rules)
2. [Длина строки](#line_length)
3. [Правила именования id](#naming)
4. [Порядок следования модификаторов](#modifier_order) 
5. [Текстовые поля](#text_fields)


# <a name='common_rules'>Общие положения</a>
- В файле не должно быть предупреждений

# <a name='line_length '>Длина строки</a>
- Максимальная длина строки: 100 символов.

# <a name='naming'>Правила именования Id</a>
- Имя записано в стиле lower_snake_case
- Имя имеет маску (название файла)(сокращенное название виджета)(название элемента) 
- Сокращенное название виджета:

| Сокращенное название | Виджет |
| ------ | ------ |
| view | View |
| text | TextView |
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
