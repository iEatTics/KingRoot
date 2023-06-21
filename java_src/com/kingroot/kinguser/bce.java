package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.p004v4.view.MotionEventCompat;
import android.text.TextUtils;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public final class bce {
    private static Drawable bgd = null;
    private static final String[] bge = {"SAMSUNG", "HUAWEI", "XIAOMI", "VIVO", "LENOVO", "COOLPAD", "OPPO", "ZTE", "GIONEE", "MEIZU", "HTC", "HISENSE", "SONY", "DOOV", "TCL", "SEMC", "BIRD"};
    private static final String[] bgf = {"三星", "华为", "小米", "VIVO", "联想", "酷派", "OPPO", "中兴", "金立", "魅族", "HTC", "海信", "索尼", "朵唯", "TCL", "索尼爱立信", "BIRD"};
    public static int bgg;

    static {
        int i = 0;
        bgg = -1;
        try {
            String trim = Build.BRAND.toUpperCase().trim();
            while (true) {
                if (i >= bge.length) {
                    break;
                } else if (!bge[i].equals(trim)) {
                    i++;
                } else {
                    bgg = i;
                    break;
                }
            }
            if (bgg == -1) {
                if ("HONOR".equals(trim)) {
                    bgg = 1;
                } else {
                    bgg = 17;
                }
            }
        } catch (Throwable th) {
            bgg = 17;
        }
    }

    /* renamed from: bn */
    public static Drawable m7709bn(Context context) {
        if (bgd == null) {
            synchronized (bce.class) {
                if (bgd == null) {
                    bgd = context.getResources().getDrawable(R.drawable.kr4_brand_gray_00 + bgg);
                }
            }
        }
        return bgd;
    }

    /* renamed from: kv */
    public static Drawable m7708kv(String str) {
        if (TextUtils.isEmpty(str)) {
            return C3953zi.m1311pr().getDrawable(R.drawable.kr4_brand_gray_17);
        }
        String trim = str.toUpperCase().trim();
        int i = 0;
        while (true) {
            if (i >= bge.length) {
                i = -1;
                break;
            } else if (bge[i].equals(trim)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            if ("HONOR".equals(trim)) {
                i = 1;
            } else {
                i = 17;
            }
        }
        return C3953zi.m1311pr().getDrawable(i + R.drawable.kr4_brand_gray_00);
    }

    /* renamed from: Xk */
    public static String m7711Xk() {
        Throwable th;
        try {
            String trim = Build.MODEL.trim();
            try {
                if (trim.split(" ").length > 2) {
                    return trim.substring(0, trim.indexOf(" ", trim.indexOf(" ") + 1));
                }
                return trim;
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
                return "";
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: a */
    public static int m7710a(float f, int i, int i2) {
        int i3 = (i & 16711680) >> 16;
        int i4 = (i & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
        int i5 = (i & 255) >> 0;
        return Color.argb(255, i3 + ((int) ((((16711680 & i2) >> 16) - i3) * f)), i4 + ((int) ((((65280 & i2) >> 8) - i4) * f)), i5 + ((int) ((((i2 & 255) >> 0) - i5) * f)));
    }

    /* renamed from: A */
    public static int m7712A(float f) {
        return (int) ((f / C3953zi.m1311pr().getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
