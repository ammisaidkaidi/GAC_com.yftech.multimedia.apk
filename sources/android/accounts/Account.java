package android.accounts;

import android.accounts.IAccountManager;
import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class Account implements Parcelable {
    private static final String TAG = "Account";
    private final String accessId;
    public final String name;
    public final String type;

    @GuardedBy("sAccessedAccounts")
    private static final Set<Account> sAccessedAccounts = new ArraySet();
    public static final Parcelable.Creator<Account> CREATOR = new Parcelable.Creator<Account>() { // from class: android.accounts.Account.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Account createFromParcel(Parcel parcel) {
            return new Account(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Account[] newArray(int i) {
            return new Account[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Account)) {
            return false;
        }
        Account account = (Account) obj;
        return this.name.equals(account.name) && this.type.equals(account.type);
    }

    public int hashCode() {
        return ((527 + this.name.hashCode()) * 31) + this.type.hashCode();
    }

    public Account(String str, String str2) {
        this(str, str2, null);
    }

    public Account(Account account, String str) {
        this(account.name, account.type, str);
    }

    public Account(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("the name must not be empty: " + str);
        }
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("the type must not be empty: " + str2);
        }
        this.name = str;
        this.type = str2;
        this.accessId = str3;
    }

    public Account(Parcel parcel) {
        this.name = parcel.readString();
        this.type = parcel.readString();
        if (TextUtils.isEmpty(this.name)) {
            throw new BadParcelableException("the name must not be empty: " + this.name);
        }
        if (TextUtils.isEmpty(this.type)) {
            throw new BadParcelableException("the type must not be empty: " + this.type);
        }
        this.accessId = parcel.readString();
        if (this.accessId != null) {
            synchronized (sAccessedAccounts) {
                if (sAccessedAccounts.add(this)) {
                    try {
                        IAccountManager.Stub.asInterface(ServiceManager.getService("account")).onAccountAccessed(this.accessId);
                    } catch (RemoteException e) {
                        Log.e(TAG, "Error noting account access", e);
                    }
                }
            }
        }
    }

    public String getAccessId() {
        return this.accessId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeString(this.type);
        parcel.writeString(this.accessId);
    }

    public String toString() {
        return "Account {name=" + this.name + ", type=" + this.type + "}";
    }
}
