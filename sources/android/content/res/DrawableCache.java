package android.content.res;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class DrawableCache extends ThemedResourceCache<Drawable.ConstantState> {
    public Drawable getInstance(long j, Resources resources, Resources.Theme theme) {
        Drawable.ConstantState constantState = get(j, theme);
        if (constantState != null) {
            return constantState.newDrawable(resources, theme);
        }
        return null;
    }

    @Override // android.content.res.ThemedResourceCache
    public boolean shouldInvalidateEntry(Drawable.ConstantState constantState, int i) {
        return Configuration.needNewResources(i, constantState.getChangingConfigurations());
    }
}
