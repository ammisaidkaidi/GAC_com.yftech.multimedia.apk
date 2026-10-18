package android.animation;

import android.content.Context;
import android.content.res.ConfigurationBoundResourceCache;
import android.content.res.ConstantState;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.PathParser;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import android.view.animation.BaseInterpolator;
import android.view.animation.Interpolator;
import com.android.internal.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class AnimatorInflater {
    private static final boolean DBG_ANIMATOR_INFLATER = false;
    private static final int SEQUENTIALLY = 1;
    private static final String TAG = "AnimatorInflater";
    private static final int TOGETHER = 0;
    private static final int VALUE_TYPE_COLOR = 3;
    private static final int VALUE_TYPE_FLOAT = 0;
    private static final int VALUE_TYPE_INT = 1;
    private static final int VALUE_TYPE_PATH = 2;
    private static final int VALUE_TYPE_UNDEFINED = 4;
    private static final TypedValue sTmpTypedValue = new TypedValue();

    private static boolean isColorType(int i) {
        return i >= 28 && i <= 31;
    }

    public static Animator loadAnimator(Context context, int i) throws Resources.NotFoundException {
        return loadAnimator(context.getResources(), context.getTheme(), i);
    }

    public static Animator loadAnimator(Resources resources, Resources.Theme theme, int i) throws Resources.NotFoundException {
        return loadAnimator(resources, theme, i, 1.0f);
    }

    public static Animator loadAnimator(Resources resources, Resources.Theme theme, int i, float f) throws Resources.NotFoundException {
        XmlResourceParser animation;
        ConfigurationBoundResourceCache<Animator> animatorCache = resources.getAnimatorCache();
        long j = i;
        Animator configurationBoundResourceCache = animatorCache.getInstance(j, resources, theme);
        if (configurationBoundResourceCache != null) {
            return configurationBoundResourceCache;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                animation = resources.getAnimation(i);
            } catch (Throwable th) {
                th = th;
            }
            try {
                Animator createAnimatorFromXml = createAnimatorFromXml(resources, theme, animation, f);
                if (createAnimatorFromXml != null) {
                    createAnimatorFromXml.appendChangingConfigurations(getChangingConfigs(resources, i));
                    ConstantState<Animator> createConstantState = createAnimatorFromXml.createConstantState();
                    if (createConstantState != null) {
                        animatorCache.put(j, theme, createConstantState);
                        createAnimatorFromXml = createConstantState.newInstance2(resources, theme);
                    }
                }
                if (animation != null) {
                    animation.close();
                }
                return createAnimatorFromXml;
            } catch (IOException e) {
                e = e;
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                notFoundException.initCause(e);
                throw notFoundException;
            } catch (XmlPullParserException e2) {
                e = e2;
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                notFoundException2.initCause(e);
                throw notFoundException2;
            } catch (Throwable th2) {
                th = th2;
                xmlResourceParser = animation;
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
        } catch (XmlPullParserException e4) {
            e = e4;
        }
    }

    public static StateListAnimator loadStateListAnimator(Context context, int i) throws Resources.NotFoundException {
        XmlResourceParser animation;
        Resources resources = context.getResources();
        ConfigurationBoundResourceCache<StateListAnimator> stateListAnimatorCache = resources.getStateListAnimatorCache();
        Resources.Theme theme = context.getTheme();
        long j = i;
        StateListAnimator configurationBoundResourceCache = stateListAnimatorCache.getInstance(j, resources, theme);
        if (configurationBoundResourceCache != null) {
            return configurationBoundResourceCache;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                animation = resources.getAnimation(i);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        } catch (XmlPullParserException e2) {
            e = e2;
        }
        try {
            StateListAnimator createStateListAnimatorFromXml = createStateListAnimatorFromXml(context, animation, Xml.asAttributeSet(animation));
            if (createStateListAnimatorFromXml != null) {
                createStateListAnimatorFromXml.appendChangingConfigurations(getChangingConfigs(resources, i));
                ConstantState<StateListAnimator> createConstantState = createStateListAnimatorFromXml.createConstantState();
                if (createConstantState != null) {
                    stateListAnimatorCache.put(j, theme, createConstantState);
                    createStateListAnimatorFromXml = createConstantState.newInstance2(resources, theme);
                }
            }
            if (animation != null) {
                animation.close();
            }
            return createStateListAnimatorFromXml;
        } catch (IOException e3) {
            e = e3;
            Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load state list animator resource ID #0x" + Integer.toHexString(i));
            notFoundException.initCause(e);
            throw notFoundException;
        } catch (XmlPullParserException e4) {
            e = e4;
            Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load state list animator resource ID #0x" + Integer.toHexString(i));
            notFoundException2.initCause(e);
            throw notFoundException2;
        } catch (Throwable th2) {
            th = th2;
            xmlResourceParser = animation;
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    private static StateListAnimator createStateListAnimatorFromXml(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws IOException, XmlPullParserException {
        StateListAnimator stateListAnimator = new StateListAnimator();
        while (true) {
            switch (xmlPullParser.next()) {
                case 1:
                case 3:
                    return stateListAnimator;
                case 2:
                    if ("item".equals(xmlPullParser.getName())) {
                        int attributeCount = xmlPullParser.getAttributeCount();
                        int[] iArr = new int[attributeCount];
                        Animator animator = null;
                        int i = 0;
                        for (int i2 = 0; i2 < attributeCount; i2++) {
                            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                            if (attributeNameResource == 16843213) {
                                animator = loadAnimator(context, attributeSet.getAttributeResourceValue(i2, 0));
                            } else {
                                int i3 = i + 1;
                                if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                                    attributeNameResource = -attributeNameResource;
                                }
                                iArr[i] = attributeNameResource;
                                i = i3;
                            }
                        }
                        if (animator == null) {
                            animator = createAnimatorFromXml(context.getResources(), context.getTheme(), xmlPullParser, 1.0f);
                        }
                        if (animator == null) {
                            throw new Resources.NotFoundException("animation state item must have a valid animation");
                        }
                        stateListAnimator.addState(StateSet.trimStateSet(iArr, i), animator);
                        break;
                    } else {
                        continue;
                    }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PathDataEvaluator implements TypeEvaluator<PathParser.PathData> {
        private final PathParser.PathData mPathData;

        private PathDataEvaluator() {
            this.mPathData = new PathParser.PathData();
        }

        @Override // android.animation.TypeEvaluator
        public PathParser.PathData evaluate(float f, PathParser.PathData pathData, PathParser.PathData pathData2) {
            if (!PathParser.interpolatePathData(this.mPathData, pathData, pathData2, f)) {
                throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
            }
            return this.mPathData;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static PropertyValuesHolder getPVH(TypedArray typedArray, int i, int i2, int i3, String str) {
        int i4;
        int i5;
        int i6;
        float f;
        PropertyValuesHolder ofFloat;
        float f2;
        float f3;
        PropertyValuesHolder ofObject;
        TypedValue peekValue = typedArray.peekValue(i2);
        Object[] objArr = peekValue != null;
        int i7 = objArr != false ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i3);
        Object[] objArr2 = peekValue2 != null;
        int i8 = objArr2 != false ? peekValue2.type : 0;
        if (i == 4) {
            i = ((objArr == true && isColorType(i7)) || (objArr2 == true && isColorType(i8))) ? 3 : 0;
        }
        Object[] objArr3 = i == 0;
        PropertyValuesHolder propertyValuesHolder = null;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        if (i == 2) {
            String string = typedArray.getString(i2);
            String string2 = typedArray.getString(i3);
            PathParser.PathData pathData = string == null ? null : new PathParser.PathData(string);
            PathParser.PathData pathData2 = string2 == null ? null : new PathParser.PathData(string2);
            if (pathData == null && pathData2 == null) {
                return null;
            }
            if (pathData == null) {
                if (pathData2 != null) {
                    return PropertyValuesHolder.ofObject(str, new PathDataEvaluator(), pathData2);
                }
                return null;
            }
            PathDataEvaluator pathDataEvaluator = new PathDataEvaluator();
            if (pathData2 != null) {
                if (!PathParser.canMorph(pathData, pathData2)) {
                    throw new InflateException(" Can't morph from " + string + " to " + string2);
                }
                ofObject = PropertyValuesHolder.ofObject(str, pathDataEvaluator, pathData, pathData2);
            } else {
                ofObject = PropertyValuesHolder.ofObject(str, pathDataEvaluator, pathData);
            }
            return ofObject;
        }
        ArgbEvaluator argbEvaluator = i == 3 ? ArgbEvaluator.getInstance() : null;
        if (objArr3 == true) {
            if (objArr == true) {
                if (i7 == 5) {
                    f2 = typedArray.getDimension(i2, 0.0f);
                } else {
                    f2 = typedArray.getFloat(i2, 0.0f);
                }
                if (objArr2 != false) {
                    if (i8 == 5) {
                        f3 = typedArray.getDimension(i3, 0.0f);
                    } else {
                        f3 = typedArray.getFloat(i3, 0.0f);
                    }
                    ofFloat = PropertyValuesHolder.ofFloat(str, f2, f3);
                } else {
                    ofFloat = PropertyValuesHolder.ofFloat(str, f2);
                }
            } else {
                if (i8 == 5) {
                    f = typedArray.getDimension(i3, 0.0f);
                } else {
                    f = typedArray.getFloat(i3, 0.0f);
                }
                ofFloat = PropertyValuesHolder.ofFloat(str, f);
            }
            propertyValuesHolder = ofFloat;
        } else if (objArr == true) {
            if (i7 == 5) {
                i5 = (int) typedArray.getDimension(i2, 0.0f);
            } else if (isColorType(i7)) {
                i5 = typedArray.getColor(i2, 0);
            } else {
                i5 = typedArray.getInt(i2, 0);
            }
            if (objArr2 != false) {
                if (i8 == 5) {
                    i6 = (int) typedArray.getDimension(i3, 0.0f);
                } else if (isColorType(i8)) {
                    i6 = typedArray.getColor(i3, 0);
                } else {
                    i6 = typedArray.getInt(i3, 0);
                }
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i5, i6);
            } else {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i5);
            }
        } else if (objArr2 != false) {
            if (i8 == 5) {
                i4 = (int) typedArray.getDimension(i3, 0.0f);
            } else if (isColorType(i8)) {
                i4 = typedArray.getColor(i3, 0);
            } else {
                i4 = typedArray.getInt(i3, 0);
            }
            propertyValuesHolder = PropertyValuesHolder.ofInt(str, i4);
        }
        if (propertyValuesHolder == null || argbEvaluator == null) {
            return propertyValuesHolder;
        }
        propertyValuesHolder.setEvaluator(argbEvaluator);
        return propertyValuesHolder;
    }

    private static void parseAnimatorFromTypeArray(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f) {
        long j = typedArray.getInt(1, 300);
        long j2 = typedArray.getInt(2, 0);
        int i = typedArray.getInt(7, 4);
        if (i == 4) {
            i = inferValueTypeFromValues(typedArray, 5, 6);
        }
        PropertyValuesHolder pvh = getPVH(typedArray, i, 5, 6, "");
        if (pvh != null) {
            valueAnimator.setValues(pvh);
        }
        valueAnimator.setDuration(j);
        valueAnimator.setStartDelay(j2);
        if (typedArray.hasValue(3)) {
            valueAnimator.setRepeatCount(typedArray.getInt(3, 0));
        }
        if (typedArray.hasValue(4)) {
            valueAnimator.setRepeatMode(typedArray.getInt(4, 1));
        }
        if (typedArray2 != null) {
            setupObjectAnimator(valueAnimator, typedArray2, i, f);
        }
    }

    private static TypeEvaluator setupAnimatorForPath(ValueAnimator valueAnimator, TypedArray typedArray) {
        String string = typedArray.getString(5);
        String string2 = typedArray.getString(6);
        PathParser.PathData pathData = string == null ? null : new PathParser.PathData(string);
        PathParser.PathData pathData2 = string2 == null ? null : new PathParser.PathData(string2);
        if (pathData == null) {
            if (pathData2 == null) {
                return null;
            }
            valueAnimator.setObjectValues(pathData2);
            return new PathDataEvaluator();
        }
        if (pathData2 != null) {
            valueAnimator.setObjectValues(pathData, pathData2);
            if (!PathParser.canMorph(pathData, pathData2)) {
                throw new InflateException(typedArray.getPositionDescription() + " Can't morph from " + string + " to " + string2);
            }
        } else {
            valueAnimator.setObjectValues(pathData);
        }
        return new PathDataEvaluator();
    }

    private static void setupObjectAnimator(ValueAnimator valueAnimator, TypedArray typedArray, int i, float f) {
        Keyframes createXIntKeyframes;
        Keyframes createYIntKeyframes;
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String string = typedArray.getString(1);
        if (string != null) {
            String string2 = typedArray.getString(2);
            String string3 = typedArray.getString(3);
            if (i == 2 || i == 4) {
                i = 0;
            }
            if (string2 == null && string3 == null) {
                throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
            }
            PathKeyframes ofPath = KeyframeSet.ofPath(PathParser.createPathFromPathData(string), f * 0.5f);
            if (i == 0) {
                createXIntKeyframes = ofPath.createXFloatKeyframes();
                createYIntKeyframes = ofPath.createYFloatKeyframes();
            } else {
                createXIntKeyframes = ofPath.createXIntKeyframes();
                createYIntKeyframes = ofPath.createYIntKeyframes();
            }
            PropertyValuesHolder ofKeyframes = string2 != null ? PropertyValuesHolder.ofKeyframes(string2, createXIntKeyframes) : null;
            PropertyValuesHolder ofKeyframes2 = string3 != null ? PropertyValuesHolder.ofKeyframes(string3, createYIntKeyframes) : null;
            if (ofKeyframes == null) {
                objectAnimator.setValues(ofKeyframes2);
                return;
            } else if (ofKeyframes2 == null) {
                objectAnimator.setValues(ofKeyframes);
                return;
            } else {
                objectAnimator.setValues(ofKeyframes, ofKeyframes2);
                return;
            }
        }
        objectAnimator.setPropertyName(typedArray.getString(0));
    }

    private static void setupValues(ValueAnimator valueAnimator, TypedArray typedArray, boolean z, boolean z2, int i, boolean z3, int i2) {
        int i3;
        int i4;
        int i5;
        float f;
        float f2;
        float f3;
        if (z) {
            if (!z2) {
                if (i2 == 5) {
                    f = typedArray.getDimension(6, 0.0f);
                } else {
                    f = typedArray.getFloat(6, 0.0f);
                }
                valueAnimator.setFloatValues(f);
                return;
            }
            if (i == 5) {
                f2 = typedArray.getDimension(5, 0.0f);
            } else {
                f2 = typedArray.getFloat(5, 0.0f);
            }
            if (z3) {
                if (i2 == 5) {
                    f3 = typedArray.getDimension(6, 0.0f);
                } else {
                    f3 = typedArray.getFloat(6, 0.0f);
                }
                valueAnimator.setFloatValues(f2, f3);
                return;
            }
            valueAnimator.setFloatValues(f2);
            return;
        }
        if (!z2) {
            if (z3) {
                if (i2 == 5) {
                    i3 = (int) typedArray.getDimension(6, 0.0f);
                } else if (isColorType(i2)) {
                    i3 = typedArray.getColor(6, 0);
                } else {
                    i3 = typedArray.getInt(6, 0);
                }
                valueAnimator.setIntValues(i3);
                return;
            }
            return;
        }
        if (i == 5) {
            i4 = (int) typedArray.getDimension(5, 0.0f);
        } else if (isColorType(i)) {
            i4 = typedArray.getColor(5, 0);
        } else {
            i4 = typedArray.getInt(5, 0);
        }
        if (z3) {
            if (i2 == 5) {
                i5 = (int) typedArray.getDimension(6, 0.0f);
            } else if (isColorType(i2)) {
                i5 = typedArray.getColor(6, 0);
            } else {
                i5 = typedArray.getInt(6, 0);
            }
            valueAnimator.setIntValues(i4, i5);
            return;
        }
        valueAnimator.setIntValues(i4);
    }

    private static Animator createAnimatorFromXml(Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f) throws XmlPullParserException, IOException {
        return createAnimatorFromXml(resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Animator createAnimatorFromXml(Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i, float f) throws XmlPullParserException, IOException {
        int i2;
        TypedArray obtainAttributes;
        int depth = xmlPullParser.getDepth();
        Animator animator = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            i2 = 0;
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    String name = xmlPullParser.getName();
                    if (name.equals("objectAnimator")) {
                        animator = loadObjectAnimator(resources, theme, attributeSet, f);
                    } else if (name.equals("animator")) {
                        animator = loadAnimator(resources, theme, attributeSet, null, f);
                    } else {
                        if (name.equals("set")) {
                            AnimatorSet animatorSet2 = new AnimatorSet();
                            if (theme != null) {
                                obtainAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.AnimatorSet, 0, 0);
                            } else {
                                obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.AnimatorSet);
                            }
                            TypedArray typedArray = obtainAttributes;
                            animatorSet2.appendChangingConfigurations(typedArray.getChangingConfigurations());
                            createAnimatorFromXml(resources, theme, xmlPullParser, attributeSet, animatorSet2, typedArray.getInt(0, 0), f);
                            typedArray.recycle();
                            animator = animatorSet2;
                        } else if (name.equals("propertyValuesHolder")) {
                            PropertyValuesHolder[] loadValues = loadValues(resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
                            if (loadValues != null && animator != null && (animator instanceof ValueAnimator)) {
                                ((ValueAnimator) animator).setValues(loadValues);
                            }
                            i2 = 1;
                        } else {
                            throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                        }
                        if (animatorSet != null && i2 == 0) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(animator);
                        }
                    }
                    if (animatorSet != null) {
                        if (arrayList == null) {
                        }
                        arrayList.add(animator);
                    }
                }
            }
        }
        if (animatorSet != null && arrayList != null) {
            Animator[] animatorArr = new Animator[arrayList.size()];
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorArr[i2] = (Animator) it.next();
                i2++;
            }
            if (i == 0) {
                animatorSet.playTogether(animatorArr);
            } else {
                animatorSet.playSequentially(animatorArr);
            }
        }
        return animator;
    }

    private static PropertyValuesHolder[] loadValues(Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int i;
        TypedArray obtainAttributes;
        PropertyValuesHolder[] propertyValuesHolderArr = null;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            }
            if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    if (theme != null) {
                        obtainAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.PropertyValuesHolder, 0, 0);
                    } else {
                        obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.PropertyValuesHolder);
                    }
                    String string = obtainAttributes.getString(3);
                    int i2 = obtainAttributes.getInt(2, 4);
                    PropertyValuesHolder loadPvh = loadPvh(resources, theme, xmlPullParser, string, i2);
                    if (loadPvh == null) {
                        loadPvh = getPVH(obtainAttributes, i2, 0, 1, string);
                    }
                    if (loadPvh != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(loadPvh);
                    }
                    obtainAttributes.recycle();
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            propertyValuesHolderArr = new PropertyValuesHolder[size];
            for (i = 0; i < size; i++) {
                propertyValuesHolderArr[i] = (PropertyValuesHolder) arrayList.get(i);
            }
        }
        return propertyValuesHolderArr;
    }

    private static int inferValueTypeOfKeyframe(Resources resources, Resources.Theme theme, AttributeSet attributeSet) {
        TypedArray obtainAttributes;
        int i = 0;
        if (theme != null) {
            obtainAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.Keyframe, 0, 0);
        } else {
            obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.Keyframe);
        }
        TypedValue peekValue = obtainAttributes.peekValue(0);
        if ((peekValue != null) && isColorType(peekValue.type)) {
            i = 3;
        }
        obtainAttributes.recycle();
        return i;
    }

    private static int inferValueTypeFromValues(TypedArray typedArray, int i, int i2) {
        TypedValue peekValue = typedArray.peekValue(i);
        boolean z = peekValue != null;
        int i3 = z ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i2);
        boolean z2 = peekValue2 != null;
        return ((z && isColorType(i3)) || (z2 && isColorType(z2 ? peekValue2.type : 0))) ? 3 : 0;
    }

    private static void dumpKeyframes(Object[] objArr, String str) {
        if (objArr == null || objArr.length == 0) {
            return;
        }
        Log.d(TAG, str);
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            Keyframe keyframe = (Keyframe) objArr[i];
            StringBuilder sb = new StringBuilder();
            sb.append("Keyframe ");
            sb.append(i);
            sb.append(": fraction ");
            sb.append(keyframe.getFraction() < 0.0f ? "null" : Float.valueOf(keyframe.getFraction()));
            sb.append(", , value : ");
            sb.append(keyframe.hasValue() ? keyframe.getValue() : "null");
            Log.d(TAG, sb.toString());
        }
    }

    private static PropertyValuesHolder loadPvh(Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i) throws XmlPullParserException, IOException {
        int size;
        PropertyValuesHolder propertyValuesHolder = null;
        int i2 = i;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            }
            if (xmlPullParser.getName().equals("keyframe")) {
                if (i2 == 4) {
                    i2 = inferValueTypeOfKeyframe(resources, theme, Xml.asAttributeSet(xmlPullParser));
                }
                Keyframe loadKeyframe = loadKeyframe(resources, theme, Xml.asAttributeSet(xmlPullParser), i2);
                if (loadKeyframe != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(loadKeyframe);
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null && (size = arrayList.size()) > 0) {
            Keyframe keyframe = (Keyframe) arrayList.get(0);
            Keyframe keyframe2 = (Keyframe) arrayList.get(size - 1);
            float fraction = keyframe2.getFraction();
            if (fraction < 1.0f) {
                if (fraction < 0.0f) {
                    keyframe2.setFraction(1.0f);
                } else {
                    arrayList.add(arrayList.size(), createNewKeyframe(keyframe2, 1.0f));
                    size++;
                }
            }
            float fraction2 = keyframe.getFraction();
            if (fraction2 != 0.0f) {
                if (fraction2 < 0.0f) {
                    keyframe.setFraction(0.0f);
                } else {
                    arrayList.add(0, createNewKeyframe(keyframe, 0.0f));
                    size++;
                }
            }
            Keyframe[] keyframeArr = new Keyframe[size];
            arrayList.toArray(keyframeArr);
            for (int i3 = 0; i3 < size; i3++) {
                Keyframe keyframe3 = keyframeArr[i3];
                if (keyframe3.getFraction() < 0.0f) {
                    if (i3 == 0) {
                        keyframe3.setFraction(0.0f);
                    } else {
                        int i4 = size - 1;
                        if (i3 == i4) {
                            keyframe3.setFraction(1.0f);
                        } else {
                            int i5 = i3;
                            for (int i6 = i3 + 1; i6 < i4 && keyframeArr[i6].getFraction() < 0.0f; i6++) {
                                i5 = i6;
                            }
                            distributeKeyframes(keyframeArr, keyframeArr[i5 + 1].getFraction() - keyframeArr[i3 - 1].getFraction(), i3, i5);
                        }
                    }
                }
            }
            propertyValuesHolder = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
            if (i2 == 3) {
                propertyValuesHolder.setEvaluator(ArgbEvaluator.getInstance());
            }
        }
        return propertyValuesHolder;
    }

    private static Keyframe createNewKeyframe(Keyframe keyframe, float f) {
        if (keyframe.getType() == Float.TYPE) {
            return Keyframe.ofFloat(f);
        }
        if (keyframe.getType() == Integer.TYPE) {
            return Keyframe.ofInt(f);
        }
        return Keyframe.ofObject(f);
    }

    private static void distributeKeyframes(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    private static Keyframe loadKeyframe(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes;
        Keyframe ofInt;
        if (theme != null) {
            obtainAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.Keyframe, 0, 0);
        } else {
            obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.Keyframe);
        }
        Keyframe keyframe = null;
        float f = obtainAttributes.getFloat(3, -1.0f);
        TypedValue peekValue = obtainAttributes.peekValue(0);
        boolean z = peekValue != null;
        if (i == 4) {
            i = (z && isColorType(peekValue.type)) ? 3 : 0;
        }
        if (z) {
            if (i != 3) {
                switch (i) {
                    case 0:
                        keyframe = Keyframe.ofFloat(f, obtainAttributes.getFloat(0, 0.0f));
                        break;
                }
            }
            keyframe = Keyframe.ofInt(f, obtainAttributes.getInt(0, 0));
        } else {
            if (i == 0) {
                ofInt = Keyframe.ofFloat(f);
            } else {
                ofInt = Keyframe.ofInt(f);
            }
            keyframe = ofInt;
        }
        int resourceId = obtainAttributes.getResourceId(1, 0);
        if (resourceId > 0) {
            keyframe.setInterpolator(AnimationUtils.loadInterpolator(resources, theme, resourceId));
        }
        obtainAttributes.recycle();
        return keyframe;
    }

    private static ObjectAnimator loadObjectAnimator(Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f) throws Resources.NotFoundException {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        loadAnimator(resources, theme, attributeSet, objectAnimator, f);
        return objectAnimator;
    }

    private static ValueAnimator loadAnimator(Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f) throws Resources.NotFoundException {
        TypedArray obtainAttributes;
        TypedArray typedArray;
        if (theme != null) {
            obtainAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.Animator, 0, 0);
        } else {
            obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.Animator);
        }
        if (valueAnimator != null) {
            if (theme != null) {
                typedArray = theme.obtainStyledAttributes(attributeSet, R.styleable.PropertyAnimator, 0, 0);
            } else {
                typedArray = resources.obtainAttributes(attributeSet, R.styleable.PropertyAnimator);
            }
            valueAnimator.appendChangingConfigurations(typedArray.getChangingConfigurations());
        } else {
            typedArray = null;
        }
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        valueAnimator.appendChangingConfigurations(obtainAttributes.getChangingConfigurations());
        parseAnimatorFromTypeArray(valueAnimator, obtainAttributes, typedArray, f);
        int resourceId = obtainAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            Interpolator loadInterpolator = AnimationUtils.loadInterpolator(resources, theme, resourceId);
            if (loadInterpolator instanceof BaseInterpolator) {
                valueAnimator.appendChangingConfigurations(((BaseInterpolator) loadInterpolator).getChangingConfiguration());
            }
            valueAnimator.setInterpolator(loadInterpolator);
        }
        obtainAttributes.recycle();
        if (typedArray != null) {
            typedArray.recycle();
        }
        return valueAnimator;
    }

    private static int getChangingConfigs(Resources resources, int i) {
        int i2;
        synchronized (sTmpTypedValue) {
            resources.getValue(i, sTmpTypedValue, true);
            i2 = sTmpTypedValue.changingConfigurations;
        }
        return i2;
    }
}
