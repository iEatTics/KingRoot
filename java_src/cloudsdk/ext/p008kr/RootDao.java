package cloudsdk.ext.p008kr;

import android.content.Context;
import android.content.SharedPreferences;
/* renamed from: cloudsdk.ext.kr.RootDao */
/* loaded from: classes.dex */
public final class RootDao implements RootConst {

    /* renamed from: x */
    private static RootDao f114x;
    private Context mContext;

    /* renamed from: y */
    private int f118y = -1;

    /* renamed from: z */
    private int f119z = -1;

    /* renamed from: A */
    private int f115A = -1;

    /* renamed from: B */
    private int f116B = -1;

    /* renamed from: C */
    private boolean f117C = false;

    private RootDao(Context context) {
        this.mContext = context;
    }

    public static RootDao getInstance(Context context) {
        if (f114x == null) {
            synchronized (RootDao.class) {
                if (f114x == null) {
                    f114x = new RootDao(context.getApplicationContext());
                }
            }
        }
        return f114x;
    }

    public final int getCurrStatus() {
        if (this.f118y == -1) {
            this.f118y = this.mContext.getSharedPreferences(RootConst.PREF_NAME, 0).getInt(RootConst.KEY_CURR_STATUS, 0);
        }
        return this.f118y;
    }

    public final int getPrevStatus() {
        return this.f119z;
    }

    public final int getSolutionIndex() {
        if (this.f115A == -1) {
            this.f115A = this.mContext.getSharedPreferences(RootConst.PREF_NAME, 0).getInt(RootConst.KEY_CURR_SOLUTION_INDEX, -1);
        }
        return this.f115A;
    }

    public final void setCurrStatus(int i, int i2) {
        if (this.f118y != i) {
            this.f119z = this.f118y;
        }
        this.f118y = i;
        this.f115A = i2;
        SharedPreferences.Editor edit = this.mContext.getSharedPreferences(RootConst.PREF_NAME, 0).edit();
        edit.putInt(RootConst.KEY_CURR_STATUS, this.f118y);
        edit.putInt(RootConst.KEY_CURR_SOLUTION_INDEX, this.f115A);
        edit.commit();
    }

    public final void setCurrStatus(int i) {
        if (this.f118y != i) {
            this.f119z = this.f118y;
        }
        this.f118y = i;
        SharedPreferences.Editor edit = this.mContext.getSharedPreferences(RootConst.PREF_NAME, 0).edit();
        edit.putInt(RootConst.KEY_CURR_STATUS, this.f118y);
        edit.commit();
    }

    public final void setCurrProgress(int i) {
        this.f116B = i;
        SharedPreferences.Editor edit = this.mContext.getSharedPreferences(RootConst.PREF_NAME, 0).edit();
        edit.putInt(RootConst.KEY_CURR_PROGRESS, this.f116B);
        edit.commit();
    }

    public final int getCurrProgress() {
        if (this.f116B == -1) {
            this.f116B = this.mContext.getSharedPreferences(RootConst.PREF_NAME, 0).getInt(RootConst.KEY_CURR_PROGRESS, -1);
        }
        return this.f116B;
    }

    public final void setToSettingNetwork(boolean z) {
        this.f117C = z;
    }

    public final boolean getToSettingNetwork() {
        return this.f117C;
    }
}
