<android.support.design.widget.CoordinatorLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:fitsSystemWindows="true"
    tools:context="us.kostenko.mockingbird.track.TrackContainerActivity"
    tools:ignore="MergeRootFrame">

    <android.support.design.widget.AppBarLayout
        android:id="@+id/app_bar"
        android:layout_width="match_parent"
        android:layout_height="@dimen/app_bar_height"
        android:fitsSystemWindows="true"
        android:theme="@style/ThemeOverlay.AppCompat.Dark.ActionBar">

        <android.support.design.widget.CollapsingToolbarLayout
            android:id="@+id/toolbar_layout"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:fitsSystemWindows="true"
            app:contentScrim="?attr/colorPrimary"
            app:layout_scrollFlags="scroll|exitUntilCollapsed"
            app:toolbarId="@+id/toolbar">

            <android.support.v7.widget.Toolbar
                android:id="@+id/toolbar"
                android:layout_width="match_parent"
                android:layout_height="?attr/actionBarSize"
                app:layout_collapseMode="pin"
                app:popupTheme="@style/ThemeOverlay.AppCompat.Light"/>

        </android.support.design.widget.CollapsingToolbarLayout>

    </android.support.design.widget.AppBarLayout>

    <android.support.v4.widget.NestedScrollView
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        app:layout_behavior="@string/appbar_scrolling_view_behavior">

        <TextView xmlns:android="http://schemas.android.com/apk/res/android"
                  xmlns:tools="http://schemas.android.com/tools"
                  android:id="@+id/trackDetail"
                  android:layout_width="match_parent"
                  android:layout_height="match_parent"
                  style="?android:attr/textAppearanceLarge"
                  android:padding="16dp"
                  android:textIsSelectable="true"
                  tools:context="us.kostenko.mockingbird.track.TrackDetailFragment"/>

    </android.support.v4.widget.NestedScrollView>

    <android.support.design.widget.FloatingActionButton
        android:id="@+id/fab"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_gravity="center_vertical|start"
        android:layout_margin="@dimen/fab_margin"
        app:layout_anchor="@+id/trackDetail"
        app:layout_anchorGravity="top|end"
        app:srcCompat="@android:drawable/stat_notify_chat"/>

</android.support.design.widget.CoordinatorLayout>
