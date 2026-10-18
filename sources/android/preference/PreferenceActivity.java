package android.preference;

import android.R;
import android.animation.LayoutTransition;
import android.app.Fragment;
import android.app.FragmentBreadCrumbs;
import android.app.FragmentTransaction;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.opengl.GLES31;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.provider.Downloads;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.android.internal.util.XmlUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class PreferenceActivity extends ListActivity implements PreferenceManager.OnPreferenceTreeClickListener, PreferenceFragment.OnPreferenceStartFragmentCallback {
    private static final String BACK_STACK_PREFS = ":android:prefs";
    private static final String CUR_HEADER_TAG = ":android:cur_header";
    public static final String EXTRA_NO_HEADERS = ":android:no_headers";
    private static final String EXTRA_PREFS_SET_BACK_TEXT = "extra_prefs_set_back_text";
    private static final String EXTRA_PREFS_SET_NEXT_TEXT = "extra_prefs_set_next_text";
    private static final String EXTRA_PREFS_SHOW_BUTTON_BAR = "extra_prefs_show_button_bar";
    private static final String EXTRA_PREFS_SHOW_SKIP = "extra_prefs_show_skip";
    public static final String EXTRA_SHOW_FRAGMENT = ":android:show_fragment";
    public static final String EXTRA_SHOW_FRAGMENT_ARGUMENTS = ":android:show_fragment_args";
    public static final String EXTRA_SHOW_FRAGMENT_SHORT_TITLE = ":android:show_fragment_short_title";
    public static final String EXTRA_SHOW_FRAGMENT_TITLE = ":android:show_fragment_title";
    private static final int FIRST_REQUEST_CODE = 100;
    private static final String HEADERS_TAG = ":android:headers";
    public static final long HEADER_ID_UNDEFINED = -1;
    private static final int MSG_BIND_PREFERENCES = 1;
    private static final int MSG_BUILD_HEADERS = 2;
    private static final String PREFERENCES_TAG = ":android:preferences";
    private static final String TAG = "PreferenceActivity";
    private CharSequence mActivityTitle;
    private Header mCurHeader;
    private FragmentBreadCrumbs mFragmentBreadCrumbs;
    private ViewGroup mHeadersContainer;
    private FrameLayout mListFooter;
    private Button mNextButton;
    private PreferenceManager mPreferenceManager;
    private ViewGroup mPrefsContainer;
    private Bundle mSavedInstanceState;
    private boolean mSinglePane;
    private final ArrayList<Header> mHeaders = new ArrayList<>();
    private int mPreferenceHeaderItemResId = 0;
    private boolean mPreferenceHeaderRemoveEmptyIcon = false;
    private Handler mHandler = new Handler() { // from class: android.preference.PreferenceActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Header findBestMatchingHeader;
            switch (message.what) {
                case 1:
                    PreferenceActivity.this.bindPreferences();
                    return;
                case 2:
                    ArrayList<Header> arrayList = new ArrayList<>(PreferenceActivity.this.mHeaders);
                    PreferenceActivity.this.mHeaders.clear();
                    PreferenceActivity.this.onBuildHeaders(PreferenceActivity.this.mHeaders);
                    if (PreferenceActivity.this.mAdapter instanceof BaseAdapter) {
                        ((BaseAdapter) PreferenceActivity.this.mAdapter).notifyDataSetChanged();
                    }
                    Header onGetNewHeader = PreferenceActivity.this.onGetNewHeader();
                    if (onGetNewHeader == null || onGetNewHeader.fragment == null) {
                        if (PreferenceActivity.this.mCurHeader == null || (findBestMatchingHeader = PreferenceActivity.this.findBestMatchingHeader(PreferenceActivity.this.mCurHeader, PreferenceActivity.this.mHeaders)) == null) {
                            return;
                        }
                        PreferenceActivity.this.setSelectedHeader(findBestMatchingHeader);
                        return;
                    }
                    Header findBestMatchingHeader2 = PreferenceActivity.this.findBestMatchingHeader(onGetNewHeader, arrayList);
                    if (findBestMatchingHeader2 == null || PreferenceActivity.this.mCurHeader != findBestMatchingHeader2) {
                        PreferenceActivity.this.switchToHeader(onGetNewHeader);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };

    public void onBuildHeaders(List<Header> list) {
    }

    public Header onGetNewHeader() {
        return null;
    }

    @Override // android.preference.PreferenceManager.OnPreferenceTreeClickListener
    @Deprecated
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        return false;
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    private static class HeaderAdapter extends ArrayAdapter<Header> {
        private LayoutInflater mInflater;
        private int mLayoutResId;
        private boolean mRemoveIconIfEmpty;

        /* loaded from: /home/user/work/dex/classes2.dex */
        private static class HeaderViewHolder {
            ImageView icon;
            TextView summary;
            TextView title;

            private HeaderViewHolder() {
            }
        }

        public HeaderAdapter(Context context, List<Header> list, int i, boolean z) {
            super(context, 0, list);
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
            this.mLayoutResId = i;
            this.mRemoveIconIfEmpty = z;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            HeaderViewHolder headerViewHolder;
            if (view == null) {
                view = this.mInflater.inflate(this.mLayoutResId, viewGroup, false);
                headerViewHolder = new HeaderViewHolder();
                headerViewHolder.icon = (ImageView) view.findViewById(R.id.icon);
                headerViewHolder.title = (TextView) view.findViewById(R.id.title);
                headerViewHolder.summary = (TextView) view.findViewById(R.id.summary);
                view.setTag(headerViewHolder);
            } else {
                headerViewHolder = (HeaderViewHolder) view.getTag();
            }
            Header item = getItem(i);
            if (this.mRemoveIconIfEmpty) {
                if (item.iconRes == 0) {
                    headerViewHolder.icon.setVisibility(8);
                } else {
                    headerViewHolder.icon.setVisibility(0);
                    headerViewHolder.icon.setImageResource(item.iconRes);
                }
            } else {
                headerViewHolder.icon.setImageResource(item.iconRes);
            }
            headerViewHolder.title.setText(item.getTitle(getContext().getResources()));
            CharSequence summary = item.getSummary(getContext().getResources());
            if (!TextUtils.isEmpty(summary)) {
                headerViewHolder.summary.setVisibility(0);
                headerViewHolder.summary.setText(summary);
            } else {
                headerViewHolder.summary.setVisibility(8);
            }
            return view;
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class Header implements Parcelable {
        public static final Parcelable.Creator<Header> CREATOR = new Parcelable.Creator<Header>() { // from class: android.preference.PreferenceActivity.Header.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Header createFromParcel(Parcel parcel) {
                return new Header(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Header[] newArray(int i) {
                return new Header[i];
            }
        };
        public CharSequence breadCrumbShortTitle;
        public int breadCrumbShortTitleRes;
        public CharSequence breadCrumbTitle;
        public int breadCrumbTitleRes;
        public Bundle extras;
        public String fragment;
        public Bundle fragmentArguments;
        public int iconRes;
        public long id = -1;
        public Intent intent;
        public CharSequence summary;
        public int summaryRes;
        public CharSequence title;
        public int titleRes;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Header() {
        }

        public CharSequence getTitle(Resources resources) {
            if (this.titleRes != 0) {
                return resources.getText(this.titleRes);
            }
            return this.title;
        }

        public CharSequence getSummary(Resources resources) {
            if (this.summaryRes != 0) {
                return resources.getText(this.summaryRes);
            }
            return this.summary;
        }

        public CharSequence getBreadCrumbTitle(Resources resources) {
            if (this.breadCrumbTitleRes != 0) {
                return resources.getText(this.breadCrumbTitleRes);
            }
            return this.breadCrumbTitle;
        }

        public CharSequence getBreadCrumbShortTitle(Resources resources) {
            if (this.breadCrumbShortTitleRes != 0) {
                return resources.getText(this.breadCrumbShortTitleRes);
            }
            return this.breadCrumbShortTitle;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.id);
            parcel.writeInt(this.titleRes);
            TextUtils.writeToParcel(this.title, parcel, i);
            parcel.writeInt(this.summaryRes);
            TextUtils.writeToParcel(this.summary, parcel, i);
            parcel.writeInt(this.breadCrumbTitleRes);
            TextUtils.writeToParcel(this.breadCrumbTitle, parcel, i);
            parcel.writeInt(this.breadCrumbShortTitleRes);
            TextUtils.writeToParcel(this.breadCrumbShortTitle, parcel, i);
            parcel.writeInt(this.iconRes);
            parcel.writeString(this.fragment);
            parcel.writeBundle(this.fragmentArguments);
            if (this.intent != null) {
                parcel.writeInt(1);
                this.intent.writeToParcel(parcel, i);
            } else {
                parcel.writeInt(0);
            }
            parcel.writeBundle(this.extras);
        }

        public void readFromParcel(Parcel parcel) {
            this.id = parcel.readLong();
            this.titleRes = parcel.readInt();
            this.title = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.summaryRes = parcel.readInt();
            this.summary = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.breadCrumbTitleRes = parcel.readInt();
            this.breadCrumbTitle = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.breadCrumbShortTitleRes = parcel.readInt();
            this.breadCrumbShortTitle = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.iconRes = parcel.readInt();
            this.fragment = parcel.readString();
            this.fragmentArguments = parcel.readBundle();
            if (parcel.readInt() != 0) {
                this.intent = (Intent) Intent.CREATOR.createFromParcel(parcel);
            }
            this.extras = parcel.readBundle();
        }

        Header(Parcel parcel) {
            readFromParcel(parcel);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedArray obtainStyledAttributes = obtainStyledAttributes(null, com.android.internal.R.styleable.PreferenceActivity, R.bool.config_multiuserDelayUserDataLocking, 0);
        int resourceId = obtainStyledAttributes.getResourceId(0, R.layout.popup_menu_header_item_layout);
        this.mPreferenceHeaderItemResId = obtainStyledAttributes.getResourceId(1, R.layout.number_picker_material);
        this.mPreferenceHeaderRemoveEmptyIcon = obtainStyledAttributes.getBoolean(2, false);
        obtainStyledAttributes.recycle();
        setContentView(resourceId);
        this.mListFooter = (FrameLayout) findViewById(R.id.hdr);
        this.mPrefsContainer = (ViewGroup) findViewById(R.id.music);
        this.mHeadersContainer = (ViewGroup) findViewById(R.id.email);
        this.mSinglePane = onIsHidingHeaders() || !onIsMultiPane();
        String stringExtra = getIntent().getStringExtra(EXTRA_SHOW_FRAGMENT);
        Bundle bundleExtra = getIntent().getBundleExtra(EXTRA_SHOW_FRAGMENT_ARGUMENTS);
        int intExtra = getIntent().getIntExtra(EXTRA_SHOW_FRAGMENT_TITLE, 0);
        int intExtra2 = getIntent().getIntExtra(EXTRA_SHOW_FRAGMENT_SHORT_TITLE, 0);
        this.mActivityTitle = getTitle();
        if (bundle != null) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(HEADERS_TAG);
            if (parcelableArrayList != null) {
                this.mHeaders.addAll(parcelableArrayList);
                int i = bundle.getInt(CUR_HEADER_TAG, -1);
                if (i >= 0 && i < this.mHeaders.size()) {
                    setSelectedHeader(this.mHeaders.get(i));
                } else if (!this.mSinglePane && stringExtra == null) {
                    switchToHeader(onGetInitialHeader());
                }
            } else {
                showBreadCrumbs(getTitle(), null);
            }
        } else {
            if (!onIsHidingHeaders()) {
                onBuildHeaders(this.mHeaders);
            }
            if (stringExtra != null) {
                switchToHeader(stringExtra, bundleExtra);
            } else if (!this.mSinglePane && this.mHeaders.size() > 0) {
                switchToHeader(onGetInitialHeader());
            }
        }
        if (this.mHeaders.size() > 0) {
            setListAdapter(new HeaderAdapter(this, this.mHeaders, this.mPreferenceHeaderItemResId, this.mPreferenceHeaderRemoveEmptyIcon));
            if (!this.mSinglePane) {
                getListView().setChoiceMode(1);
            }
        }
        if (this.mSinglePane && stringExtra != null && intExtra != 0) {
            showBreadCrumbs(getText(intExtra), intExtra2 != 0 ? getText(intExtra2) : null);
        }
        if (this.mHeaders.size() == 0 && stringExtra == null) {
            setContentView(R.layout.power_dialog);
            this.mListFooter = (FrameLayout) findViewById(R.id.hdr);
            this.mPrefsContainer = (ViewGroup) findViewById(R.id.multipleChoiceModal);
            this.mPreferenceManager = new PreferenceManager(this, 100);
            this.mPreferenceManager.setOnPreferenceTreeClickListener(this);
            this.mHeadersContainer = null;
        } else if (this.mSinglePane) {
            if (stringExtra != null || this.mCurHeader != null) {
                this.mHeadersContainer.setVisibility(8);
            } else {
                this.mPrefsContainer.setVisibility(8);
            }
            ((ViewGroup) findViewById(R.id.multiply)).setLayoutTransition(new LayoutTransition());
        } else if (this.mHeaders.size() > 0 && this.mCurHeader != null) {
            setSelectedHeader(this.mCurHeader);
        }
        Intent intent = getIntent();
        if (intent.getBooleanExtra(EXTRA_PREFS_SHOW_BUTTON_BAR, false)) {
            findViewById(R.id.audio).setVisibility(0);
            Button button = (Button) findViewById(R.id.alignBounds);
            button.setOnClickListener(new View.OnClickListener() { // from class: android.preference.PreferenceActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PreferenceActivity.this.setResult(0);
                    PreferenceActivity.this.finish();
                }
            });
            Button button2 = (Button) findViewById(R.id.prev);
            button2.setOnClickListener(new View.OnClickListener() { // from class: android.preference.PreferenceActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PreferenceActivity.this.setResult(-1);
                    PreferenceActivity.this.finish();
                }
            });
            this.mNextButton = (Button) findViewById(R.id.italic);
            this.mNextButton.setOnClickListener(new View.OnClickListener() { // from class: android.preference.PreferenceActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PreferenceActivity.this.setResult(-1);
                    PreferenceActivity.this.finish();
                }
            });
            if (intent.hasExtra(EXTRA_PREFS_SET_NEXT_TEXT)) {
                String stringExtra2 = intent.getStringExtra(EXTRA_PREFS_SET_NEXT_TEXT);
                if (TextUtils.isEmpty(stringExtra2)) {
                    this.mNextButton.setVisibility(8);
                } else {
                    this.mNextButton.setText(stringExtra2);
                }
            }
            if (intent.hasExtra(EXTRA_PREFS_SET_BACK_TEXT)) {
                String stringExtra3 = intent.getStringExtra(EXTRA_PREFS_SET_BACK_TEXT);
                if (TextUtils.isEmpty(stringExtra3)) {
                    button.setVisibility(8);
                } else {
                    button.setText(stringExtra3);
                }
            }
            if (intent.getBooleanExtra(EXTRA_PREFS_SHOW_SKIP, false)) {
                button2.setVisibility(0);
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mCurHeader != null && this.mSinglePane && getFragmentManager().getBackStackEntryCount() == 0 && getIntent().getStringExtra(EXTRA_SHOW_FRAGMENT) == null) {
            this.mCurHeader = null;
            this.mPrefsContainer.setVisibility(8);
            this.mHeadersContainer.setVisibility(0);
            if (this.mActivityTitle != null) {
                showBreadCrumbs(this.mActivityTitle, null);
            }
            getListView().clearChoices();
            return;
        }
        super.onBackPressed();
    }

    public boolean hasHeaders() {
        return this.mHeadersContainer != null && this.mHeadersContainer.getVisibility() == 0;
    }

    public List<Header> getHeaders() {
        return this.mHeaders;
    }

    public boolean isMultiPane() {
        return !this.mSinglePane;
    }

    public boolean onIsMultiPane() {
        return getResources().getBoolean(R.^attr-private.toTop);
    }

    public boolean onIsHidingHeaders() {
        return getIntent().getBooleanExtra(EXTRA_NO_HEADERS, false);
    }

    public Header onGetInitialHeader() {
        for (int i = 0; i < this.mHeaders.size(); i++) {
            Header header = this.mHeaders.get(i);
            if (header.fragment != null) {
                return header;
            }
        }
        throw new IllegalStateException("Must have at least one header with a fragment");
    }

    public void invalidateHeaders() {
        if (this.mHandler.hasMessages(2)) {
            return;
        }
        this.mHandler.sendEmptyMessage(2);
    }

    public void loadHeadersFromResource(int i, List<Header> list) {
        XmlResourceParser xmlResourceParser;
        int next;
        try {
            try {
                xmlResourceParser = getResources().getXml(i);
            } catch (Throwable th) {
                th = th;
                xmlResourceParser = null;
            }
        } catch (IOException e) {
            e = e;
        } catch (XmlPullParserException e2) {
            e = e2;
        }
        try {
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
            do {
                next = xmlResourceParser.next();
                if (next == 1) {
                    break;
                }
            } while (next != 2);
            String name = xmlResourceParser.getName();
            if (!"preference-headers".equals(name)) {
                throw new RuntimeException("XML document must start with <preference-headers> tag; found" + name + " at " + xmlResourceParser.getPositionDescription());
            }
            int depth = xmlResourceParser.getDepth();
            Bundle bundle = null;
            while (true) {
                int next2 = xmlResourceParser.next();
                if (next2 == 1 || (next2 == 3 && xmlResourceParser.getDepth() <= depth)) {
                    break;
                }
                if (next2 != 3 && next2 != 4) {
                    if (Downloads.Impl.RequestHeaders.COLUMN_HEADER.equals(xmlResourceParser.getName())) {
                        Header header = new Header();
                        TypedArray obtainStyledAttributes = obtainStyledAttributes(asAttributeSet, com.android.internal.R.styleable.PreferenceHeader);
                        header.id = obtainStyledAttributes.getResourceId(1, -1);
                        TypedValue peekValue = obtainStyledAttributes.peekValue(2);
                        if (peekValue != null && peekValue.type == 3) {
                            if (peekValue.resourceId != 0) {
                                header.titleRes = peekValue.resourceId;
                            } else {
                                header.title = peekValue.string;
                            }
                        }
                        TypedValue peekValue2 = obtainStyledAttributes.peekValue(3);
                        if (peekValue2 != null && peekValue2.type == 3) {
                            if (peekValue2.resourceId != 0) {
                                header.summaryRes = peekValue2.resourceId;
                            } else {
                                header.summary = peekValue2.string;
                            }
                        }
                        TypedValue peekValue3 = obtainStyledAttributes.peekValue(5);
                        if (peekValue3 != null && peekValue3.type == 3) {
                            if (peekValue3.resourceId != 0) {
                                header.breadCrumbTitleRes = peekValue3.resourceId;
                            } else {
                                header.breadCrumbTitle = peekValue3.string;
                            }
                        }
                        TypedValue peekValue4 = obtainStyledAttributes.peekValue(6);
                        if (peekValue4 != null && peekValue4.type == 3) {
                            if (peekValue4.resourceId != 0) {
                                header.breadCrumbShortTitleRes = peekValue4.resourceId;
                            } else {
                                header.breadCrumbShortTitle = peekValue4.string;
                            }
                        }
                        header.iconRes = obtainStyledAttributes.getResourceId(0, 0);
                        header.fragment = obtainStyledAttributes.getString(4);
                        obtainStyledAttributes.recycle();
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        int depth2 = xmlResourceParser.getDepth();
                        while (true) {
                            int next3 = xmlResourceParser.next();
                            if (next3 == 1 || (next3 == 3 && xmlResourceParser.getDepth() <= depth2)) {
                                break;
                            }
                            if (next3 != 3 && next3 != 4) {
                                String name2 = xmlResourceParser.getName();
                                if (name2.equals("extra")) {
                                    getResources().parseBundleExtra("extra", asAttributeSet, bundle);
                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                } else if (name2.equals("intent")) {
                                    header.intent = Intent.parseIntent(getResources(), xmlResourceParser, asAttributeSet);
                                } else {
                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                }
                            }
                        }
                        if (bundle.size() > 0) {
                            header.fragmentArguments = bundle;
                            bundle = null;
                        }
                        list.add(header);
                    } else {
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    }
                }
            }
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        } catch (IOException e3) {
            e = e3;
            throw new RuntimeException("Error parsing headers", e);
        } catch (XmlPullParserException e4) {
            e = e4;
            throw new RuntimeException("Error parsing headers", e);
        } catch (Throwable th2) {
            th = th2;
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    protected boolean isValidFragment(String str) {
        if (getApplicationInfo().targetSdkVersion < 19) {
            return true;
        }
        throw new RuntimeException("Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! " + getClass().getName() + " has not checked if fragment " + str + " is valid.");
    }

    public void setListFooter(View view) {
        this.mListFooter.removeAllViews();
        this.mListFooter.addView(view, new FrameLayout.LayoutParams(-1, -2));
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (this.mPreferenceManager != null) {
            this.mPreferenceManager.dispatchActivityStop();
        }
    }

    @Override // android.app.ListActivity, android.app.Activity
    protected void onDestroy() {
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(2);
        super.onDestroy();
        if (this.mPreferenceManager != null) {
            this.mPreferenceManager.dispatchActivityDestroy();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        PreferenceScreen preferenceScreen;
        int indexOf;
        super.onSaveInstanceState(bundle);
        if (this.mHeaders.size() > 0) {
            bundle.putParcelableArrayList(HEADERS_TAG, this.mHeaders);
            if (this.mCurHeader != null && (indexOf = this.mHeaders.indexOf(this.mCurHeader)) >= 0) {
                bundle.putInt(CUR_HEADER_TAG, indexOf);
            }
        }
        if (this.mPreferenceManager == null || (preferenceScreen = getPreferenceScreen()) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        preferenceScreen.saveHierarchyState(bundle2);
        bundle.putBundle(PREFERENCES_TAG, bundle2);
    }

    @Override // android.app.ListActivity, android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreen;
        if (this.mPreferenceManager != null && (bundle2 = bundle.getBundle(PREFERENCES_TAG)) != null && (preferenceScreen = getPreferenceScreen()) != null) {
            preferenceScreen.restoreHierarchyState(bundle2);
            this.mSavedInstanceState = bundle;
            return;
        }
        super.onRestoreInstanceState(bundle);
        if (this.mSinglePane || this.mCurHeader == null) {
            return;
        }
        setSelectedHeader(this.mCurHeader);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.mPreferenceManager != null) {
            this.mPreferenceManager.dispatchActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.ListActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        if (this.mPreferenceManager != null) {
            postBindPreferences();
        }
    }

    @Override // android.app.ListActivity
    protected void onListItemClick(ListView listView, View view, int i, long j) {
        if (isResumed()) {
            super.onListItemClick(listView, view, i, j);
            if (this.mAdapter != null) {
                Object item = this.mAdapter.getItem(i);
                if (item instanceof Header) {
                    onHeaderClick((Header) item, i);
                }
            }
        }
    }

    public void onHeaderClick(Header header, int i) {
        if (header.fragment != null) {
            switchToHeader(header);
        } else if (header.intent != null) {
            startActivity(header.intent);
        }
    }

    public Intent onBuildStartFragmentIntent(String str, Bundle bundle, int i, int i2) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setClass(this, getClass());
        intent.putExtra(EXTRA_SHOW_FRAGMENT, str);
        intent.putExtra(EXTRA_SHOW_FRAGMENT_ARGUMENTS, bundle);
        intent.putExtra(EXTRA_SHOW_FRAGMENT_TITLE, i);
        intent.putExtra(EXTRA_SHOW_FRAGMENT_SHORT_TITLE, i2);
        intent.putExtra(EXTRA_NO_HEADERS, true);
        return intent;
    }

    public void startWithFragment(String str, Bundle bundle, Fragment fragment, int i) {
        startWithFragment(str, bundle, fragment, i, 0, 0);
    }

    public void startWithFragment(String str, Bundle bundle, Fragment fragment, int i, int i2, int i3) {
        Intent onBuildStartFragmentIntent = onBuildStartFragmentIntent(str, bundle, i2, i3);
        if (fragment == null) {
            startActivity(onBuildStartFragmentIntent);
        } else {
            fragment.startActivityForResult(onBuildStartFragmentIntent, i);
        }
    }

    public void showBreadCrumbs(CharSequence charSequence, CharSequence charSequence2) {
        if (this.mFragmentBreadCrumbs == null) {
            try {
                this.mFragmentBreadCrumbs = (FragmentBreadCrumbs) findViewById(R.id.title);
                if (this.mFragmentBreadCrumbs == null) {
                    if (charSequence != null) {
                        setTitle(charSequence);
                        return;
                    }
                    return;
                }
                if (this.mSinglePane) {
                    this.mFragmentBreadCrumbs.setVisibility(8);
                    View findViewById = findViewById(R.id.animator);
                    if (findViewById != null) {
                        findViewById.setVisibility(8);
                    }
                    setTitle(charSequence);
                }
                this.mFragmentBreadCrumbs.setMaxVisible(2);
                this.mFragmentBreadCrumbs.setActivity(this);
            } catch (ClassCastException unused) {
                setTitle(charSequence);
                return;
            }
        }
        if (this.mFragmentBreadCrumbs.getVisibility() != 0) {
            setTitle(charSequence);
        } else {
            this.mFragmentBreadCrumbs.setTitle(charSequence, charSequence2);
            this.mFragmentBreadCrumbs.setParentTitle(null, null, null);
        }
    }

    public void setParentTitle(CharSequence charSequence, CharSequence charSequence2, View.OnClickListener onClickListener) {
        if (this.mFragmentBreadCrumbs != null) {
            this.mFragmentBreadCrumbs.setParentTitle(charSequence, charSequence2, onClickListener);
        }
    }

    void setSelectedHeader(Header header) {
        this.mCurHeader = header;
        int indexOf = this.mHeaders.indexOf(header);
        if (indexOf >= 0) {
            getListView().setItemChecked(indexOf, true);
        } else {
            getListView().clearChoices();
        }
        showBreadCrumbs(header);
    }

    void showBreadCrumbs(Header header) {
        if (header != null) {
            CharSequence breadCrumbTitle = header.getBreadCrumbTitle(getResources());
            if (breadCrumbTitle == null) {
                breadCrumbTitle = header.getTitle(getResources());
            }
            if (breadCrumbTitle == null) {
                breadCrumbTitle = getTitle();
            }
            showBreadCrumbs(breadCrumbTitle, header.getBreadCrumbShortTitle(getResources()));
            return;
        }
        showBreadCrumbs(getTitle(), null);
    }

    private void switchToHeaderInner(String str, Bundle bundle) {
        getFragmentManager().popBackStack(BACK_STACK_PREFS, 1);
        if (!isValidFragment(str)) {
            throw new IllegalArgumentException("Invalid fragment for this activity: " + str);
        }
        Fragment instantiate = Fragment.instantiate(this, str, bundle);
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        beginTransaction.setTransition(this.mSinglePane ? 0 : GLES31.GL_TEXTURE_INTERNAL_FORMAT);
        beginTransaction.replace(R.id.multipleChoiceModal, instantiate);
        beginTransaction.commitAllowingStateLoss();
        if (this.mSinglePane && this.mPrefsContainer.getVisibility() == 8) {
            this.mPrefsContainer.setVisibility(0);
            this.mHeadersContainer.setVisibility(8);
        }
    }

    public void switchToHeader(String str, Bundle bundle) {
        Header header;
        int i = 0;
        while (true) {
            if (i >= this.mHeaders.size()) {
                header = null;
                break;
            } else {
                if (str.equals(this.mHeaders.get(i).fragment)) {
                    header = this.mHeaders.get(i);
                    break;
                }
                i++;
            }
        }
        setSelectedHeader(header);
        switchToHeaderInner(str, bundle);
    }

    public void switchToHeader(Header header) {
        if (this.mCurHeader == header) {
            getFragmentManager().popBackStack(BACK_STACK_PREFS, 1);
        } else {
            if (header.fragment == null) {
                throw new IllegalStateException("can't switch to header that has no fragment");
            }
            switchToHeaderInner(header.fragment, header.fragmentArguments);
            setSelectedHeader(header);
        }
    }

    Header findBestMatchingHeader(Header header, ArrayList<Header> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            Header header2 = arrayList.get(i);
            if (header == header2 || (header.id != -1 && header.id == header2.id)) {
                arrayList2.clear();
                arrayList2.add(header2);
                break;
            }
            if (header.fragment != null) {
                if (header.fragment.equals(header2.fragment)) {
                    arrayList2.add(header2);
                }
            } else if (header.intent != null) {
                if (header.intent.equals(header2.intent)) {
                    arrayList2.add(header2);
                }
            } else if (header.title != null && header.title.equals(header2.title)) {
                arrayList2.add(header2);
            }
        }
        int size = arrayList2.size();
        if (size == 1) {
            return (Header) arrayList2.get(0);
        }
        if (size <= 1) {
            return null;
        }
        for (int i2 = 0; i2 < size; i2++) {
            Header header3 = (Header) arrayList2.get(i2);
            if (header.fragmentArguments != null && header.fragmentArguments.equals(header3.fragmentArguments)) {
                return header3;
            }
            if (header.extras != null && header.extras.equals(header3.extras)) {
                return header3;
            }
            if (header.title != null && header.title.equals(header3.title)) {
                return header3;
            }
        }
        return null;
    }

    public void startPreferenceFragment(Fragment fragment, boolean z) {
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.multipleChoiceModal, fragment);
        if (z) {
            beginTransaction.setTransition(GLES31.GL_TEXTURE_HEIGHT);
            beginTransaction.addToBackStack(BACK_STACK_PREFS);
        } else {
            beginTransaction.setTransition(GLES31.GL_TEXTURE_INTERNAL_FORMAT);
        }
        beginTransaction.commitAllowingStateLoss();
    }

    public void startPreferencePanel(String str, Bundle bundle, int i, CharSequence charSequence, Fragment fragment, int i2) {
        Fragment instantiate = Fragment.instantiate(this, str, bundle);
        if (fragment != null) {
            instantiate.setTargetFragment(fragment, i2);
        }
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.multipleChoiceModal, instantiate);
        if (i != 0) {
            beginTransaction.setBreadCrumbTitle(i);
        } else if (charSequence != null) {
            beginTransaction.setBreadCrumbTitle(charSequence);
        }
        beginTransaction.setTransition(GLES31.GL_TEXTURE_HEIGHT);
        beginTransaction.addToBackStack(BACK_STACK_PREFS);
        beginTransaction.commitAllowingStateLoss();
    }

    public void finishPreferencePanel(Fragment fragment, int i, Intent intent) {
        onBackPressed();
        if (fragment == null || fragment.getTargetFragment() == null) {
            return;
        }
        fragment.getTargetFragment().onActivityResult(fragment.getTargetRequestCode(), i, intent);
    }

    @Override // android.preference.PreferenceFragment.OnPreferenceStartFragmentCallback
    public boolean onPreferenceStartFragment(PreferenceFragment preferenceFragment, Preference preference) {
        startPreferencePanel(preference.getFragment(), preference.getExtras(), preference.getTitleRes(), preference.getTitle(), null, 0);
        return true;
    }

    private void postBindPreferences() {
        if (this.mHandler.hasMessages(1)) {
            return;
        }
        this.mHandler.obtainMessage(1).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindPreferences() {
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            preferenceScreen.bind(getListView());
            if (this.mSavedInstanceState != null) {
                super.onRestoreInstanceState(this.mSavedInstanceState);
                this.mSavedInstanceState = null;
            }
        }
    }

    @Deprecated
    public PreferenceManager getPreferenceManager() {
        return this.mPreferenceManager;
    }

    private void requirePreferenceManager() {
        if (this.mPreferenceManager == null) {
            if (this.mAdapter == null) {
                throw new RuntimeException("This should be called after super.onCreate.");
            }
            throw new RuntimeException("Modern two-pane PreferenceActivity requires use of a PreferenceFragment");
        }
    }

    @Deprecated
    public void setPreferenceScreen(PreferenceScreen preferenceScreen) {
        requirePreferenceManager();
        if (!this.mPreferenceManager.setPreferences(preferenceScreen) || preferenceScreen == null) {
            return;
        }
        postBindPreferences();
        CharSequence title = getPreferenceScreen().getTitle();
        if (title != null) {
            setTitle(title);
        }
    }

    @Deprecated
    public PreferenceScreen getPreferenceScreen() {
        if (this.mPreferenceManager != null) {
            return this.mPreferenceManager.getPreferenceScreen();
        }
        return null;
    }

    @Deprecated
    public void addPreferencesFromIntent(Intent intent) {
        requirePreferenceManager();
        setPreferenceScreen(this.mPreferenceManager.inflateFromIntent(intent, getPreferenceScreen()));
    }

    @Deprecated
    public void addPreferencesFromResource(int i) {
        requirePreferenceManager();
        setPreferenceScreen(this.mPreferenceManager.inflateFromResource(this, i, getPreferenceScreen()));
    }

    @Deprecated
    public Preference findPreference(CharSequence charSequence) {
        if (this.mPreferenceManager == null) {
            return null;
        }
        return this.mPreferenceManager.findPreference(charSequence);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        if (this.mPreferenceManager != null) {
            this.mPreferenceManager.dispatchNewIntent(intent);
        }
    }

    protected boolean hasNextButton() {
        return this.mNextButton != null;
    }

    protected Button getNextButton() {
        return this.mNextButton;
    }
}
