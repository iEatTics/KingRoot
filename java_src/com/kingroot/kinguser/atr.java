package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import com.kingroot.kinguser.atv;
import com.kingroot.kinguser.gamebox.foreground.view.GameScreenShotImage;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class atr extends BaseAdapter {
    private int aPY = abg.m12835r(2.0f);
    private List<String> aPZ = new ArrayList();
    private Bitmap aQa;
    private GridView aQb;
    private Context mContext;

    public atr(Context context, GridView gridView, List<String> list, Bitmap bitmap) {
        this.mContext = context;
        this.aPZ.addAll(list);
        this.aQa = bitmap;
        this.aQb = gridView;
    }

    /* renamed from: a */
    public static atr m9145a(Context context, GridView gridView, float f, Bitmap bitmap) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("");
        arrayList.add("");
        arrayList.add("");
        return new atr(context, gridView, arrayList, bitmap);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (C3942yy.m1352c(this.aPZ)) {
            return 0;
        }
        return this.aPZ.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        boolean m1352c = C3942yy.m1352c(this.aPZ);
        if (!(i >= 0 && i < this.aPZ.size()) || m1352c) {
            return null;
        }
        return this.aPZ.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        GameScreenShotImage gameScreenShotImage;
        String str = this.aPZ.get(i);
        int m12836qc = (int) (abg.m12836qc() / 2.5d);
        int i2 = (int) (m12836qc * 1.5d);
        if (view == null) {
            gameScreenShotImage = new GameScreenShotImage(this.mContext);
            gameScreenShotImage.setLayoutParams(new AbsListView.LayoutParams(m12836qc, i2));
            gameScreenShotImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            gameScreenShotImage.setPadding(this.aPY, this.aPY, this.aPY, this.aPY);
        } else {
            gameScreenShotImage = (GameScreenShotImage) view;
        }
        gameScreenShotImage.setImageBitmap(this.aQa);
        gameScreenShotImage.setContainer(this.aQb);
        gameScreenShotImage.setShotCountInContainer(getCount());
        if (!TextUtils.isEmpty(str)) {
            atv.C1594a c1594a = new atv.C1594a();
            c1594a.f1550ok = str;
            c1594a.aQu = m12836qc;
            c1594a.aQv = i2;
            c1594a.aQw = gameScreenShotImage;
            atv.m9134PA().m12686a(c1594a, gameScreenShotImage, Integer.valueOf(str.hashCode()), this.aQa);
        }
        return gameScreenShotImage;
    }
}
