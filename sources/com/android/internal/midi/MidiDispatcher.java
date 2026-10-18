package com.android.internal.midi;

import android.media.midi.MidiReceiver;
import android.media.midi.MidiSender;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class MidiDispatcher extends MidiReceiver {
    private final MidiReceiverFailureHandler mFailureHandler;
    private final CopyOnWriteArrayList<MidiReceiver> mReceivers;
    private final MidiSender mSender;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface MidiReceiverFailureHandler {
        void onReceiverFailure(MidiReceiver midiReceiver, IOException iOException);
    }

    public MidiDispatcher() {
        this(null);
    }

    public MidiDispatcher(MidiReceiverFailureHandler midiReceiverFailureHandler) {
        this.mReceivers = new CopyOnWriteArrayList<>();
        this.mSender = new MidiSender() { // from class: com.android.internal.midi.MidiDispatcher.1
            @Override // android.media.midi.MidiSender
            public void onConnect(MidiReceiver midiReceiver) {
                MidiDispatcher.this.mReceivers.add(midiReceiver);
            }

            @Override // android.media.midi.MidiSender
            public void onDisconnect(MidiReceiver midiReceiver) {
                MidiDispatcher.this.mReceivers.remove(midiReceiver);
            }
        };
        this.mFailureHandler = midiReceiverFailureHandler;
    }

    public int getReceiverCount() {
        return this.mReceivers.size();
    }

    public MidiSender getSender() {
        return this.mSender;
    }

    @Override // android.media.midi.MidiReceiver
    public void onSend(byte[] bArr, int i, int i2, long j) throws IOException {
        Iterator<MidiReceiver> it = this.mReceivers.iterator();
        while (it.hasNext()) {
            MidiReceiver next = it.next();
            try {
                next.send(bArr, i, i2, j);
            } catch (IOException e) {
                this.mReceivers.remove(next);
                if (this.mFailureHandler != null) {
                    this.mFailureHandler.onReceiverFailure(next, e);
                }
            }
        }
    }

    @Override // android.media.midi.MidiReceiver
    public void onFlush() throws IOException {
        Iterator<MidiReceiver> it = this.mReceivers.iterator();
        while (it.hasNext()) {
            MidiReceiver next = it.next();
            try {
                next.flush();
            } catch (IOException e) {
                this.mReceivers.remove(next);
                if (this.mFailureHandler != null) {
                    this.mFailureHandler.onReceiverFailure(next, e);
                }
            }
        }
    }
}
