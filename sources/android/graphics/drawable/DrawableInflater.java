package android.graphics.drawable;

import android.app.slice.Slice;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.InflateException;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public final class DrawableInflater {
    private static final HashMap<String, Constructor<? extends Drawable>> CONSTRUCTOR_MAP = new HashMap<>();
    private final ClassLoader mClassLoader;
    private final Resources mRes;

    public static Drawable loadDrawable(Context context, int i) {
        return loadDrawable(context.getResources(), context.getTheme(), i);
    }

    public static Drawable loadDrawable(Resources resources, Resources.Theme theme, int i) {
        return resources.getDrawable(i, theme);
    }

    public DrawableInflater(Resources resources, ClassLoader classLoader) {
        this.mRes = resources;
        this.mClassLoader = classLoader;
    }

    public Drawable inflateFromXml(String str, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        return inflateFromXmlForDensity(str, xmlPullParser, attributeSet, 0, theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Drawable inflateFromXmlForDensity(String str, XmlPullParser xmlPullParser, AttributeSet attributeSet, int i, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (str.equals("drawable") && (str = attributeSet.getAttributeValue(null, "class")) == null) {
            throw new InflateException("<drawable> tag must specify class attribute");
        }
        Drawable inflateFromTag = inflateFromTag(str);
        if (inflateFromTag == null) {
            inflateFromTag = inflateFromClass(str);
        }
        inflateFromTag.setSrcDensityOverride(i);
        inflateFromTag.inflate(this.mRes, xmlPullParser, attributeSet, theme);
        return inflateFromTag;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private Drawable inflateFromTag(String str) {
        char c;
        switch (str.hashCode()) {
            case -2024464016:
                if (str.equals("adaptive-icon")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1724158635:
                if (str.equals("transition")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1671889043:
                if (str.equals("nine-patch")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case -1493546681:
                if (str.equals("animation-list")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case -1388777169:
                if (str.equals("bitmap")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case -930826704:
                if (str.equals("ripple")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -925180581:
                if (str.equals("rotate")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case -820387517:
                if (str.equals("vector")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -510364471:
                if (str.equals("animated-selector")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -94197862:
                if (str.equals("layer-list")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 3056464:
                if (str.equals("clip")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 94842723:
                if (str.equals(Slice.SUBTYPE_COLOR)) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 100360477:
                if (str.equals("inset")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 109250890:
                if (str.equals("scale")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 109399969:
                if (str.equals("shape")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 160680263:
                if (str.equals("level-list")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1191572447:
                if (str.equals("selector")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1442046129:
                if (str.equals("animated-image")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 2013827269:
                if (str.equals("animated-rotate")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 2118620333:
                if (str.equals("animated-vector")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return new StateListDrawable();
            case 1:
                return new AnimatedStateListDrawable();
            case 2:
                return new LevelListDrawable();
            case 3:
                return new LayerDrawable();
            case 4:
                return new TransitionDrawable();
            case 5:
                return new RippleDrawable();
            case 6:
                return new AdaptiveIconDrawable();
            case 7:
                return new ColorDrawable();
            case '\b':
                return new GradientDrawable();
            case '\t':
                return new VectorDrawable();
            case '\n':
                return new AnimatedVectorDrawable();
            case 11:
                return new ScaleDrawable();
            case '\f':
                return new ClipDrawable();
            case '\r':
                return new RotateDrawable();
            case 14:
                return new AnimatedRotateDrawable();
            case 15:
                return new AnimationDrawable();
            case 16:
                return new InsetDrawable();
            case 17:
                return new BitmapDrawable();
            case 18:
                return new NinePatchDrawable();
            case 19:
                return new AnimatedImageDrawable();
            default:
                return null;
        }
    }

    private Drawable inflateFromClass(String str) {
        Constructor<? extends Drawable> constructor;
        try {
            synchronized (CONSTRUCTOR_MAP) {
                constructor = CONSTRUCTOR_MAP.get(str);
                if (constructor == null) {
                    constructor = this.mClassLoader.loadClass(str).asSubclass(Drawable.class).getConstructor(new Class[0]);
                    CONSTRUCTOR_MAP.put(str, constructor);
                }
            }
            return constructor.newInstance(new Object[0]);
        } catch (ClassCastException e) {
            InflateException inflateException = new InflateException("Class is not a Drawable " + str);
            inflateException.initCause(e);
            throw inflateException;
        } catch (ClassNotFoundException e2) {
            InflateException inflateException2 = new InflateException("Class not found " + str);
            inflateException2.initCause(e2);
            throw inflateException2;
        } catch (NoSuchMethodException e3) {
            InflateException inflateException3 = new InflateException("Error inflating class " + str);
            inflateException3.initCause(e3);
            throw inflateException3;
        } catch (Exception e4) {
            InflateException inflateException4 = new InflateException("Error inflating class " + str);
            inflateException4.initCause(e4);
            throw inflateException4;
        }
    }
}
