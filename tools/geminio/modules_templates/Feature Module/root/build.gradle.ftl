apply plugin: 'ru.hh.android.gradle_plugin.module_config'

apply plugin: 'com.android.library'
apply plugin: 'kotlin-android'
apply plugin: 'kotlin-kapt'
<#if needCreatePresentationLayer>
apply plugin: 'kotlin-android-extensions'
</#if>


dependencies {

    <#list __librariesModules as module>
compileOnly project(':${module}')
    </#list>

    // Kotlin
    compileOnly Libs.kotlin

    // DI
    compileOnly Libs.toothpick.core
    kapt Libs.toothpick.compiler

    <#if needCreatePresentationLayer>
    // Moxy
    compileOnly Libs.moxy.appCompat
    kapt Libs.moxy.compiler
    </#if>

    <#if needCreateApiInterface>
    // Gson
    compileOnly Libs.network.gson

    // Network
    compileOnly Libs.network.retrofit

    // RxJava
    compileOnly Libs.rx.rxJava
    compileOnly Libs.rx.rxAndroid
    </#if>
}