<#if needUiLibraries>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="${packageName}">

    <application android:theme="@style/Theme.HH" />

</manifest>
<#else>
<manifest package="${packageName}" />
</#if>