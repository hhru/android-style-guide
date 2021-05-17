package ${package_name}

class ${class_name} : com.agoda.kakao.screen.Screen<${class_name}>() {

    <#list properties_declarations_list as property_declaration>
    ${property_declaration}
    </#list>


    val actions = Action()
    val checks = Check()


    inner class Action : ru.hh.android.core_tests.page.ScreenIntentions<Action>() {
        // TODO - add your actions
    }

    inner class Check : ru.hh.android.core_tests.page.ScreenIntentions<Check>() {
        // TODO - add your checks
    }

}
