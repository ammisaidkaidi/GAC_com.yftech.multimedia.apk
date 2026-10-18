package com.android.internal.app;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.DebugUtils;
import android.util.Slog;

/* loaded from: /home/user/work/dex/classes3.dex */
public class DumpHeapActivity extends Activity {
    public static final String ACTION_DELETE_DUMPHEAP = "com.android.server.am.DELETE_DUMPHEAP";
    public static final String EXTRA_DELAY_DELETE = "delay_delete";
    public static final Uri JAVA_URI = Uri.parse("content://com.android.server.heapdump/java");
    public static final String KEY_DIRECT_LAUNCH = "direct_launch";
    public static final String KEY_PROCESS = "process";
    public static final String KEY_SIZE = "size";
    AlertDialog mDialog;
    boolean mHandled = false;
    String mProcess;
    long mSize;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mProcess = getIntent().getStringExtra(KEY_PROCESS);
        this.mSize = getIntent().getLongExtra(KEY_SIZE, 0L);
        String stringExtra = getIntent().getStringExtra(KEY_DIRECT_LAUNCH);
        if (stringExtra != null) {
            Intent intent = new Intent("android.app.action.REPORT_HEAP_LIMIT");
            intent.setPackage(stringExtra);
            ClipData newUri = ClipData.newUri(getContentResolver(), "Heap Dump", JAVA_URI);
            intent.setClipData(newUri);
            intent.addFlags(1);
            intent.setType(newUri.getDescription().getMimeType(0));
            intent.putExtra("android.intent.extra.STREAM", JAVA_URI);
            try {
                startActivity(intent);
                scheduleDelete();
                this.mHandled = true;
                finish();
                return;
            } catch (ActivityNotFoundException e) {
                Slog.i("DumpHeapActivity", "Unable to direct launch to " + stringExtra + ": " + e.getMessage());
            }
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 16974394);
        builder.setTitle(17039811);
        builder.setMessage(getString(17039810, new Object[]{this.mProcess, DebugUtils.sizeValueToString(this.mSize, null)}));
        builder.setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.android.internal.app.DumpHeapActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DumpHeapActivity.this.mHandled = true;
                DumpHeapActivity.this.sendBroadcast(new Intent(DumpHeapActivity.ACTION_DELETE_DUMPHEAP));
                DumpHeapActivity.this.finish();
            }
        });
        builder.setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.internal.app.DumpHeapActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DumpHeapActivity.this.mHandled = true;
                DumpHeapActivity.this.scheduleDelete();
                Intent intent2 = new Intent("android.intent.action.SEND");
                ClipData newUri2 = ClipData.newUri(DumpHeapActivity.this.getContentResolver(), "Heap Dump", DumpHeapActivity.JAVA_URI);
                intent2.setClipData(newUri2);
                intent2.addFlags(1);
                intent2.setType(newUri2.getDescription().getMimeType(0));
                intent2.putExtra("android.intent.extra.STREAM", DumpHeapActivity.JAVA_URI);
                DumpHeapActivity.this.startActivity(Intent.createChooser(intent2, DumpHeapActivity.this.getText(17039811)));
                DumpHeapActivity.this.finish();
            }
        });
        this.mDialog = builder.show();
    }

    void scheduleDelete() {
        Intent intent = new Intent(ACTION_DELETE_DUMPHEAP);
        intent.putExtra(EXTRA_DELAY_DELETE, true);
        sendBroadcast(intent);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (isChangingConfigurations() || this.mHandled) {
            return;
        }
        sendBroadcast(new Intent(ACTION_DELETE_DUMPHEAP));
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mDialog.dismiss();
    }
}
