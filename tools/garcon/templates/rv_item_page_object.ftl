class ${class_name}(parent: Matcher<View>) : KRecyclerItem<${class_name}>(parent) {

    <#list properties_declarations_list as property_declaration>
    ${property_declaration}
    </#list>

}