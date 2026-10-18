package android.text.style;

/* loaded from: /home/user/work/dex/classes2.dex */
public interface TabStopSpan extends ParagraphStyle {
    int getTabStop();

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class Standard implements TabStopSpan {
        private int mTabOffset;

        public Standard(int i) {
            this.mTabOffset = i;
        }

        @Override // android.text.style.TabStopSpan
        public int getTabStop() {
            return this.mTabOffset;
        }
    }
}
