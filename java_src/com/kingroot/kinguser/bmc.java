package com.kingroot.kinguser;

import android.os.Bundle;
import cloudsdk.IActionResult;
import cloudsdk.ext.p008kr.RootConst;
import java.util.Locale;
/* loaded from: classes.dex */
public class bmc implements IActionResult {

    /* renamed from: fu */
    private int f1746fu;

    /* renamed from: fv */
    private int f1747fv;

    /* renamed from: fw */
    private Bundle f1748fw;
    private String mErrorMessage;

    public bmc(int i, int i2, String str, Bundle bundle) {
        this.f1746fu = i;
        this.f1747fv = i2;
        this.mErrorMessage = str;
        this.f1748fw = bundle;
    }

    public bmc(int i) {
        this(i, 0, "", null);
    }

    @Override // cloudsdk.IActionResult
    public int getResultCode() {
        return this.f1746fu;
    }

    public void setResultCode(int i) {
        this.f1746fu = i;
    }

    @Override // cloudsdk.IActionResult
    public int getErrorCode() {
        return this.f1747fv;
    }

    public void setErrorCode(int i) {
        this.f1747fv = i;
    }

    @Override // cloudsdk.IActionResult
    public String getErrorMessage() {
        return this.mErrorMessage;
    }

    public void setErrorMessage(String str) {
        this.mErrorMessage = str;
    }

    @Override // cloudsdk.IActionResult
    public Bundle getReply() {
        return this.f1748fw;
    }

    public void setReply(Bundle bundle) {
        this.f1748fw = bundle;
    }

    public Bundle getBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(RootConst.KEY_RESULT_CODE, this.f1746fu);
        bundle.putInt("errorCode", this.f1747fv);
        bundle.putString("errorMessage", this.mErrorMessage);
        bundle.putBundle("reply", this.f1748fw);
        return bundle;
    }

    public static bmc valueOf(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        return new bmc(bundle.getInt(RootConst.KEY_RESULT_CODE), bundle.getInt("errorCode"), bundle.getString("errorMessage"), bundle.getBundle("reply"));
    }

    @Override // cloudsdk.IActionResult
    public boolean success() {
        return this.f1746fu == 0;
    }

    @Override // cloudsdk.IActionResult
    public final String toString() {
        return String.format(Locale.CHINA, "ret = %d, errorCode = %d, errorMessage = %s", Integer.valueOf(this.f1746fu), Integer.valueOf(this.f1747fv), this.mErrorMessage);
    }
}
