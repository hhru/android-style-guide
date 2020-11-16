class ${class_name}(parent: org.hamcrest.Matcher<android.view.View>) : com.agoda.kakao.recycler.KRecyclerItem<${class_name}>(parent) {

    <#list properties_declarations_list as property_declaration>
    ${property_declaration}
    </#list>

}