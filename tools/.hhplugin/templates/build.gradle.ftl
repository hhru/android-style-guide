apply plugin: 'ru.hh.android.gradle_plugin.module_config'
<#if enable_moxy>

moduleConfigPlugin {
    enableMoxy = true
}
</if>

apply plugin: 'com.android.library'
apply plugin: 'kotlin-android'
apply plugin: 'kotlin-kapt'
<#if need_add_ui_modules_dependencies>
apply plugin: 'kotlin-android-extensions'
</#if>


dependencies {
    def libraries = rootProject.ext.deps

    <#list libraries_modules as module>
    compileOnly project(':${module}')
    </#list>

    // Kotlin
    implementation libraries.kotlin

    // DI
    compileOnly libraries.toothpick
    kapt libraries.toothpickCompiler

    <#if enable_moxy>
    // Moxy
    compileOnly libraries.moxy
    compileOnly libraries.moxyAppCompat
    kapt libraries.moxyCompiler
    </#if>

    <#if need_create_api_interface>
    // Gson
    compileOnly libraries.gson

    // Network
    compileOnly libraries.retrofit

    // RxJava
    compileOnly libraries.rxJava
    compileOnly libraries.rxAndroid
    </#if>
}