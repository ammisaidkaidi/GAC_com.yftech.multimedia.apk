package android.app;

import android.R;
import android.app.AlertDialog;
import android.app.Notification;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;

/* loaded from: /home/user/work/dex/classes.dex */
public final class RecoverableSecurityException extends SecurityException implements Parcelable {
    public static final Parcelable.Creator<RecoverableSecurityException> CREATOR = new Parcelable.Creator<RecoverableSecurityException>() { // from class: android.app.RecoverableSecurityException.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecoverableSecurityException createFromParcel(Parcel parcel) {
            return new RecoverableSecurityException(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecoverableSecurityException[] newArray(int i) {
            return new RecoverableSecurityException[i];
        }
    };
    private static final String TAG = "RecoverableSecurityException";
    private final RemoteAction mUserAction;
    private final CharSequence mUserMessage;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public RecoverableSecurityException(Parcel parcel) {
        this(new SecurityException(parcel.readString()), parcel.readCharSequence(), RemoteAction.CREATOR.createFromParcel(parcel));
    }

    public RecoverableSecurityException(Throwable th, CharSequence charSequence, RemoteAction remoteAction) {
        super(th.getMessage());
        this.mUserMessage = (CharSequence) Preconditions.checkNotNull(charSequence);
        this.mUserAction = (RemoteAction) Preconditions.checkNotNull(remoteAction);
    }

    @Deprecated
    public RecoverableSecurityException(Throwable th, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        this(th, charSequence, new RemoteAction(Icon.createWithResource("android", 17302733), charSequence2, charSequence2, pendingIntent));
    }

    public CharSequence getUserMessage() {
        return this.mUserMessage;
    }

    public RemoteAction getUserAction() {
        return this.mUserAction;
    }

    @Deprecated
    public void showAsNotification(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        String str = "RecoverableSecurityException_" + this.mUserAction.getActionIntent().getCreatorUid();
        notificationManager.createNotificationChannel(new NotificationChannel(str, TAG, 3));
        showAsNotification(context, str);
    }

    public void showAsNotification(Context context, String str) {
        ((NotificationManager) context.getSystemService(NotificationManager.class)).notify(TAG, this.mUserAction.getActionIntent().getCreatorUid(), new Notification.Builder(context, str).setSmallIcon(17302729).setContentTitle(this.mUserAction.getTitle()).setContentText(this.mUserMessage).setContentIntent(this.mUserAction.getActionIntent()).setCategory(Notification.CATEGORY_ERROR).build());
    }

    public void showAsDialog(Activity activity) {
        LocalDialog localDialog = new LocalDialog();
        Bundle bundle = new Bundle();
        bundle.putParcelable(TAG, this);
        localDialog.setArguments(bundle);
        String str = "RecoverableSecurityException_" + this.mUserAction.getActionIntent().getCreatorUid();
        FragmentManager fragmentManager = activity.getFragmentManager();
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        Fragment findFragmentByTag = fragmentManager.findFragmentByTag(str);
        if (findFragmentByTag != null) {
            beginTransaction.remove(findFragmentByTag);
        }
        beginTransaction.add(localDialog, str);
        beginTransaction.commitAllowingStateLoss();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class LocalDialog extends DialogFragment {
        @Override // android.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            final RecoverableSecurityException recoverableSecurityException = (RecoverableSecurityException) getArguments().getParcelable(RecoverableSecurityException.TAG);
            return new AlertDialog.Builder(getActivity()).setMessage(recoverableSecurityException.mUserMessage).setPositiveButton(recoverableSecurityException.mUserAction.getTitle(), new DialogInterface.OnClickListener() { // from class: android.app.-$$Lambda$RecoverableSecurityException$LocalDialog$r8YNkpjWIZllJsQ_8eA0q51FU5Q
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    RecoverableSecurityException.this.mUserAction.getActionIntent().send();
                }
            }).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).create();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(getMessage());
        parcel.writeCharSequence(this.mUserMessage);
        this.mUserAction.writeToParcel(parcel, i);
    }
}
