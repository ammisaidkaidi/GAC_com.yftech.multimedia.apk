package com.yftech.libmusic.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.media.common.util.AppConstants;
import com.media.common.util.DateUtil;
import com.media.common.util.ValueUtil;
import com.yftech.libmusic.R;
import com.yftech.libmusic.bean.LyricObject;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarEvDevice;
import com.yftech.vehicle.internal.adapter.ICarParking;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: /home/user/work/dex/classes4.dex */
public class LyricView extends View implements Runnable {
    private static boolean blLrc = false;
    private static TreeMap<Integer, LyricObject> lrc_map;
    private final float FLOAT_INVALID_VALUE;
    private int INTERVAL;
    private int MAINSIZEWORD;
    private int PROGRESSSIZEWORD;
    private final int PROGRESS_TEXT_SIZE_DEFAULT;
    private int SIZEWORD;
    private float animDuration;
    private float animInterval;
    private float animIntervalOffset;
    private float baseOffsetY;
    private boolean blScrollView;
    private DecimalFormat df;
    private float frontOffsetY;
    private int gravity;
    private Handler handler;
    private int height;
    private boolean isClear;
    private boolean isShowScrollTo;
    private int lines;
    private int lrcIndex;
    private float mX;
    private Runnable moveRunnable;
    private float offsetY;
    private OnProgressTouchMoveListener onProgressTouchMoveListener;
    private int padding;
    Paint paint;
    Paint paintHL;
    Paint paintMove;
    private int progressLineWidth;
    private boolean scrollAble;
    private float tempOffsetY;
    private int[] textColorDegression;
    private int times;
    private float touchX;
    private float touchY;
    private int width;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnProgressTouchMoveListener {
        void onProgressMove(int i);
    }

    public LyricView(Context context) {
        super(context);
        this.FLOAT_INVALID_VALUE = 9999.0f;
        this.PROGRESS_TEXT_SIZE_DEFAULT = 20;
        this.tempOffsetY = 9999.0f;
        this.baseOffsetY = 0.0f;
        this.isClear = false;
        this.blScrollView = false;
        this.isShowScrollTo = false;
        this.lrcIndex = 0;
        this.MAINSIZEWORD = 0;
        this.SIZEWORD = 0;
        this.PROGRESSSIZEWORD = 0;
        this.INTERVAL = 45;
        this.lines = 5;
        this.padding = 15;
        this.gravity = 0;
        this.textColorDegression = new int[]{R.color.colorFFFFFF, R.color.color99FFFFFF, R.color.color4DFFFFFF};
        this.df = new DecimalFormat("0");
        this.scrollAble = false;
        this.progressLineWidth = 20;
        this.paint = new Paint();
        this.paintHL = new Paint();
        this.paintMove = new Paint();
        this.frontOffsetY = 9999.0f;
        this.moveRunnable = new Runnable() { // from class: com.yftech.libmusic.widget.LyricView.1
            @Override // java.lang.Runnable
            public void run() {
                LyricView.this.blScrollView = false;
            }
        };
        this.animDuration = 200.0f;
        this.animInterval = 50.0f;
        this.handler = new Handler(Looper.getMainLooper());
        this.times = 0;
        init();
    }

    public LyricView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.FLOAT_INVALID_VALUE = 9999.0f;
        this.PROGRESS_TEXT_SIZE_DEFAULT = 20;
        this.tempOffsetY = 9999.0f;
        this.baseOffsetY = 0.0f;
        this.isClear = false;
        this.blScrollView = false;
        this.isShowScrollTo = false;
        this.lrcIndex = 0;
        this.MAINSIZEWORD = 0;
        this.SIZEWORD = 0;
        this.PROGRESSSIZEWORD = 0;
        this.INTERVAL = 45;
        this.lines = 5;
        this.padding = 15;
        this.gravity = 0;
        this.textColorDegression = new int[]{R.color.colorFFFFFF, R.color.color99FFFFFF, R.color.color4DFFFFFF};
        this.df = new DecimalFormat("0");
        this.scrollAble = false;
        this.progressLineWidth = 20;
        this.paint = new Paint();
        this.paintHL = new Paint();
        this.paintMove = new Paint();
        this.frontOffsetY = 9999.0f;
        this.moveRunnable = new Runnable() { // from class: com.yftech.libmusic.widget.LyricView.1
            @Override // java.lang.Runnable
            public void run() {
                LyricView.this.blScrollView = false;
            }
        };
        this.animDuration = 200.0f;
        this.animInterval = 50.0f;
        this.handler = new Handler(Looper.getMainLooper());
        this.times = 0;
        init();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.isClear) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            this.isClear = false;
        }
        if (blLrc) {
            this.paintHL.setTextSize(this.MAINSIZEWORD);
            LyricObject lyricObject = lrc_map.get(Integer.valueOf(this.lrcIndex));
            if (lyricObject == null) {
                return;
            }
            if (this.textColorDegression == null || this.textColorDegression.length <= 0) {
                this.paintHL.setColor(ContextCompat.getColor(getContext(), R.color.colorFFFFFF));
            } else {
                this.paintHL.setColor(ContextCompat.getColor(getContext(), this.textColorDegression[0]));
            }
            if (this.gravity == 0) {
                canvas.drawText(lyricObject.lrc, this.mX, this.offsetY + ((this.SIZEWORD + this.INTERVAL) * (this.lrcIndex - 1)) + this.MAINSIZEWORD + this.INTERVAL, this.paintHL);
            } else {
                float measureText = this.paintHL.measureText(lyricObject.lrc);
                if (this.gravity == 1) {
                    canvas.drawText(lyricObject.lrc, measureText / 2.0f, this.offsetY + ((this.SIZEWORD + this.INTERVAL) * (this.lrcIndex - 1)) + this.MAINSIZEWORD + this.INTERVAL, this.paintHL);
                } else if (this.gravity == 2) {
                    canvas.drawText(lyricObject.lrc, this.width - (measureText / 2.0f), this.offsetY + ((this.SIZEWORD + this.INTERVAL) * (this.lrcIndex - 1)) + this.MAINSIZEWORD + this.INTERVAL, this.paintHL);
                }
            }
            this.paint.setTextSize(this.SIZEWORD);
            int i = this.lrcIndex - 1;
            int i2 = 1;
            while (i >= 0) {
                LyricObject lyricObject2 = lrc_map.get(Integer.valueOf(i));
                if (lyricObject2 != null) {
                    if (this.offsetY + ((this.SIZEWORD + this.INTERVAL) * i) < 0.0f) {
                        break;
                    }
                    if (this.textColorDegression == null || this.textColorDegression.length <= 0) {
                        this.paint.setColor(ContextCompat.getColor(getContext(), R.color.colorFFFFFF));
                    } else {
                        this.paint.setColor(ContextCompat.getColor(getContext(), this.textColorDegression[i2 < this.textColorDegression.length ? i2 : this.textColorDegression.length - 1]));
                    }
                    if (this.gravity == 0) {
                        canvas.drawText(lyricObject2.lrc, this.mX, this.offsetY + ((this.SIZEWORD + this.INTERVAL) * i), this.paint);
                    } else {
                        float measureText2 = this.paint.measureText(lyricObject2.lrc);
                        if (this.gravity == 1) {
                            canvas.drawText(lyricObject2.lrc, measureText2 / 2.0f, this.offsetY + ((this.SIZEWORD + this.INTERVAL) * i), this.paint);
                        } else if (this.gravity == 2) {
                            canvas.drawText(lyricObject2.lrc, this.width - (measureText2 / 2.0f), this.offsetY + ((this.SIZEWORD + this.INTERVAL) * i), this.paint);
                        }
                    }
                }
                i--;
                i2++;
            }
            int i3 = this.lrcIndex + 1;
            int i4 = 1;
            while (i3 < lrc_map.size()) {
                LyricObject lyricObject3 = lrc_map.get(Integer.valueOf(i3));
                if (lyricObject3 != null) {
                    if (this.offsetY + ((this.SIZEWORD + this.INTERVAL) * i3) > this.height) {
                        break;
                    }
                    if (this.textColorDegression == null || this.textColorDegression.length <= 0) {
                        this.paint.setColor(ContextCompat.getColor(getContext(), R.color.colorFFFFFF));
                    } else {
                        this.paint.setColor(ContextCompat.getColor(getContext(), this.textColorDegression[i4 < this.textColorDegression.length ? i4 : this.textColorDegression.length - 1]));
                    }
                    if (this.gravity == 0) {
                        canvas.drawText(lyricObject3.lrc, this.mX, this.offsetY + ((this.SIZEWORD + this.INTERVAL) * (i3 - 1)) + this.MAINSIZEWORD + this.INTERVAL, this.paint);
                    } else {
                        float measureText3 = this.paint.measureText(lyricObject3.lrc);
                        if (this.gravity == 1) {
                            canvas.drawText(lyricObject3.lrc, measureText3 / 2.0f, this.offsetY + ((this.SIZEWORD + this.INTERVAL) * (i3 - 1)) + this.MAINSIZEWORD + this.INTERVAL, this.paint);
                        } else if (this.gravity == 2) {
                            canvas.drawText(lyricObject3.lrc, this.width - (measureText3 / 2.0f), this.offsetY + ((this.SIZEWORD + this.INTERVAL) * (i3 - 1)) + this.MAINSIZEWORD + this.INTERVAL, this.paint);
                        }
                    }
                }
                i3++;
                i4++;
            }
            this.paintMove.setTextSize(this.PROGRESSSIZEWORD);
            if (this.blScrollView && this.isShowScrollTo) {
                this.paintMove.setColor(-65536);
                String musicTime = DateUtil.getMusicTime(getProgressInMoving(this.offsetY, this.tempOffsetY));
                float measureText4 = this.paint.measureText(musicTime);
                if (this.gravity == 0) {
                    canvas.drawLine(0.0f, (this.height / 2) + (this.MAINSIZEWORD / 2), this.progressLineWidth, (this.height / 2) + (this.MAINSIZEWORD / 2), this.paintMove);
                    canvas.drawLine(this.width, (this.height / 2) + (this.MAINSIZEWORD / 2), this.width - this.progressLineWidth, (this.height / 2) + (this.MAINSIZEWORD / 2), this.paintMove);
                    canvas.drawText(musicTime, ((this.width - (measureText4 / 2.0f)) - this.paintMove.getStrokeWidth()) + this.padding, (this.height / 2) + ((this.MAINSIZEWORD + this.PROGRESSSIZEWORD) / 2), this.paintMove);
                    return;
                } else if (this.gravity == 1) {
                    canvas.drawLine(this.width, (this.height / 2) + (this.MAINSIZEWORD / 2), this.width - this.progressLineWidth, (this.height / 2) + (this.MAINSIZEWORD / 2), this.paintMove);
                    canvas.drawText(musicTime, ((this.width - (measureText4 / 2.0f)) - this.paintMove.getStrokeWidth()) - this.padding, (this.height / 2) + ((this.MAINSIZEWORD + this.PROGRESSSIZEWORD) / 2), this.paintMove);
                    return;
                } else {
                    if (this.gravity == 2) {
                        canvas.drawLine(0.0f, (this.height / 2) + (this.MAINSIZEWORD / 2), this.progressLineWidth, (this.height / 2) + (this.MAINSIZEWORD / 2), this.paintMove);
                        canvas.drawText(musicTime, (measureText4 / 2.0f) + this.paintMove.getStrokeWidth() + this.padding, (this.height / 2) + ((this.MAINSIZEWORD + this.PROGRESSSIZEWORD) / 2), this.paintMove);
                        return;
                    }
                    return;
                }
            }
            this.paintMove.setColor(0);
            return;
        }
        this.paint.setTextSize(this.SIZEWORD);
        if (this.textColorDegression == null || this.textColorDegression.length <= 0) {
            this.paint.setColor(ContextCompat.getColor(getContext(), R.color.colorFFFFFF));
        } else {
            this.paint.setColor(ContextCompat.getColor(getContext(), this.textColorDegression[0]));
        }
        if (this.gravity == 0) {
            canvas.drawText(getContext().getString(R.string.no_lyrics), this.mX, this.baseOffsetY, this.paint);
            return;
        }
        float measureText5 = this.paint.measureText(getContext().getString(R.string.no_lyrics));
        if (this.gravity == 1) {
            canvas.drawText(getContext().getString(R.string.no_lyrics), measureText5 / 2.0f, this.baseOffsetY, this.paint);
        } else if (this.gravity == 2) {
            canvas.drawText(getContext().getString(R.string.no_lyrics), this.width - (measureText5 / 2.0f), this.baseOffsetY, this.paint);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!blLrc || !this.scrollAble) {
            return super.onTouchEvent(motionEvent);
        }
        switch (motionEvent.getAction()) {
            case 0:
                if (!this.blScrollView) {
                    this.tempOffsetY = this.offsetY;
                }
                this.frontOffsetY = this.offsetY;
                AppConstants.recordLastControlTime = System.currentTimeMillis();
                this.touchY = motionEvent.getY();
                this.touchX = motionEvent.getX();
                break;
            case 1:
                if (!this.blScrollView && System.currentTimeMillis() - AppConstants.recordLastControlTime <= 200) {
                    performClick();
                    break;
                } else if (System.currentTimeMillis() - AppConstants.recordLastControlTime <= 200) {
                    this.handler.removeCallbacks(this.moveRunnable);
                    int progressInMoving = getProgressInMoving(this.offsetY, this.tempOffsetY);
                    if (this.onProgressTouchMoveListener != null) {
                        this.onProgressTouchMoveListener.onProgressMove(progressInMoving);
                    }
                    this.blScrollView = false;
                    break;
                } else {
                    this.handler.removeCallbacks(this.moveRunnable);
                    this.handler.postDelayed(this.moveRunnable, 3000L);
                    break;
                }
                break;
            case 2:
                if (Math.abs(Math.round(motionEvent.getY() - this.touchY)) >= 20.0f || System.currentTimeMillis() - AppConstants.recordLastControlTime > 200) {
                    this.blScrollView = true;
                    this.offsetY = this.frontOffsetY + (motionEvent.getY() - this.touchY);
                    if (this.offsetY > this.baseOffsetY) {
                        this.offsetY = this.baseOffsetY;
                    }
                    invalidate();
                    break;
                }
                break;
        }
        return true;
    }

    private int getProgressInMoving(float f, float f2) {
        int parseInt;
        int parseInt2;
        float dPoint;
        int round;
        float f3 = f2 - f;
        if (Math.abs(f3) < (this.MAINSIZEWORD / 2.0f) + this.INTERVAL + (this.SIZEWORD / 2.0f)) {
            dPoint = f3 / (((this.MAINSIZEWORD / 2.0f) + this.INTERVAL) + (this.SIZEWORD / 2.0f));
            parseInt2 = f3 >= 0.0f ? 1 : -1;
            parseInt = 0;
        } else {
            this.df.setRoundingMode(RoundingMode.DOWN);
            double d = (f3 - (((this.MAINSIZEWORD / 2.0f) + this.INTERVAL) + (this.SIZEWORD / 2.0f))) / (this.INTERVAL + (this.SIZEWORD * 2));
            parseInt = ValueUtil.parseInt(this.df.format(d));
            this.df.setRoundingMode(RoundingMode.UP);
            parseInt2 = ValueUtil.parseInt(this.df.format(d));
            dPoint = (float) ValueUtil.getDPoint(d, 2);
        }
        Log.e("TAG", "downCount:" + parseInt);
        Log.e("TAG", "upCount:" + parseInt2);
        Log.e("TAG", "movePercent:" + dPoint);
        LyricObject lyricObject = lrc_map.get(Integer.valueOf((this.lrcIndex + parseInt2) % lrc_map.size()));
        LyricObject lyricObject2 = lrc_map.get(Integer.valueOf((this.lrcIndex + parseInt) % lrc_map.size()));
        if (lyricObject == null || lyricObject2 == null) {
            return 0;
        }
        float abs = Math.abs(lyricObject.begintime - lyricObject2.begintime) * dPoint;
        if (f3 < 0.0f) {
            round = Math.round(lyricObject2.begintime - abs);
        } else {
            round = Math.round(lyricObject2.begintime + abs);
        }
        Log.e("TAG", "progress:" + DateUtil.getMusicTime(round));
        return round;
    }

    public void init() {
        setLayerType(2, null);
        lrc_map = new TreeMap<>();
        this.offsetY = 320.0f;
        this.paint = new Paint();
        this.paint.setTextAlign(Paint.Align.CENTER);
        this.paint.setColor(-16711936);
        this.paint.setAntiAlias(true);
        this.paint.setDither(true);
        this.paint.setAlpha(ICarDrive.EPS_STYLE);
        this.paintHL = new Paint();
        this.paintHL.setTextAlign(Paint.Align.CENTER);
        this.paintHL.setColor(-65536);
        this.paintHL.setAntiAlias(true);
        this.paintHL.setAlpha(ICarParking.PARKING_RADAR_ALARM_SETTING);
        this.paintMove = new Paint();
        this.paintMove.setColor(-65536);
        this.paintMove.setStrokeWidth(3.0f);
        this.paintMove.setAntiAlias(true);
        this.paintMove.setTextAlign(Paint.Align.CENTER);
    }

    public void SetTextSize() {
        if (blLrc) {
            int length = lrc_map.get(0).lrc.length();
            for (int i = 1; i < lrc_map.size(); i++) {
                LyricObject lyricObject = lrc_map.get(Integer.valueOf(i));
                if (length < lyricObject.lrc.length()) {
                    length = lyricObject.lrc.length();
                }
            }
            int i2 = ICarEvDevice.CHARGE_SOC_PERCENT_VALID_STATE / length;
            this.SIZEWORD = i2;
            this.MAINSIZEWORD = i2;
            this.PROGRESSSIZEWORD = 20;
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.width = i;
        this.height = i2;
        this.mX = i * 0.5f;
        this.baseOffsetY = (i2 * 0.5f) + this.SIZEWORD;
        if (this.lines > 1) {
            this.INTERVAL = ((this.height - (this.padding * 2)) - (this.lines * this.SIZEWORD)) / (this.lines - 1);
        } else {
            this.INTERVAL = this.height - this.SIZEWORD;
        }
    }

    public Float SpeedLrc() {
        float f = 0.0f;
        if (this.offsetY + ((this.SIZEWORD + this.INTERVAL) * this.lrcIndex) > 220.0f) {
            f = ((this.offsetY + ((this.SIZEWORD + this.INTERVAL) * this.lrcIndex)) - 220.0f) / 20.0f;
        } else if (this.offsetY + ((this.SIZEWORD + this.INTERVAL) * this.lrcIndex) < 120.0f) {
            Log.i("speed", "speed is too fast!!!");
        }
        return Float.valueOf(f);
    }

    public int SelectIndex(int i) {
        if (!blLrc) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < lrc_map.size(); i3++) {
            if (lrc_map.get(Integer.valueOf(i3)).begintime < i) {
                i2++;
            }
        }
        this.lrcIndex = i2 - 1;
        if (this.lrcIndex < 0) {
            this.lrcIndex = 0;
        }
        return this.lrcIndex;
    }

    public static void read(String str) {
        File file;
        TreeMap treeMap = new TreeMap();
        int i = 0;
        try {
            file = new File(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!file.isFile()) {
            blLrc = false;
            return;
        }
        blLrc = true;
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, StandardCharsets.UTF_8));
        Pattern compile = Pattern.compile("\\d{2}");
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            String replace = readLine.replace("[", "").replace("]", "@");
            String[] split = replace.split("@");
            if (replace.endsWith("@")) {
                for (String str2 : split) {
                    String[] split2 = str2.replace(":", ".").replace(".", "@").split("@");
                    Matcher matcher = compile.matcher(split2[0]);
                    if (split2.length == 3 && matcher.matches()) {
                        int parseInt = (((Integer.parseInt(split2[0]) * 60) + Integer.parseInt(split2[1])) * 1000) + (Integer.parseInt(split2[2]) * 10);
                        LyricObject lyricObject = new LyricObject();
                        lyricObject.begintime = parseInt;
                        lyricObject.lrc = "";
                        treeMap.put(Integer.valueOf(parseInt), lyricObject);
                    }
                }
            } else {
                String str3 = split[split.length - 1];
                for (int i2 = 0; i2 < split.length - 1; i2++) {
                    String[] split3 = split[i2].replace(":", ".").replace(".", "@").split("@");
                    Matcher matcher2 = compile.matcher(split3[0]);
                    if (split3.length == 3 && matcher2.matches()) {
                        int parseInt2 = (((Integer.parseInt(split3[0]) * 60) + Integer.parseInt(split3[1])) * 1000) + (Integer.parseInt(split3[2]) * 10);
                        LyricObject lyricObject2 = new LyricObject();
                        lyricObject2.begintime = parseInt2;
                        lyricObject2.lrc = str3;
                        treeMap.put(Integer.valueOf(parseInt2), lyricObject2);
                    }
                }
            }
        }
        fileInputStream.close();
        lrc_map.clear();
        Iterator it = treeMap.keySet().iterator();
        LyricObject lyricObject3 = null;
        while (it.hasNext()) {
            LyricObject lyricObject4 = (LyricObject) treeMap.get(it.next());
            if (lyricObject3 != null) {
                new LyricObject();
                lyricObject3.timeline = lyricObject4.begintime - lyricObject3.begintime;
                lrc_map.put(new Integer(i), lyricObject3);
                i++;
            }
            if (!it.hasNext()) {
                lrc_map.put(new Integer(i), lyricObject4);
            }
            lyricObject3 = lyricObject4;
        }
    }

    public static boolean isBlLrc() {
        return blLrc;
    }

    public float getOffsetY() {
        return this.offsetY;
    }

    public float getBaseOffsetY() {
        return this.baseOffsetY;
    }

    public void setOffsetY(float f) {
        this.offsetY = f;
    }

    public int getSIZEWORD() {
        return this.SIZEWORD;
    }

    public int getMAINSIZEWORD() {
        return this.MAINSIZEWORD;
    }

    public void setSIZEWORD(@NonNull int... iArr) {
        this.SIZEWORD = iArr[0];
        if (iArr.length <= 1) {
            this.MAINSIZEWORD = iArr[0];
            this.PROGRESSSIZEWORD = 20;
        } else if (iArr.length <= 2) {
            this.MAINSIZEWORD = iArr[1];
            this.PROGRESSSIZEWORD = 20;
        } else {
            this.MAINSIZEWORD = iArr[1];
            this.PROGRESSSIZEWORD = iArr[2];
        }
        if (this.lines > 1) {
            this.INTERVAL = (((this.height - (this.padding * 2)) - ((this.lines - 1) * this.SIZEWORD)) - this.MAINSIZEWORD) / (this.lines - 1);
        } else {
            this.INTERVAL = this.height - this.SIZEWORD;
        }
    }

    public boolean isBlScrollView() {
        return this.blScrollView;
    }

    public void clearCanvas() {
        this.isClear = true;
        this.offsetY = this.baseOffsetY;
        invalidate();
        this.handler.removeCallbacks(this);
    }

    public int getINTERVAL() {
        return this.INTERVAL;
    }

    public void setGravity(int i) {
        this.gravity = i;
    }

    public void setTextColorDegression(int... iArr) {
        this.textColorDegression = iArr;
    }

    public void setLines(int i) {
        if (i % 2 == 0) {
            throw new IllegalStateException("行数必须为单数");
        }
        this.lines = i;
        if (i > 1) {
            this.INTERVAL = ((this.height - (this.padding * 2)) - (this.SIZEWORD * i)) / (i - 1);
        } else {
            this.INTERVAL = this.height - this.SIZEWORD;
        }
    }

    public void setScrollAble(boolean z) {
        this.scrollAble = z;
    }

    public void setOnProgressTouchMoveListener(OnProgressTouchMoveListener onProgressTouchMoveListener) {
        this.onProgressTouchMoveListener = onProgressTouchMoveListener;
    }

    public void moveWithAnim(float f) {
        this.animIntervalOffset = (f * this.animInterval) / this.animDuration;
        this.times = 0;
        this.handler.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.offsetY -= this.animIntervalOffset;
        invalidate();
        this.times++;
        if (this.times < Math.round(this.animDuration / this.animInterval)) {
            this.handler.postDelayed(this, Math.round(this.animInterval));
        }
    }
}
