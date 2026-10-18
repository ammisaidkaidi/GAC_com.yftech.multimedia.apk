package android.media.midi;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class MidiSender {
    public abstract void onConnect(MidiReceiver midiReceiver);

    public abstract void onDisconnect(MidiReceiver midiReceiver);

    public void connect(MidiReceiver midiReceiver) {
        if (midiReceiver == null) {
            throw new NullPointerException("receiver null in MidiSender.connect");
        }
        onConnect(midiReceiver);
    }

    public void disconnect(MidiReceiver midiReceiver) {
        if (midiReceiver == null) {
            throw new NullPointerException("receiver null in MidiSender.disconnect");
        }
        onDisconnect(midiReceiver);
    }
}
