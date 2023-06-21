package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.WorkerThread;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class ast {
    static Context mContext = KApplication.m13453ge();
    private static final int aNx = abg.m12835r(48.0f);
    private static final int aNy = aNx;
    private static final int aNz = abg.m12835r(18.0f);
    private static final int aNA = aNz;
    private static final int aNB = abg.m12835r(4.5f);
    private static final int aNC = abg.m12835r(3.0f);

    @WorkerThread
    /* renamed from: bd */
    public static Bitmap m9366bd(List<String> list) {
        int i;
        List<String> m9349OH = asw.m9349OH();
        boolean z = false;
        z = (m9349OH == null || m9349OH.size() == 0) ? true : true;
        if (!(m9349OH == null || m9349OH.size() == 0) || list == null || list.size() == 0) {
            list = m9349OH;
        } else {
            z = false;
        }
        C3953zi m1311pr = C3953zi.m1311pr();
        Bitmap copy = BitmapFactory.decodeResource(m1311pr, R.drawable.game_box_shortcut_gamebox).copy(Bitmap.Config.ARGB_8888, true);
        Bitmap copy2 = BitmapFactory.decodeResource(m1311pr, R.drawable.game_box_shortcut_gamebox_cover).copy(Bitmap.Config.ARGB_8888, true);
        Bitmap copy3 = BitmapFactory.decodeResource(m1311pr, R.drawable.game_box_shortcut_gamebox_none_game).copy(Bitmap.Config.ARGB_8888, true);
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(copy2, aNx, aNy, true);
        Bitmap createScaledBitmap2 = Bitmap.createScaledBitmap(copy3, aNx, aNy, true);
        Bitmap createScaledBitmap3 = Bitmap.createScaledBitmap(copy, aNx, aNy, true);
        Canvas canvas = new Canvas(createScaledBitmap3);
        canvas.save();
        Rect[] m9367Or = m9367Or();
        int i2 = 0;
        Rect rect = new Rect();
        Paint paint = new Paint(3);
        paint.setFilterBitmap(true);
        if (z) {
            canvas.drawBitmap(createScaledBitmap2, 0.0f, 0.0f, paint);
        } else {
            for (String str : list) {
                if (i2 >= 4) {
                    break;
                }
                Drawable m1313dv = C3952zh.m1312pq().m1313dv(str);
                if (m1313dv != null) {
                    Bitmap m12656b = acs.m12656b(m1313dv);
                    rect.set(m9367Or[i2].left, m9367Or[i2].top, m9367Or[i2].left + aNz, m9367Or[i2].top + aNA);
                    canvas.drawBitmap(m12656b, (Rect) null, rect, paint);
                    i = i2 + 1;
                } else {
                    i = i2;
                }
                i2 = i;
            }
        }
        canvas.drawBitmap(createScaledBitmap, 0.0f, 0.0f, paint);
        canvas.restore();
        try {
            if (abd.m12839qb() >= 14) {
                canvas.setBitmap(null);
            }
        } catch (Exception e) {
        }
        copy.recycle();
        copy2.recycle();
        copy3.recycle();
        createScaledBitmap.recycle();
        createScaledBitmap2.recycle();
        return createScaledBitmap3;
    }

    /* renamed from: r */
    public static Bitmap m9365r(ArrayList<Bitmap> arrayList) {
        int i;
        boolean z = false;
        if (C3942yy.m1351d(arrayList)) {
            z = true;
        }
        C3953zi m1311pr = C3953zi.m1311pr();
        Bitmap copy = BitmapFactory.decodeResource(m1311pr, R.drawable.game_box_shortcut_gamebox).copy(Bitmap.Config.ARGB_8888, true);
        Bitmap copy2 = BitmapFactory.decodeResource(m1311pr, R.drawable.game_box_shortcut_gamebox_cover).copy(Bitmap.Config.ARGB_8888, true);
        Bitmap copy3 = BitmapFactory.decodeResource(m1311pr, R.drawable.game_box_shortcut_gamebox_none_game).copy(Bitmap.Config.ARGB_8888, true);
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(copy2, aNx, aNy, true);
        Bitmap createScaledBitmap2 = Bitmap.createScaledBitmap(copy3, aNx, aNy, true);
        Bitmap createScaledBitmap3 = Bitmap.createScaledBitmap(copy, aNx, aNy, true);
        Canvas canvas = new Canvas(createScaledBitmap3);
        canvas.save();
        Rect[] m9367Or = m9367Or();
        int i2 = 0;
        Rect rect = new Rect();
        Paint paint = new Paint(3);
        paint.setFilterBitmap(true);
        if (z) {
            canvas.drawBitmap(createScaledBitmap2, 0.0f, 0.0f, paint);
        } else {
            Iterator<Bitmap> it = arrayList.iterator();
            while (it.hasNext()) {
                Bitmap next = it.next();
                if (i2 >= 4) {
                    break;
                }
                if (next != null) {
                    rect.set(m9367Or[i2].left, m9367Or[i2].top, m9367Or[i2].left + aNz, m9367Or[i2].top + aNA);
                    canvas.drawBitmap(next, (Rect) null, rect, paint);
                    i = i2 + 1;
                } else {
                    i = i2;
                }
                i2 = i;
            }
        }
        canvas.drawBitmap(createScaledBitmap, 0.0f, 0.0f, paint);
        canvas.restore();
        try {
            if (abd.m12839qb() >= 14) {
                canvas.setBitmap(null);
            }
        } catch (Exception e) {
        }
        copy.recycle();
        copy2.recycle();
        copy3.recycle();
        createScaledBitmap.recycle();
        createScaledBitmap2.recycle();
        return createScaledBitmap3;
    }

    /* renamed from: Or */
    private static Rect[] m9367Or() {
        Rect[] rectArr = new Rect[4];
        for (int i = 0; i < rectArr.length; i++) {
            rectArr[i] = new Rect();
        }
        rectArr[0] = new Rect(aNB, aNB, -1, -1);
        rectArr[1] = new Rect(aNB + aNz + aNC, aNB, -1, -1);
        rectArr[2] = new Rect(aNB, aNB + aNz + aNC, -1, -1);
        rectArr[3] = new Rect(aNB + aNz + aNC, aNB + aNz + aNC, -1, -1);
        return rectArr;
    }
}
