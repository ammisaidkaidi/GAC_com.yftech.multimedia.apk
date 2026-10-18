package com.android.internal.app;

import android.app.ListFragment;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import android.widget.SearchView;
import com.android.internal.app.LocaleHelper;
import com.android.internal.app.LocaleStore;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes3.dex */
public class LocalePickerWithRegion extends ListFragment implements SearchView.OnQueryTextListener {
    private static final String PARENT_FRAGMENT_NAME = "localeListEditor";
    private SuggestedLocaleAdapter mAdapter;
    private LocaleSelectedListener mListener;
    private Set<LocaleStore.LocaleInfo> mLocaleList;
    private LocaleStore.LocaleInfo mParentLocale;
    private boolean mTranslatedOnly = false;
    private SearchView mSearchView = null;
    private CharSequence mPreviousSearch = null;
    private boolean mPreviousSearchHadFocus = false;
    private int mFirstVisiblePosition = 0;
    private int mTopDistance = 0;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface LocaleSelectedListener {
        void onLocaleSelected(LocaleStore.LocaleInfo localeInfo);
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        return false;
    }

    private static LocalePickerWithRegion createCountryPicker(Context context, LocaleSelectedListener localeSelectedListener, LocaleStore.LocaleInfo localeInfo, boolean z) {
        LocalePickerWithRegion localePickerWithRegion = new LocalePickerWithRegion();
        if (localePickerWithRegion.setListener(context, localeSelectedListener, localeInfo, z)) {
            return localePickerWithRegion;
        }
        return null;
    }

    public static LocalePickerWithRegion createLanguagePicker(Context context, LocaleSelectedListener localeSelectedListener, boolean z) {
        LocalePickerWithRegion localePickerWithRegion = new LocalePickerWithRegion();
        localePickerWithRegion.setListener(context, localeSelectedListener, null, z);
        return localePickerWithRegion;
    }

    private boolean setListener(Context context, LocaleSelectedListener localeSelectedListener, LocaleStore.LocaleInfo localeInfo, boolean z) {
        this.mParentLocale = localeInfo;
        this.mListener = localeSelectedListener;
        this.mTranslatedOnly = z;
        setRetainInstance(true);
        HashSet hashSet = new HashSet();
        if (!z) {
            Collections.addAll(hashSet, LocalePicker.getLocales().toLanguageTags().split(","));
        }
        if (localeInfo != null) {
            this.mLocaleList = LocaleStore.getLevelLocales(context, hashSet, localeInfo, z);
            if (this.mLocaleList.size() <= 1) {
                if (localeSelectedListener == null || this.mLocaleList.size() != 1) {
                    return false;
                }
                localeSelectedListener.onLocaleSelected(this.mLocaleList.iterator().next());
                return false;
            }
        } else {
            this.mLocaleList = LocaleStore.getLevelLocales(context, hashSet, null, z);
        }
        return true;
    }

    private void returnToParentFrame() {
        getFragmentManager().popBackStack(PARENT_FRAGMENT_NAME, 1);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        if (this.mLocaleList == null) {
            returnToParentFrame();
            return;
        }
        boolean z = this.mParentLocale != null;
        Locale locale = z ? this.mParentLocale.getLocale() : Locale.getDefault();
        this.mAdapter = new SuggestedLocaleAdapter(this.mLocaleList, z);
        this.mAdapter.sort(new LocaleHelper.LocaleInfoComparator(locale, z));
        setListAdapter(this.mAdapter);
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            getFragmentManager().popBackStack();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.mParentLocale != null) {
            getActivity().setTitle(this.mParentLocale.getFullNameNative());
        } else {
            getActivity().setTitle(17040119);
        }
        getListView().requestFocus();
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.mSearchView != null) {
            this.mPreviousSearchHadFocus = this.mSearchView.hasFocus();
            this.mPreviousSearch = this.mSearchView.getQuery();
        } else {
            this.mPreviousSearchHadFocus = false;
            this.mPreviousSearch = null;
        }
        ListView listView = getListView();
        View childAt = listView.getChildAt(0);
        this.mFirstVisiblePosition = listView.getFirstVisiblePosition();
        this.mTopDistance = childAt != null ? childAt.getTop() - listView.getPaddingTop() : 0;
    }

    @Override // android.app.ListFragment
    public void onListItemClick(ListView listView, View view, int i, long j) {
        LocaleStore.LocaleInfo localeInfo = (LocaleStore.LocaleInfo) getListAdapter().getItem(i);
        if (localeInfo.getParent() != null) {
            if (this.mListener != null) {
                this.mListener.onLocaleSelected(localeInfo);
            }
            returnToParentFrame();
        } else {
            LocalePickerWithRegion createCountryPicker = createCountryPicker(getContext(), this.mListener, localeInfo, this.mTranslatedOnly);
            if (createCountryPicker != null) {
                getFragmentManager().beginTransaction().setTransition(4097).replace(getId(), createCountryPicker).addToBackStack(null).commit();
            } else {
                returnToParentFrame();
            }
        }
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (this.mParentLocale == null) {
            menuInflater.inflate(18087936, menu);
            MenuItem findItem = menu.findItem(16909036);
            this.mSearchView = (SearchView) findItem.getActionView();
            this.mSearchView.setQueryHint(getText(17040814));
            this.mSearchView.setOnQueryTextListener(this);
            if (!TextUtils.isEmpty(this.mPreviousSearch)) {
                findItem.expandActionView();
                this.mSearchView.setIconified(false);
                this.mSearchView.setActivated(true);
                if (this.mPreviousSearchHadFocus) {
                    this.mSearchView.requestFocus();
                }
                this.mSearchView.setQuery(this.mPreviousSearch, true);
            } else {
                this.mSearchView.setQuery(null, false);
            }
            getListView().setSelectionFromTop(this.mFirstVisiblePosition, this.mTopDistance);
        }
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        if (this.mAdapter == null) {
            return false;
        }
        this.mAdapter.getFilter().filter(str);
        return false;
    }
}
