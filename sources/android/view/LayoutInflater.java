package android.view;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Message;
import android.os.Trace;
import android.provider.MediaStore;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class LayoutInflater {
    private static final String ATTR_LAYOUT = "layout";
    private static final boolean DEBUG = false;
    private static final String TAG = "LayoutInflater";
    private static final String TAG_1995 = "blink";
    private static final String TAG_INCLUDE = "include";
    private static final String TAG_MERGE = "merge";
    private static final String TAG_REQUEST_FOCUS = "requestFocus";
    private static final String TAG_TAG = "tag";
    final Object[] mConstructorArgs;
    protected final Context mContext;
    private Factory mFactory;
    private Factory2 mFactory2;
    private boolean mFactorySet;
    private Filter mFilter;
    private HashMap<String, Boolean> mFilterMap;
    private Factory2 mPrivateFactory;
    private TypedValue mTempValue;
    private static final StackTraceElement[] EMPTY_STACK_TRACE = new StackTraceElement[0];
    static final Class<?>[] mConstructorSignature = {Context.class, AttributeSet.class};
    private static final HashMap<String, Constructor<? extends View>> sConstructorMap = new HashMap<>();
    private static final int[] ATTRS_THEME = {R.attr.theme};
    private static final ClassLoader BOOT_CLASS_LOADER = LayoutInflater.class.getClassLoader();

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface Factory {
        View onCreateView(String str, Context context, AttributeSet attributeSet);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface Factory2 extends Factory {
        View onCreateView(View view, String str, Context context, AttributeSet attributeSet);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface Filter {
        boolean onLoadClass(Class cls);
    }

    public abstract LayoutInflater cloneInContext(Context context);

    /* loaded from: /home/user/work/dex/classes2.dex */
    private static class FactoryMerger implements Factory2 {
        private final Factory mF1;
        private final Factory2 mF12;
        private final Factory mF2;
        private final Factory2 mF22;

        FactoryMerger(Factory factory, Factory2 factory2, Factory factory3, Factory2 factory22) {
            this.mF1 = factory;
            this.mF2 = factory3;
            this.mF12 = factory2;
            this.mF22 = factory22;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            View onCreateView = this.mF1.onCreateView(str, context, attributeSet);
            return onCreateView != null ? onCreateView : this.mF2.onCreateView(str, context, attributeSet);
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            View onCreateView = this.mF12 != null ? this.mF12.onCreateView(view, str, context, attributeSet) : this.mF1.onCreateView(str, context, attributeSet);
            return onCreateView != null ? onCreateView : this.mF22 != null ? this.mF22.onCreateView(view, str, context, attributeSet) : this.mF2.onCreateView(str, context, attributeSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LayoutInflater(Context context) {
        this.mConstructorArgs = new Object[2];
        this.mContext = context;
    }

    protected LayoutInflater(LayoutInflater layoutInflater, Context context) {
        this.mConstructorArgs = new Object[2];
        this.mContext = context;
        this.mFactory = layoutInflater.mFactory;
        this.mFactory2 = layoutInflater.mFactory2;
        this.mPrivateFactory = layoutInflater.mPrivateFactory;
        setFilter(layoutInflater.mFilter);
    }

    public static LayoutInflater from(Context context) {
        LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        if (layoutInflater != null) {
            return layoutInflater;
        }
        throw new AssertionError("LayoutInflater not found.");
    }

    public Context getContext() {
        return this.mContext;
    }

    public final Factory getFactory() {
        return this.mFactory;
    }

    public final Factory2 getFactory2() {
        return this.mFactory2;
    }

    public void setFactory(Factory factory) {
        if (this.mFactorySet) {
            throw new IllegalStateException("A factory has already been set on this LayoutInflater");
        }
        if (factory == null) {
            throw new NullPointerException("Given factory can not be null");
        }
        this.mFactorySet = true;
        if (this.mFactory == null) {
            this.mFactory = factory;
        } else {
            this.mFactory = new FactoryMerger(factory, null, this.mFactory, this.mFactory2);
        }
    }

    public void setFactory2(Factory2 factory2) {
        if (this.mFactorySet) {
            throw new IllegalStateException("A factory has already been set on this LayoutInflater");
        }
        if (factory2 == null) {
            throw new NullPointerException("Given factory can not be null");
        }
        this.mFactorySet = true;
        if (this.mFactory == null) {
            this.mFactory2 = factory2;
            this.mFactory = factory2;
        } else {
            FactoryMerger factoryMerger = new FactoryMerger(factory2, factory2, this.mFactory, this.mFactory2);
            this.mFactory2 = factoryMerger;
            this.mFactory = factoryMerger;
        }
    }

    public void setPrivateFactory(Factory2 factory2) {
        if (this.mPrivateFactory == null) {
            this.mPrivateFactory = factory2;
        } else {
            this.mPrivateFactory = new FactoryMerger(factory2, factory2, this.mPrivateFactory, this.mPrivateFactory);
        }
    }

    public Filter getFilter() {
        return this.mFilter;
    }

    public void setFilter(Filter filter) {
        this.mFilter = filter;
        if (filter != null) {
            this.mFilterMap = new HashMap<>();
        }
    }

    public View inflate(int i, ViewGroup viewGroup) {
        return inflate(i, viewGroup, viewGroup != null);
    }

    public View inflate(XmlPullParser xmlPullParser, ViewGroup viewGroup) {
        return inflate(xmlPullParser, viewGroup, viewGroup != null);
    }

    public View inflate(int i, ViewGroup viewGroup, boolean z) {
        XmlResourceParser layout = getContext().getResources().getLayout(i);
        try {
            return inflate(layout, viewGroup, z);
        } finally {
            layout.close();
        }
    }

    public View inflate(XmlPullParser xmlPullParser, ViewGroup viewGroup, boolean z) {
        int next;
        XmlPullParser xmlPullParser2;
        ViewGroup.LayoutParams layoutParams;
        ViewGroup viewGroup2 = viewGroup;
        synchronized (this.mConstructorArgs) {
            Trace.traceBegin(8L, "inflate");
            Context context = this.mContext;
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
            Context context2 = (Context) this.mConstructorArgs[0];
            this.mConstructorArgs[0] = context;
            try {
                do {
                    try {
                        try {
                            try {
                                next = xmlPullParser.next();
                                if (next != 2) {
                                }
                                break;
                            } finally {
                                this.mConstructorArgs[0] = context2;
                                this.mConstructorArgs[1] = null;
                                Trace.traceEnd(8L);
                            }
                        } catch (XmlPullParserException e) {
                            InflateException inflateException = new InflateException(e.getMessage(), e);
                            inflateException.setStackTrace(EMPTY_STACK_TRACE);
                            throw inflateException;
                        }
                    } catch (Exception e2) {
                        e = e2;
                    }
                } while (next != 1);
                break;
                if (next != 2) {
                    throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
                }
                String name = xmlPullParser.getName();
                if (!TAG_MERGE.equals(name)) {
                    View createViewFromTag = createViewFromTag(viewGroup2, name, context, asAttributeSet);
                    if (viewGroup2 != null) {
                        ViewGroup.LayoutParams generateLayoutParams = viewGroup2.generateLayoutParams(asAttributeSet);
                        if (!z) {
                            createViewFromTag.setLayoutParams(generateLayoutParams);
                        }
                        layoutParams = generateLayoutParams;
                        xmlPullParser2 = xmlPullParser;
                    } else {
                        xmlPullParser2 = xmlPullParser;
                        layoutParams = null;
                    }
                    rInflateChildren(xmlPullParser2, createViewFromTag, asAttributeSet, true);
                    if (viewGroup2 != null && z) {
                        viewGroup2.addView(createViewFromTag, layoutParams);
                    }
                    if (viewGroup2 == null || !z) {
                        viewGroup2 = createViewFromTag;
                    }
                } else {
                    if (viewGroup2 == null || !z) {
                        throw new InflateException("<merge /> can be used only with a valid ViewGroup root and attachToRoot=true");
                    }
                    rInflate(xmlPullParser, viewGroup, context, asAttributeSet, false);
                }
            } catch (Exception e3) {
                e = e3;
                InflateException inflateException2 = new InflateException(xmlPullParser.getPositionDescription() + ": " + e.getMessage(), e);
                inflateException2.setStackTrace(EMPTY_STACK_TRACE);
                throw inflateException2;
            }
        }
        return viewGroup2;
    }

    private final boolean verifyClassLoader(Constructor<? extends View> constructor) {
        ClassLoader classLoader = constructor.getDeclaringClass().getClassLoader();
        if (classLoader == BOOT_CLASS_LOADER) {
            return true;
        }
        ClassLoader classLoader2 = this.mContext.getClassLoader();
        while (classLoader != classLoader2) {
            classLoader2 = classLoader2.getParent();
            if (classLoader2 == null) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0116 A[Catch: all -> 0x00fa, TryCatch #5 {all -> 0x00fa, blocks: (B:9:0x0019, B:11:0x0020, B:13:0x0028, B:14:0x0039, B:16:0x0043, B:19:0x0049, B:21:0x0051, B:22:0x0054, B:24:0x00c6, B:26:0x00d0, B:27:0x00d6, B:29:0x00e4, B:30:0x00f2, B:38:0x00fe, B:41:0x011a, B:42:0x0129, B:43:0x0116, B:45:0x006a, B:47:0x006e, B:49:0x0078, B:51:0x0080, B:52:0x0091, B:63:0x009d, B:55:0x00ab, B:57:0x00b6, B:67:0x00bb, B:69:0x00c3, B:72:0x012b, B:74:0x012d, B:76:0x0142, B:77:0x0151, B:78:0x0160, B:80:0x0162, B:82:0x0177, B:83:0x0186, B:84:0x0195), top: B:7:0x0019, inners: #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b6 A[Catch: Exception -> 0x00a7, all -> 0x00fa, ClassNotFoundException -> 0x012a, ClassCastException -> 0x012c, NoSuchMethodException -> 0x0161, TRY_LEAVE, TryCatch #2 {Exception -> 0x00a7, blocks: (B:63:0x009d, B:55:0x00ab, B:57:0x00b6), top: B:62:0x009d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View createView(String str, String str2, AttributeSet attributeSet) throws ClassNotFoundException, InflateException {
        String str3;
        boolean z;
        String str4;
        Constructor<? extends View> constructor = sConstructorMap.get(str);
        Class cls = null;
        if (constructor != null && !verifyClassLoader(constructor)) {
            sConstructorMap.remove(str);
            constructor = null;
        }
        try {
            try {
                try {
                    try {
                        Trace.traceBegin(8L, str);
                        if (constructor == null) {
                            ClassLoader classLoader = this.mContext.getClassLoader();
                            if (str2 != null) {
                                str4 = str2 + str;
                            } else {
                                str4 = str;
                            }
                            Class asSubclass = classLoader.loadClass(str4).asSubclass(View.class);
                            try {
                                if (this.mFilter != null && asSubclass != null && !this.mFilter.onLoadClass(asSubclass)) {
                                    failNotAllowed(str, str2, attributeSet);
                                }
                                Constructor<? extends View> constructor2 = asSubclass.getConstructor(mConstructorSignature);
                                constructor2.setAccessible(true);
                                sConstructorMap.put(str, constructor2);
                                cls = asSubclass;
                                constructor = constructor2;
                            } catch (Exception e) {
                                e = e;
                                cls = asSubclass;
                                StringBuilder sb = new StringBuilder();
                                sb.append(attributeSet.getPositionDescription());
                                sb.append(": Error inflating class ");
                                sb.append(cls != null ? MediaStore.UNKNOWN_STRING : cls.getName());
                                InflateException inflateException = new InflateException(sb.toString(), e);
                                inflateException.setStackTrace(EMPTY_STACK_TRACE);
                                throw inflateException;
                            }
                        } else if (this.mFilter != null) {
                            Boolean bool = this.mFilterMap.get(str);
                            if (bool == null) {
                                ClassLoader classLoader2 = this.mContext.getClassLoader();
                                if (str2 != null) {
                                    str3 = str2 + str;
                                } else {
                                    str3 = str;
                                }
                                Class asSubclass2 = classLoader2.loadClass(str3).asSubclass(View.class);
                                if (asSubclass2 != null) {
                                    try {
                                        if (this.mFilter.onLoadClass(asSubclass2)) {
                                            z = true;
                                            this.mFilterMap.put(str, Boolean.valueOf(z));
                                            if (!z) {
                                                failNotAllowed(str, str2, attributeSet);
                                            }
                                            cls = asSubclass2;
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        cls = asSubclass2;
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append(attributeSet.getPositionDescription());
                                        sb2.append(": Error inflating class ");
                                        sb2.append(cls != null ? MediaStore.UNKNOWN_STRING : cls.getName());
                                        InflateException inflateException2 = new InflateException(sb2.toString(), e);
                                        inflateException2.setStackTrace(EMPTY_STACK_TRACE);
                                        throw inflateException2;
                                    }
                                }
                                z = false;
                                this.mFilterMap.put(str, Boolean.valueOf(z));
                                if (!z) {
                                }
                                cls = asSubclass2;
                            } else if (bool.equals(Boolean.FALSE)) {
                                failNotAllowed(str, str2, attributeSet);
                            }
                        }
                        Object obj = this.mConstructorArgs[0];
                        if (this.mConstructorArgs[0] == null) {
                            this.mConstructorArgs[0] = this.mContext;
                        }
                        Object[] objArr = this.mConstructorArgs;
                        objArr[1] = attributeSet;
                        View newInstance = constructor.newInstance(objArr);
                        if (newInstance instanceof ViewStub) {
                            ((ViewStub) newInstance).setLayoutInflater(cloneInContext((Context) objArr[0]));
                        }
                        this.mConstructorArgs[0] = obj;
                        return newInstance;
                    } catch (Exception e3) {
                        e = e3;
                    }
                } catch (ClassNotFoundException e4) {
                    throw e4;
                }
            } catch (ClassCastException e5) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(attributeSet.getPositionDescription());
                sb3.append(": Class is not a View ");
                if (str2 != null) {
                    str = str2 + str;
                }
                sb3.append(str);
                InflateException inflateException3 = new InflateException(sb3.toString(), e5);
                inflateException3.setStackTrace(EMPTY_STACK_TRACE);
                throw inflateException3;
            } catch (NoSuchMethodException e6) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(attributeSet.getPositionDescription());
                sb4.append(": Error inflating class ");
                if (str2 != null) {
                    str = str2 + str;
                }
                sb4.append(str);
                InflateException inflateException4 = new InflateException(sb4.toString(), e6);
                inflateException4.setStackTrace(EMPTY_STACK_TRACE);
                throw inflateException4;
            }
        } finally {
            Trace.traceEnd(8L);
        }
    }

    private void failNotAllowed(String str, String str2, AttributeSet attributeSet) {
        StringBuilder sb = new StringBuilder();
        sb.append(attributeSet.getPositionDescription());
        sb.append(": Class not allowed to be inflated ");
        if (str2 != null) {
            str = str2 + str;
        }
        sb.append(str);
        throw new InflateException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View onCreateView(String str, AttributeSet attributeSet) throws ClassNotFoundException {
        return createView(str, "android.view.", attributeSet);
    }

    protected View onCreateView(View view, String str, AttributeSet attributeSet) throws ClassNotFoundException {
        return onCreateView(str, attributeSet);
    }

    private View createViewFromTag(View view, String str, Context context, AttributeSet attributeSet) {
        return createViewFromTag(view, str, context, attributeSet, false);
    }

    View createViewFromTag(View view, String str, Context context, AttributeSet attributeSet, boolean z) {
        View onCreateView;
        View createView;
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        if (!z) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS_THEME);
            int resourceId = obtainStyledAttributes.getResourceId(0, 0);
            if (resourceId != 0) {
                context = new ContextThemeWrapper(context, resourceId);
            }
            obtainStyledAttributes.recycle();
        }
        if (str.equals(TAG_1995)) {
            return new BlinkLayout(context, attributeSet);
        }
        try {
            if (this.mFactory2 != null) {
                onCreateView = this.mFactory2.onCreateView(view, str, context, attributeSet);
            } else {
                onCreateView = this.mFactory != null ? this.mFactory.onCreateView(str, context, attributeSet) : null;
            }
            if (onCreateView == null && this.mPrivateFactory != null) {
                onCreateView = this.mPrivateFactory.onCreateView(view, str, context, attributeSet);
            }
            if (onCreateView != null) {
                return onCreateView;
            }
            Object obj = this.mConstructorArgs[0];
            this.mConstructorArgs[0] = context;
            try {
                if (-1 == str.indexOf(46)) {
                    createView = onCreateView(view, str, attributeSet);
                } else {
                    createView = createView(str, null, attributeSet);
                }
                this.mConstructorArgs[0] = obj;
                return createView;
            } catch (Throwable th) {
                this.mConstructorArgs[0] = obj;
                throw th;
            }
        } catch (InflateException e) {
            throw e;
        } catch (ClassNotFoundException e2) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str, e2);
            inflateException.setStackTrace(EMPTY_STACK_TRACE);
            throw inflateException;
        } catch (Exception e3) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str, e3);
            inflateException2.setStackTrace(EMPTY_STACK_TRACE);
            throw inflateException2;
        }
    }

    final void rInflateChildren(XmlPullParser xmlPullParser, View view, AttributeSet attributeSet, boolean z) throws XmlPullParserException, IOException {
        rInflate(xmlPullParser, view, view.getContext(), attributeSet, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x007b, code lost:
    
        r8.onFinishInflate();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x007e, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0074, code lost:
    
        if (r1 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0076, code lost:
    
        r8.restoreDefaultFocus();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0079, code lost:
    
        if (r11 == false) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void rInflate(XmlPullParser xmlPullParser, View view, Context context, AttributeSet attributeSet, boolean z) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        boolean z2 = false;
        while (true) {
            int next = xmlPullParser.next();
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    String name = xmlPullParser.getName();
                    if (TAG_REQUEST_FOCUS.equals(name)) {
                        consumeChildElements(xmlPullParser);
                        z2 = true;
                    } else if ("tag".equals(name)) {
                        parseViewTag(xmlPullParser, view, attributeSet);
                    } else if (TAG_INCLUDE.equals(name)) {
                        if (xmlPullParser.getDepth() == 0) {
                            throw new InflateException("<include /> cannot be the root element");
                        }
                        parseInclude(xmlPullParser, context, view, attributeSet);
                    } else {
                        if (TAG_MERGE.equals(name)) {
                            throw new InflateException("<merge /> must be the root element");
                        }
                        View createViewFromTag = createViewFromTag(view, name, context, attributeSet);
                        ViewGroup viewGroup = (ViewGroup) view;
                        ViewGroup.LayoutParams generateLayoutParams = viewGroup.generateLayoutParams(attributeSet);
                        rInflateChildren(xmlPullParser, createViewFromTag, attributeSet, true);
                        viewGroup.addView(createViewFromTag, generateLayoutParams);
                    }
                }
            }
        }
    }

    private void parseViewTag(XmlPullParser xmlPullParser, View view, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        TypedArray obtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, com.android.internal.R.styleable.ViewTag);
        view.setTag(obtainStyledAttributes.getResourceId(1, 0), obtainStyledAttributes.getText(0));
        obtainStyledAttributes.recycle();
        consumeChildElements(xmlPullParser);
    }

    private void parseInclude(XmlPullParser xmlPullParser, Context context, View view, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int next;
        if (view instanceof ViewGroup) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS_THEME);
            int resourceId = obtainStyledAttributes.getResourceId(0, 0);
            boolean z = resourceId != 0;
            Context contextThemeWrapper = z ? new ContextThemeWrapper(context, resourceId) : context;
            obtainStyledAttributes.recycle();
            ViewGroup.LayoutParams layoutParams = null;
            int attributeResourceValue = attributeSet.getAttributeResourceValue(null, ATTR_LAYOUT, 0);
            if (attributeResourceValue == 0) {
                String attributeValue = attributeSet.getAttributeValue(null, ATTR_LAYOUT);
                if (attributeValue == null || attributeValue.length() <= 0) {
                    throw new InflateException("You must specify a layout in the include tag: <include layout=\"@layout/layoutID\" />");
                }
                attributeResourceValue = contextThemeWrapper.getResources().getIdentifier(attributeValue.substring(1), "attr", contextThemeWrapper.getPackageName());
            }
            if (this.mTempValue == null) {
                this.mTempValue = new TypedValue();
            }
            if (attributeResourceValue != 0 && contextThemeWrapper.getTheme().resolveAttribute(attributeResourceValue, this.mTempValue, true)) {
                attributeResourceValue = this.mTempValue.resourceId;
            }
            if (attributeResourceValue == 0) {
                throw new InflateException("You must specify a valid layout reference. The layout ID " + attributeSet.getAttributeValue(null, ATTR_LAYOUT) + " is not valid.");
            }
            XmlResourceParser layout = contextThemeWrapper.getResources().getLayout(attributeResourceValue);
            try {
                AttributeSet asAttributeSet = Xml.asAttributeSet(layout);
                do {
                    next = layout.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new InflateException(layout.getPositionDescription() + ": No start tag found!");
                }
                String name = layout.getName();
                if (TAG_MERGE.equals(name)) {
                    rInflate(layout, view, contextThemeWrapper, asAttributeSet, false);
                } else {
                    View createViewFromTag = createViewFromTag(view, name, contextThemeWrapper, asAttributeSet, z);
                    ViewGroup viewGroup = (ViewGroup) view;
                    TypedArray obtainStyledAttributes2 = contextThemeWrapper.obtainStyledAttributes(attributeSet, com.android.internal.R.styleable.Include);
                    int resourceId2 = obtainStyledAttributes2.getResourceId(0, -1);
                    int i = obtainStyledAttributes2.getInt(1, -1);
                    obtainStyledAttributes2.recycle();
                    try {
                        layoutParams = viewGroup.generateLayoutParams(attributeSet);
                    } catch (RuntimeException unused) {
                    }
                    if (layoutParams == null) {
                        layoutParams = viewGroup.generateLayoutParams(asAttributeSet);
                    }
                    createViewFromTag.setLayoutParams(layoutParams);
                    rInflateChildren(layout, createViewFromTag, asAttributeSet, true);
                    if (resourceId2 != -1) {
                        createViewFromTag.setId(resourceId2);
                    }
                    switch (i) {
                        case 0:
                            createViewFromTag.setVisibility(0);
                            break;
                        case 1:
                            createViewFromTag.setVisibility(4);
                            break;
                        case 2:
                            createViewFromTag.setVisibility(8);
                            break;
                    }
                    viewGroup.addView(createViewFromTag);
                }
                layout.close();
                consumeChildElements(xmlPullParser);
                return;
            } catch (Throwable th) {
                layout.close();
                throw th;
            }
        }
        throw new InflateException("<include /> can only be used inside of a ViewGroup");
    }

    static final void consumeChildElements(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int next;
        int depth = xmlPullParser.getDepth();
        do {
            next = xmlPullParser.next();
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
        } while (next != 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class BlinkLayout extends FrameLayout {
        private static final int BLINK_DELAY = 500;
        private static final int MESSAGE_BLINK = 66;
        private boolean mBlink;
        private boolean mBlinkState;
        private final Handler mHandler;

        public BlinkLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mHandler = new Handler(new Handler.Callback() { // from class: android.view.LayoutInflater.BlinkLayout.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    if (message.what != 66) {
                        return false;
                    }
                    if (BlinkLayout.this.mBlink) {
                        BlinkLayout.this.mBlinkState = !BlinkLayout.this.mBlinkState;
                        BlinkLayout.this.makeBlink();
                    }
                    BlinkLayout.this.invalidate();
                    return true;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void makeBlink() {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(66), 500L);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.mBlink = true;
            this.mBlinkState = true;
            makeBlink();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.mBlink = false;
            this.mBlinkState = true;
            this.mHandler.removeMessages(66);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            if (this.mBlinkState) {
                super.dispatchDraw(canvas);
            }
        }
    }
}
