package cloudsdk.ext.p008kr;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: cloudsdk.ext.kr.UiHandler */
/* loaded from: classes.dex */
public class UiHandler extends Handler implements RootConst {

    /* renamed from: X */
    private OnRootListener f151X;
    private Context mContext;

    public UiHandler(Context context, Looper looper) {
        super(looper);
        this.mContext = context;
    }

    public void setOnRootListener(OnRootListener onRootListener) {
        this.f151X = onRootListener;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case RootConst.UI_ROOT_FAIL /* 80006 */:
                Bundle data = message.getData();
                this.f151X.onRootFail(RootExtInfo.valueOf(data.getBundle(RootConst.KEY_MOBILE_ROOT_INFO)), RootExtInfo.valueOf(data.getBundle(RootConst.KEY_PC_ROOT_INFO)));
                return;
            case RootConst.UI_ROOT_SUC /* 80007 */:
                this.f151X.onRootSuc(message.getData().getInt(RootConst.KEY_ROOT, -1));
                return;
            case RootConst.UI_SETTING_NETWORK /* 80008 */:
                this.f151X.onSettingNetwork();
                return;
            case RootConst.UI_ROOTING /* 80009 */:
                if (!RootDao.getInstance(this.mContext).getToSettingNetwork()) {
                    Bundle data2 = message.getData();
                    this.f151X.onRooting(data2.getInt("step", 0), data2.getInt("solutionCount", 0), data2.getInt("solutionIdx", 0), data2.getInt("progress"));
                    return;
                }
                return;
            case 80010:
            default:
                return;
            case RootConst.UI_CHECK_ROOT /* 80011 */:
                this.f151X.onCheckRoot();
                return;
            case RootConst.UI_CHECK_ROOT_FINISH /* 80012 */:
                Bundle data3 = message.getData();
                this.f151X.onCheckRootFinish(RootExtInfo.valueOf(data3.getBundle(RootConst.KEY_MOBILE_ROOT_INFO)), RootExtInfo.valueOf(data3.getBundle(RootConst.KEY_PC_ROOT_INFO)));
                return;
        }
    }
}
