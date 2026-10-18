package com.android.internal.widget;

import android.app.Notification;
import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.util.Pools;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.RemoteViews;

@RemoteViews.RemoteView
/* loaded from: /home/user/work/dex/classes3.dex */
public class MessagingTextMessage extends ImageFloatingTextView implements MessagingMessage {
    private static Pools.SimplePool<MessagingTextMessage> sInstancePool = new Pools.SynchronizedPool(20);
    private final MessagingMessageState mState;

    public MessagingTextMessage(Context context) {
        super(context);
        this.mState = new MessagingMessageState(this);
    }

    public MessagingTextMessage(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mState = new MessagingMessageState(this);
    }

    public MessagingTextMessage(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mState = new MessagingMessageState(this);
    }

    public MessagingTextMessage(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mState = new MessagingMessageState(this);
    }

    @Override // com.android.internal.widget.MessagingMessage
    public MessagingMessageState getState() {
        return this.mState;
    }

    @Override // com.android.internal.widget.MessagingMessage
    public boolean setMessage(Notification.MessagingStyle.Message message) {
        super.setMessage(message);
        setText(message.getText());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MessagingMessage createMessage(MessagingLayout messagingLayout, Notification.MessagingStyle.Message message) {
        MessagingLinearLayout messagingLinearLayout = messagingLayout.getMessagingLinearLayout();
        MessagingTextMessage messagingTextMessage = (MessagingTextMessage) sInstancePool.acquire();
        if (messagingTextMessage == null) {
            messagingTextMessage = (MessagingTextMessage) LayoutInflater.from(messagingLayout.getContext()).inflate(17367198, (ViewGroup) messagingLinearLayout, false);
            messagingTextMessage.addOnLayoutChangeListener(MessagingLayout.MESSAGING_PROPERTY_ANIMATOR);
        }
        messagingTextMessage.setMessage(message);
        return messagingTextMessage;
    }

    @Override // com.android.internal.widget.MessagingMessage
    public void recycle() {
        super.recycle();
        sInstancePool.release(this);
    }

    public static void dropCache() {
        sInstancePool = new Pools.SynchronizedPool(10);
    }

    @Override // com.android.internal.widget.MessagingLinearLayout.MessagingChild
    public int getMeasuredType() {
        Layout layout;
        if ((!(getMeasuredHeight() < (getLayoutHeight() + getPaddingTop()) + getPaddingBottom()) || getLineCount() > 1) && (layout = getLayout()) != null) {
            return layout.getEllipsisCount(layout.getLineCount() - 1) > 0 ? 1 : 0;
        }
        return 2;
    }

    @Override // com.android.internal.widget.MessagingLinearLayout.MessagingChild
    public void setMaxDisplayedLines(int i) {
        setMaxLines(i);
    }

    @Override // com.android.internal.widget.MessagingLinearLayout.MessagingChild
    public int getConsumedLines() {
        return getLineCount();
    }

    public int getLayoutHeight() {
        Layout layout = getLayout();
        if (layout == null) {
            return 0;
        }
        return layout.getHeight();
    }

    @Override // com.android.internal.widget.MessagingMessage
    public void setColor(int i) {
        setTextColor(i);
    }
}
