package ${package_name}

import ${r_file_package_name}.R
import com.agoda.kakao.screen.Screen
import ru.hh.android.core_tests.page.ScreenIntentions
<#list import_classes_fqn_list as import_item>
import ${import_item}
</#list>


class ${class_name} : Screen<${class_name}>() {

    <#list properties_declarations_list as property_declaration>
    ${property_declaration}
    </#list>


    val actions = Action()
    val checks = Check()


    inner class Action : ScreenIntentions<Action>() {
        // TODO - add your actions
    }

    inner class Check : ScreenIntentions<Check>() {
        // TODO - add your checks
    }

}