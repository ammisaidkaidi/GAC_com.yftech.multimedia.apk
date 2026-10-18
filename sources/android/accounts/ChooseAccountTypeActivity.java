package android.accounts;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class ChooseAccountTypeActivity extends Activity {
    private static final String TAG = "AccountChooser";
    private ArrayList<AuthInfo> mAuthenticatorInfosToDisplay;
    private HashMap<String, AuthInfo> mTypeToAuthenticatorInfo = new HashMap<>();

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "ChooseAccountTypeActivity.onCreate(savedInstanceState=" + bundle + ")");
        }
        HashSet hashSet = null;
        String[] stringArrayExtra = getIntent().getStringArrayExtra(ChooseTypeAndAccountActivity.EXTRA_ALLOWABLE_ACCOUNT_TYPES_STRING_ARRAY);
        if (stringArrayExtra != null) {
            hashSet = new HashSet(stringArrayExtra.length);
            for (String str : stringArrayExtra) {
                hashSet.add(str);
            }
        }
        buildTypeToAuthDescriptionMap();
        this.mAuthenticatorInfosToDisplay = new ArrayList<>(this.mTypeToAuthenticatorInfo.size());
        for (Map.Entry<String, AuthInfo> entry : this.mTypeToAuthenticatorInfo.entrySet()) {
            String key = entry.getKey();
            AuthInfo value = entry.getValue();
            if (hashSet == null || hashSet.contains(key)) {
                this.mAuthenticatorInfosToDisplay.add(value);
            }
        }
        if (this.mAuthenticatorInfosToDisplay.isEmpty()) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(AccountManager.KEY_ERROR_MESSAGE, "no allowable account types");
            setResult(-1, new Intent().putExtras(bundle2));
            finish();
            return;
        }
        if (this.mAuthenticatorInfosToDisplay.size() == 1) {
            setResultAndFinish(this.mAuthenticatorInfosToDisplay.get(0).desc.type);
            return;
        }
        setContentView(17367113);
        ListView listView = (ListView) findViewById(R.id.list);
        listView.setAdapter((ListAdapter) new AccountArrayAdapter(this, R.layout.simple_list_item_1, this.mAuthenticatorInfosToDisplay));
        listView.setChoiceMode(0);
        listView.setTextFilterEnabled(false);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: android.accounts.ChooseAccountTypeActivity.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                ChooseAccountTypeActivity.this.setResultAndFinish(((AuthInfo) ChooseAccountTypeActivity.this.mAuthenticatorInfosToDisplay.get(i)).desc.type);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResultAndFinish(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AccountManager.KEY_ACCOUNT_TYPE, str);
        setResult(-1, new Intent().putExtras(bundle));
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "ChooseAccountTypeActivity.setResultAndFinish: selected account type " + str);
        }
        finish();
    }

    private void buildTypeToAuthDescriptionMap() {
        String str;
        Drawable drawable;
        Context createPackageContext;
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(this).getAuthenticatorTypes()) {
            try {
                createPackageContext = createPackageContext(authenticatorDescription.packageName, 0);
                drawable = createPackageContext.getDrawable(authenticatorDescription.iconId);
            } catch (PackageManager.NameNotFoundException unused) {
                str = null;
                drawable = null;
            } catch (Resources.NotFoundException unused2) {
                str = null;
                drawable = null;
            }
            try {
                CharSequence text = createPackageContext.getResources().getText(authenticatorDescription.labelId);
                if (text != null) {
                    text.toString();
                }
                str = text.toString();
            } catch (PackageManager.NameNotFoundException unused3) {
                str = null;
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "No icon name for account type " + authenticatorDescription.type);
                }
                this.mTypeToAuthenticatorInfo.put(authenticatorDescription.type, new AuthInfo(authenticatorDescription, str, drawable));
            } catch (Resources.NotFoundException unused4) {
                str = null;
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "No icon resource for account type " + authenticatorDescription.type);
                }
                this.mTypeToAuthenticatorInfo.put(authenticatorDescription.type, new AuthInfo(authenticatorDescription, str, drawable));
            }
            this.mTypeToAuthenticatorInfo.put(authenticatorDescription.type, new AuthInfo(authenticatorDescription, str, drawable));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class AuthInfo {
        final AuthenticatorDescription desc;
        final Drawable drawable;
        final String name;

        AuthInfo(AuthenticatorDescription authenticatorDescription, String str, Drawable drawable) {
            this.desc = authenticatorDescription;
            this.name = str;
            this.drawable = drawable;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class ViewHolder {
        ImageView icon;
        TextView text;

        private ViewHolder() {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class AccountArrayAdapter extends ArrayAdapter<AuthInfo> {
        private ArrayList<AuthInfo> mInfos;
        private LayoutInflater mLayoutInflater;

        public AccountArrayAdapter(Context context, int i, ArrayList<AuthInfo> arrayList) {
            super(context, i, arrayList);
            this.mInfos = arrayList;
            this.mLayoutInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ViewHolder viewHolder;
            if (view == null) {
                view = this.mLayoutInflater.inflate(17367112, (ViewGroup) null);
                viewHolder = new ViewHolder();
                viewHolder.text = (TextView) view.findViewById(16908659);
                viewHolder.icon = (ImageView) view.findViewById(16908658);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            viewHolder.text.setText(this.mInfos.get(i).name);
            viewHolder.icon.setImageDrawable(this.mInfos.get(i).drawable);
            return view;
        }
    }
}
