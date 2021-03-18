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
    implementation project(':shared:core:logger')
    implementation project(':shared:core:utils')

    <#if needRx>
    // RxJava
    implementation Libs.rx.rxJava
    implementation Libs.rx.rxAndroid
    implementation project(':shared:core:rx-core')
    </#if>

    <#if needToothpick>
    // DI
    implementation Libs.toothpick.core
    kapt Libs.toothpick.compiler
    implementation project(':shared:core:di-core')
    </#if>

    <#if needNetworkLibraries>
    // Network
    implementation project(':shared:core:network')
    implementation project(':shared:core:network-model')
    implementation Libs.network.kotlinxSerializationJson
    implementation Libs.network.retrofit
    implementation Libs.network.retrofitKotlinxConverter
    <#if needRx>
    implementation Libs.network.adapterRxJava2
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
    implementation project(':shared:core:ui:framework')
    implementation project(':shared:core:mvvm-core')
    implementation Libs.support.appCompat
    </#if>

    <#if needMvi>
    // MVI
    implementation project(':shared:core:mvi-core')
    implementation Libs.mviCore.binder
    </#if>

    <#if needTests>
    // Tests
    testRuntimeOnly Libs.test.junit5Engine
    testImplementation Libs.test.junit5Api
    testImplementation project(':shared:core:tests:base-logic')
    <#if needRx>
    testImplementation Libs.rx.rxJava
    testImplementation project(':shared:core:rx-core')
    </#if>
    <#if needMvi>
    testImplementation project(':shared:core:mvi-core')
    </#if>
    </#if>

}