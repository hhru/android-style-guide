plugins {
    id("convention.kotlin-android-library")
<#if needUiLibraries>
    id("kotlin-android-extensions")
</#if>
    id("kotlin-kapt")
<#if needNetworkLibraries>
    id("kotlinx-serialization")
</#if>
<#if needTests>
    id("de.mannodermaus.android-junit5")
</#if>
}

dependencies {
    compileOnly(project(":shared:core:logger"))
    compileOnly(project(":shared:core:utils"))

    <#if needRx>
    // RxJava
    compileOnly(Libs.rx.rxJava)
    compileOnly(Libs.rx.rxAndroid)
    compileOnly(project(":shared:core:rx-core"))
    </#if>

    <#if needToothpick>
    // DI
    compileOnly(Libs.toothpick.core)
    compileOnly(Libs.toothpick.ktp)
    kapt(Libs.toothpick.compiler)
    compileOnly(project(":shared:core:di-core"))
    </#if>

    <#if needNetworkLibraries>
    // Network
    compileOnly(project(":shared:core:network"))
    compileOnly(project(":shared:core:network-model"))
    compileOnly(Libs.network.kotlinxSerializationJson)
    compileOnly(Libs.network.retrofit)
    compileOnly(Libs.network.retrofitKotlinxConverter)
    <#if needRx>
    compileOnly(Libs.network.adapterRxJava2)
    </#if>
    </#if>

    <#if needDbLibraries>
    // Database
    api(Libs.room.runtime)
    kapt(Libs.room.compiller)
    implementation(Libs.room.rxJava)
    </#if>

    <#if needUiLibraries>
    // UI
    compileOnly(project(":shared:core:ui:framework"))
    compileOnly(project(":shared:core:mvvm-core"))
    compileOnly(Libs.support.appCompat)
    </#if>

    <#if needMvi>
    // MVI
    compileOnly(project(":shared:core:mvi-core"))
    compileOnly(Libs.mviCore.binder)
    </#if>

    <#if needTests>
    // Tests
    testRuntimeOnly(Libs.test.junit5Engine)
    testImplementation(Libs.test.junit5Api)
    testImplementation(project(":shared:core:tests:base-logic"))
    <#if needRx>
    testImplementation(Libs.rx.rxJava)
    testImplementation(project(":shared:core:rx-core"))
    </#if>
    <#if needMvi>
    testImplementation(project(":shared:core:mvi-core"))
    </#if>
    </#if>

}
