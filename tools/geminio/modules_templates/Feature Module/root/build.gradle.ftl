apply plugin: 'ru.hh.android.gradle_plugin.module_config'

apply plugin: 'com.android.library'
apply plugin: 'kotlin-android'
apply plugin: 'kotlin-kapt'
<#if needCreatePresentationLayer>
apply plugin: 'kotlin-android-extensions'
</#if>


dependencies {
    compileOnly project(':shared-core-logger')
    compileOnly project(':shared-core-utils')
    compileOnly project(':analytics-api')

    <#list __librariesModules as module>
compileOnly project(':${module}')
    </#list>

    // Kotlin
    compileOnly Libs.kotlin

    // DI
    compileOnly Libs.toothpick.core
    kapt Libs.toothpick.compiler

    <#if needCreatePresentationLayer>
    compileOnly project(':base-ui')

    // Moxy
    compileOnly Libs.moxy.appCompat
    kapt Libs.moxy.compiler
    </#if>

    <#if needCreateApiInterface>
    compileOnly project(':shared-core-network')
    compileOnly project(':analytics-api')

    // Gson
    compileOnly Libs.network.gson

    // Network
    compileOnly Libs.network.retrofit

    // RxJava
    compileOnly Libs.rx.rxJava
    compileOnly Libs.rx.rxAndroid
    </#if>
}