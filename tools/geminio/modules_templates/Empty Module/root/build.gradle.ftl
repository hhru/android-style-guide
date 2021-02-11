apply plugin: 'ru.hh.android.gradle_plugin.module_config'

apply plugin: 'com.android.library'
apply plugin: 'kotlin-android'
apply plugin: 'kotlin-kapt'
<#if needNetworkLibraries>
apply plugin: 'kotlinx-serialization'
</#if>
<#if needUiLibraries>
apply plugin: 'kotlin-android-extensions'
</#if>
<#if needTests>
apply plugin: 'de.mannodermaus.android-junit5'
</#if>

<#if needDbLibraries>
moduleConfigPlugin {
    enableKotlinSourceDir = true
    annotationProcessorOption 'room.schemaLocation', '$projectDir/schemas'.toString()
    annotationProcessorOption 'room.incremental', 'true'
}
</#if>


dependencies {
    compileOnly project(':shared-core-logger')
    compileOnly project(':shared-core-utils')

    // Kotlin
    compileOnly Libs.kotlin

    <#if needRx>
    // RxJava
    compileOnly Libs.rx.rxJava
    compileOnly Libs.rx.rxAndroid
    compileOnly project(':shared-core-rx')
    </#if>

    <#if needToothpick>
    // DI
    compileOnly Libs.toothpick.core
    kapt Libs.toothpick.compiler
    compileOnly project(':shared-core-di')
    </#if>

    <#if needNetworkLibraries>
    // Network
    compileOnly project(':shared-core-network')
    compileOnly project(':shared-core-network-model')
    compileOnly Libs.network.kotlinxSerializationJson
    compileOnly Libs.network.retrofit
    compileOnly Libs.network.retrofitKotlinxConverter
    <#if needRx>
    compileOnly Libs.network.adapterRxJava2
    </#if>
    </#if>

    <#if needDbLibraries>
    // Database
    api Libs.room.runtime
    kapt Libs.room.compiller
    implementation Libs.room.rxJava
    </#if>

    <#if needUiLibraries>
    // UI
    compileOnly project(':shared-core-ui')
    compileOnly project(':core-mvvm')
    compileOnly Libs.support.appCompat
    </#if>

    <#if needMvi>
    // MVI
    compileOnly project(':core-mvi')
    compileOnly Libs.mviCore.binder
    </#if>

    <#if needTests>
    // Tests
    testRuntimeOnly Libs.test.junit5Engine
    testImplementation Libs.test.junit5Api
    testImplementation Libs.kotlin
    testImplementation project(':core-tests')
    <#if needRx>
    testImplementation Libs.rx.rxJava
    testImplementation project(':shared-core-rx')
    </#if>
    <#if needMvi>
    testImplementation project(':core-mvi')
    </#if>
    </#if>

}