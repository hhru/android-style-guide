<?xml version="1.0" encoding="utf-8"?>
<androidx.coordinatorlayout.widget.CoordinatorLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:id="@+id/${fragmentLayoutResName}_container"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="?attr/colorWhite">

    <com.google.android.material.appbar.AppBarLayout
        android:id="@+id/${fragmentLayoutResName}_app_bar"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        app:elevation="@dimen/dp0"
        app:layout_behavior="ru.hh.android.design_system.utils.widget.toolbar.AppBarScrollAwareLayoutBehavior">

        <com.google.android.material.appbar.CollapsingToolbarLayout
            android:id="@+id/${fragmentLayoutResName}_collapsing_toolbar"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            app:expandedTitleGravity="bottom"
            app:expandedTitleMarginBottom="@dimen/dp16"
            app:expandedTitleMarginEnd="@dimen/dp16"
            app:expandedTitleMarginStart="@dimen/dp16"
            app:layout_scrollFlags="scroll|exitUntilCollapsed|snap"
            app:toolbarId="@id/${fragmentLayoutResName}_toolbar">

            <com.google.android.material.appbar.MaterialToolbar
                android:id="@+id/${fragmentLayoutResName}_toolbar"
                android:layout_width="match_parent"
                android:layout_height="?attr/actionBarSize"
                android:background="?colorWhite"
                android:theme="@style/ThemeOverlay.MaterialComponents.ActionBar"
                app:layout_collapseMode="pin"
                app:navigationIcon="@drawable/ic_navbar_back"
                app:popupTheme="@style/ThemeOverlay.MaterialComponents.Light"
                app:titleTextAppearance="@style/Title1" />

        </com.google.android.material.appbar.CollapsingToolbarLayout>

    </com.google.android.material.appbar.AppBarLayout>

    <androidx.swiperefreshlayout.widget.SwipeRefreshLayout
        android:id="@+id/${fragmentLayoutResName}_swipe_refresh_layout"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        app:layout_behavior="@string/appbar_scrolling_view_behavior">

        <FrameLayout
            android:id="@+id/${fragmentLayoutResName}_content"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            app:layout_behavior="@string/appbar_scrolling_view_behavior">

            <ru.hh.android.design_system.organisms.zero_state.ZeroStateView
                android:id="@+id/${fragmentLayoutResName}_zero_state_view"
                android:layout_width="match_parent"
                android:layout_height="match_parent" />

            <androidx.recyclerview.widget.RecyclerView
                android:id="@+id/${fragmentLayoutResName}_recycler_view"
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:clipToPadding="false"
                android:scrollbars="vertical" />

        </FrameLayout>

    </androidx.swiperefreshlayout.widget.SwipeRefreshLayout>

</androidx.coordinatorlayout.widget.CoordinatorLayout>
