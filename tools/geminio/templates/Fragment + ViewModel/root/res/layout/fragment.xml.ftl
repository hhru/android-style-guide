<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <#if needToolbar == true>
    <include
        android:id="@+id/${fragmentLayoutResName}_toolbar"
        layout="@layout/toolbar" />
    </#if>

    <FrameLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent">

        <#if needZeroStateView == true>
        <ru.hh.android.design_system.organisms.zero_state.ZeroStateView
            android:id="@+id/${fragmentLayoutResName}_zero_view"
            android:layout_width="match_parent"
            android:layout_height="match_parent" />
        </#if>

        <#if needRecyclerView == true>
        <androidx.recyclerview.widget.RecyclerView
            android:id="@+id/${fragmentLayoutResName}_recycler_view"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:clipToPadding="false"
            android:scrollbars="vertical" />
        </#if>

    </FrameLayout>

</LinearLayout>
