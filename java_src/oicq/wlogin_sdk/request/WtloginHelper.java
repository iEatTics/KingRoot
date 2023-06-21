package oicq.wlogin_sdk.request;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.kingroot.kinguser.C3298m;
import com.kingroot.loader.common.KlConst;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import oicq.wlogin_sdk.code2d.C4301a;
import oicq.wlogin_sdk.code2d.C4302b;
import oicq.wlogin_sdk.code2d.C4303c;
import oicq.wlogin_sdk.code2d.C4304d;
import oicq.wlogin_sdk.code2d.C4305e;
import oicq.wlogin_sdk.code2d.fetch_code;
import oicq.wlogin_sdk.devicelock.C4307a;
import oicq.wlogin_sdk.devicelock.C4308b;
import oicq.wlogin_sdk.devicelock.C4310d;
import oicq.wlogin_sdk.devicelock.C4312f;
import oicq.wlogin_sdk.devicelock.DevlockBase;
import oicq.wlogin_sdk.devicelock.DevlockInfo;
import oicq.wlogin_sdk.devicelock.DevlockRst;
import oicq.wlogin_sdk.devicelock.TLV_CommRsp;
import oicq.wlogin_sdk.p026a.C4195a;
import oicq.wlogin_sdk.p026a.C4196b;
import oicq.wlogin_sdk.p026a.C4197c;
import oicq.wlogin_sdk.p026a.C4198d;
import oicq.wlogin_sdk.p026a.C4199e;
import oicq.wlogin_sdk.p026a.C4200f;
import oicq.wlogin_sdk.p026a.C4201g;
import oicq.wlogin_sdk.p026a.C4202h;
import oicq.wlogin_sdk.p026a.C4203i;
import oicq.wlogin_sdk.p026a.C4204j;
import oicq.wlogin_sdk.p027b.C4221ap;
import oicq.wlogin_sdk.p027b.C4232b;
import oicq.wlogin_sdk.p027b.C4236bd;
import oicq.wlogin_sdk.p027b.C4271cl;
import oicq.wlogin_sdk.p027b.C4283i;
import oicq.wlogin_sdk.p027b.C4289o;
import oicq.wlogin_sdk.quicklogin.C4321a;
import oicq.wlogin_sdk.report.report_t2;
import oicq.wlogin_sdk.sharemem.WloginLoginInfo;
import oicq.wlogin_sdk.sharemem.WloginSigInfo;
import oicq.wlogin_sdk.sharemem.WloginSimpleInfo;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.EcdhCrypt;
import oicq.wlogin_sdk.tools.ErrMsg;
import oicq.wlogin_sdk.tools.InternationMsg;
import oicq.wlogin_sdk.tools.MD5;
import oicq.wlogin_sdk.tools.RSACrypt;
import oicq.wlogin_sdk.tools.cryptor;
/* loaded from: classes.dex */
public class WtloginHelper extends WtloginListener {
    private boolean isForLocal;
    private long mAysncSeq;
    private Context mContext;

    /* renamed from: mG */
    private C4379u f5172mG;
    private Handler mHelperHandler;
    private WtloginListener mListener;
    private int mMainSigMap;
    private int mMiscBitmap;
    private long mOpenAppid;
    private C4204j mRegStatus;
    private int mSubSigMap;
    static int __top = 0;
    static final Object __sync_top = new Object();

    /* loaded from: classes.dex */
    static class A1SRC {
        public static final int A1SRC_PASSWORD = 1;
        public static final int A1SRC_PTSIG = 4;
        public static final int A1SRC_QUICKLOGIN = 2;
        public static final int A1SRC_SMS = 3;

        private A1SRC() {
        }
    }

    /* loaded from: classes.dex */
    public class HelperThread extends Thread {
        boolean isSelfLooper;
        byte[] mAppName2;
        byte[] mAppSign2;
        byte[] mAppVer2;
        long mAppid1;
        long mAppid2;
        long mDwAppid;
        long mDwDstAppPri;
        long mDwDstAppid;
        long[] mDwDstSubAppidList;
        int mDwMainSigMap;
        long[] mDwSubAppidList;
        long mDwSubDstAppid;
        int mEncrypt;
        WFastLoginInfo mFastLoginInfo;
        Handler mHandler;
        WtloginHelper mHelper;
        boolean mIsSmslogin;
        String mMsgCode;
        byte[] mPictureData;
        WtTicketPromise mPromise;
        boolean mPwdMd5;
        int mReportErrType;
        TransReqContext mReqContext;
        int mReqType;
        byte[][] mReserve;
        long mRole;
        byte[][] mST;
        byte[] mST1;
        byte[] mST1Key;
        long mSmsAppid;
        long mSsoVer2;
        long mSubAppid1;
        long mSubAppid2;
        long mUIN;
        String mUserAccount;
        byte[] mUserInput;
        String mUserPasswd;
        WUserSigInfo mUserSigInfo;
        String ptSig;
        QuickLoginParam quickLoginParam;

        HelperThread(WtloginHelper wtloginHelper, Handler handler) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, int i, String str, long j, long j2, TransReqContext transReqContext, String str2) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mEncrypt = i;
            this.mUserAccount = str;
            this.mDwAppid = j;
            this.mRole = j2;
            this.mReqContext = transReqContext;
            setName(str2);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, int i, String str, long j, long j2, TransReqContext transReqContext, WUserSigInfo wUserSigInfo, String str2) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mEncrypt = i;
            this.mUserAccount = str;
            this.mDwAppid = j;
            this.mRole = j2;
            this.mReqContext = transReqContext;
            this.mUserSigInfo = wUserSigInfo;
            setName(str2);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, long j, long j2, String str, WUserSigInfo wUserSigInfo, String str2) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mUserAccount = str;
            this.mAppid1 = j;
            this.mSubAppid1 = j2;
            this.mUserSigInfo = wUserSigInfo;
            setName(str2);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, String str, long j, int i, long j2, WUserSigInfo wUserSigInfo, String str2) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mUserAccount = str;
            this.mDwAppid = j;
            this.mDwMainSigMap = i;
            this.mDwSubDstAppid = j2;
            this.mUserSigInfo = wUserSigInfo;
            setName(str2);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, String str, long j, int i, long j2, long[] jArr, boolean z, String str2, WUserSigInfo wUserSigInfo, byte[][] bArr, boolean z2, String str3) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mUserAccount = str;
            this.mDwAppid = j;
            this.mDwMainSigMap = i;
            this.mDwSubDstAppid = j2;
            this.mDwSubAppidList = jArr;
            this.mPwdMd5 = z;
            this.mUserPasswd = str2;
            this.mUserSigInfo = wUserSigInfo;
            this.mST = bArr;
            this.mIsSmslogin = z2;
            setName(str3);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, String str, long j, long j2, int i, byte[] bArr, long j3, long j4, long j5, byte[] bArr2, byte[] bArr3, WUserSigInfo wUserSigInfo, WFastLoginInfo wFastLoginInfo, String str2) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mUserAccount = str;
            this.mAppid1 = j;
            this.mSubAppid1 = j2;
            this.mDwMainSigMap = i;
            this.mAppName2 = bArr;
            this.mSsoVer2 = j4;
            this.mAppid2 = j4;
            this.mSubAppid2 = j5;
            this.mAppVer2 = bArr2;
            this.mAppSign2 = bArr3;
            this.mUserSigInfo = wUserSigInfo;
            this.mFastLoginInfo = wFastLoginInfo;
            setName(str2);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, String str, long j, WUserSigInfo wUserSigInfo, String str2) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mUserAccount = str;
            this.mSmsAppid = j;
            this.mUserSigInfo = wUserSigInfo;
            setName(str2);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, String str, String str2, WUserSigInfo wUserSigInfo, String str3) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mUserAccount = str;
            this.mMsgCode = str2;
            this.mUserSigInfo = wUserSigInfo;
            setName(str3);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, String str, String str2, QuickLoginParam quickLoginParam, String str3) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mUserAccount = str;
            this.ptSig = str2;
            this.quickLoginParam = quickLoginParam;
            this.mUserSigInfo = quickLoginParam.userSigInfo;
            setName(str3);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, String str, WUserSigInfo wUserSigInfo, String str2) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mUserAccount = str;
            this.mUserSigInfo = wUserSigInfo;
            setName(str2);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, String str, QuickLoginParam quickLoginParam, String str2) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mUserAccount = str;
            this.quickLoginParam = quickLoginParam;
            this.mUserSigInfo = quickLoginParam.userSigInfo;
            setName(str2);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, String str, byte[] bArr, WUserSigInfo wUserSigInfo, byte[][] bArr2, String str2) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mUserAccount = str;
            this.mUserInput = bArr;
            this.mUserSigInfo = wUserSigInfo;
            this.mST = bArr2;
            setName(str2);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, WtTicketPromise wtTicketPromise, String str, long j, long j2, long j3, int i, long j4, long[] jArr, WUserSigInfo wUserSigInfo, byte[][] bArr, byte[][] bArr2, String str2) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mPromise = wtTicketPromise;
            this.mUserAccount = str;
            this.mDwAppid = j;
            this.mDwDstAppid = j2;
            this.mDwDstAppPri = j3;
            this.mDwMainSigMap = i;
            this.mDwSubDstAppid = j4;
            this.mDwDstSubAppidList = jArr;
            this.mUserSigInfo = wUserSigInfo;
            this.mST = bArr;
            this.mReserve = bArr2;
            setName(str2);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, byte[] bArr, byte[] bArr2, long j, long j2, int i, String str) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mST1 = bArr;
            this.mST1Key = bArr2;
            this.mUIN = j;
            this.mDwAppid = j2;
            this.mReportErrType = i;
            setName(str);
        }

        HelperThread(WtloginHelper wtloginHelper, Handler handler, byte[] bArr, byte[] bArr2, long j, long j2, String str) {
            this.isSelfLooper = false;
            this.mUserSigInfo = null;
            this.mIsSmslogin = false;
            this.mHelper = wtloginHelper;
            this.mHandler = handler;
            this.mST1 = bArr;
            this.mST1Key = bArr2;
            this.mUIN = j;
            this.mDwAppid = j2;
            setName(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void quitSelfLooper() {
            try {
                if (this.isSelfLooper) {
                    Looper myLooper = Looper.myLooper();
                    if (myLooper != null) {
                        myLooper.quit();
                    }
                    this.mHandler = null;
                }
            } catch (Exception e) {
                C4393util.printException(e, "");
            }
        }

        public void RunReq(int i) {
            this.mReqType = i;
            if (this.mReqType == 7) {
                start();
                return;
            }
            synchronized (WtloginHelper.__sync_top) {
                Timer timer = new Timer();
                TimerTask timerTask = new TimerTask() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        HelperThread.this.start();
                    }
                };
                int i2 = WtloginHelper.__top;
                WtloginHelper.__top = i2 + 1;
                timer.schedule(timerTask, i2 * 500);
                C4393util.LOGI("push queue " + WtloginHelper.__top, "");
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (this.mHelper.mListener == null && this.mPromise == null) {
                return;
            }
            final int i = this.mHelper.f5172mG.f5314s;
            this.isSelfLooper = this.mHandler == null;
            if (this.isSelfLooper) {
                Looper.prepare();
                this.mHandler = WtloginHelper.this.newHelperHandler();
            }
            try {
                try {
                    if (this.mHandler == null) {
                        throw new Exception("Handler should not be null!");
                    }
                    if (this.mReqType == 0) {
                        final int GetStWithPasswd = this.mHelper.GetStWithPasswd(this.mUserAccount, this.mDwAppid, this.mDwMainSigMap, this.mDwSubDstAppid, this.mDwSubAppidList, this.mPwdMd5, this.mUserPasswd, this.mUserSigInfo, this.mST, this.mIsSmslogin, 1);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.2
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                ErrMsg errMsg = C4379u.m85b(HelperThread.this.mUserSigInfo._seqence)._last_err_msg;
                                if (HelperThread.this.mHelper.mListener == null) {
                                    C4393util.LOGW("login helper listener is null", HelperThread.this.mUserAccount);
                                } else if (HelperThread.this.mDwSubAppidList == null) {
                                    if (HelperThread.this.mIsSmslogin) {
                                        HelperThread.this.mHelper.mListener.OnGetStViaSMSVerifyLogin(HelperThread.this.mUserAccount, HelperThread.this.mDwAppid, HelperThread.this.mDwMainSigMap, HelperThread.this.mDwSubDstAppid, HelperThread.this.mUserSigInfo, GetStWithPasswd, errMsg);
                                    } else {
                                        HelperThread.this.mHelper.mListener.OnGetStWithPasswd(HelperThread.this.mUserAccount, HelperThread.this.mDwAppid, HelperThread.this.mDwMainSigMap, HelperThread.this.mDwSubDstAppid, HelperThread.this.mUserPasswd, HelperThread.this.mUserSigInfo, GetStWithPasswd, errMsg);
                                    }
                                } else if (HelperThread.this.mIsSmslogin) {
                                    HelperThread.this.mHelper.mListener.OnGetStViaSMSVerifyLogin(HelperThread.this.mUserAccount, HelperThread.this.mDwAppid, HelperThread.this.mDwMainSigMap, HelperThread.this.mDwSubDstAppid, HelperThread.this.mDwSubAppidList, HelperThread.this.mUserSigInfo, HelperThread.this.mST, GetStWithPasswd, errMsg);
                                } else {
                                    HelperThread.this.mHelper.mListener.OnGetStWithPasswd(HelperThread.this.mUserAccount, HelperThread.this.mDwAppid, HelperThread.this.mDwMainSigMap, HelperThread.this.mDwSubDstAppid, HelperThread.this.mDwSubAppidList, HelperThread.this.mUserPasswd, HelperThread.this.mUserSigInfo, HelperThread.this.mST, GetStWithPasswd, errMsg);
                                }
                            }
                        });
                    } else if (this.mReqType == 1) {
                        final int RefreshPictureData = this.mHelper.RefreshPictureData(this.mUserAccount, this.mUserSigInfo, 1);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.3
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                if (HelperThread.this.mHelper.mListener == null) {
                                    C4393util.LOGW("login helper listener is null", HelperThread.this.mUserAccount);
                                    return;
                                }
                                async_context m85b = C4379u.m85b(HelperThread.this.mUserSigInfo._seqence);
                                ErrMsg errMsg = m85b._last_err_msg;
                                HelperThread.this.mPictureData = m85b._t105.m258a();
                                HelperThread.this.mHelper.mListener.OnRefreshPictureData(HelperThread.this.mUserAccount, HelperThread.this.mUserSigInfo, HelperThread.this.mPictureData, RefreshPictureData, errMsg);
                            }
                        });
                    } else if (this.mReqType == 2) {
                        final int CheckPictureAndGetSt = this.mHelper.CheckPictureAndGetSt(this.mUserAccount, this.mUserInput, this.mUserSigInfo, this.mST, 1);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.4
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                ErrMsg errMsg = C4379u.m85b(HelperThread.this.mUserSigInfo._seqence)._last_err_msg;
                                if (C4373o.f5209I) {
                                    if (HelperThread.this.mST == null) {
                                        HelperThread.this.mHelper.mListener.OnCheckWebsigAndGetSt(HelperThread.this.mUserAccount, HelperThread.this.mUserInput, HelperThread.this.mUserSigInfo, CheckPictureAndGetSt, errMsg);
                                    } else {
                                        HelperThread.this.mHelper.mListener.OnCheckWebsigAndGetSt(HelperThread.this.mUserAccount, HelperThread.this.mUserInput, HelperThread.this.mUserSigInfo, HelperThread.this.mST, CheckPictureAndGetSt, errMsg);
                                    }
                                } else if (HelperThread.this.mST == null) {
                                    HelperThread.this.mHelper.mListener.OnCheckPictureAndGetSt(HelperThread.this.mUserAccount, HelperThread.this.mUserInput, HelperThread.this.mUserSigInfo, CheckPictureAndGetSt, errMsg);
                                } else {
                                    HelperThread.this.mHelper.mListener.OnCheckPictureAndGetSt(HelperThread.this.mUserAccount, HelperThread.this.mUserInput, HelperThread.this.mUserSigInfo, HelperThread.this.mST, CheckPictureAndGetSt, errMsg);
                                }
                            }
                        });
                    } else if (this.mReqType == 3) {
                        final int RefreshSMSData = this.mHelper.RefreshSMSData(this.mUserAccount, this.mSmsAppid, this.mUserSigInfo, 1);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.5
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                async_context m85b = C4379u.m85b(HelperThread.this.mUserSigInfo._seqence);
                                ErrMsg errMsg = m85b._last_err_msg;
                                HelperThread.this.mHelper.mListener.OnRefreshSMSData(HelperThread.this.mUserAccount, HelperThread.this.mSmsAppid, HelperThread.this.mUserSigInfo, m85b._t17b.m296a(), m85b._t17b.m295g(), RefreshSMSData, errMsg);
                            }
                        });
                    } else if (this.mReqType == 4) {
                        final int CheckSMSAndGetSt = this.mHelper.CheckSMSAndGetSt(this.mUserAccount, this.mUserInput, this.mUserSigInfo, this.mST, 1);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.6
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                ErrMsg errMsg = C4379u.m85b(HelperThread.this.mUserSigInfo._seqence)._last_err_msg;
                                if (HelperThread.this.mST == null) {
                                    HelperThread.this.mHelper.mListener.OnCheckSMSAndGetSt(HelperThread.this.mUserAccount, HelperThread.this.mUserInput, HelperThread.this.mUserSigInfo, CheckSMSAndGetSt, errMsg);
                                } else {
                                    HelperThread.this.mHelper.mListener.OnCheckSMSAndGetSt(HelperThread.this.mUserAccount, HelperThread.this.mUserInput, HelperThread.this.mUserSigInfo, HelperThread.this.mST, CheckSMSAndGetSt, errMsg);
                                }
                            }
                        });
                    } else if (this.mReqType == 5) {
                        final int GetStWithoutPasswd = this.mHelper.GetStWithoutPasswd(this.mUserAccount, this.mDwAppid, this.mDwDstAppid, this.mDwDstAppPri, this.mDwMainSigMap, this.mDwSubDstAppid, this.mDwDstSubAppidList, this.mUserSigInfo, this.mST, this.mReserve, 1, this.mPromise);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.7
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                ErrMsg errMsg = C4379u.m85b(HelperThread.this.mUserSigInfo._seqence)._last_err_msg;
                                C4379u.m81c(HelperThread.this.mUserSigInfo._seqence);
                                if (HelperThread.this.mDwDstAppid == WtloginHelper.this.mOpenAppid) {
                                    HelperThread.this.mDwDstAppid = HelperThread.this.mDwSubDstAppid;
                                    HelperThread.this.mDwSubDstAppid = 0L;
                                }
                                if (HelperThread.this.mPromise == null) {
                                    if (HelperThread.this.mHelper.mListener != null) {
                                        if (HelperThread.this.mDwDstSubAppidList != null || WtloginHelper.this.f5172mG.m74e()) {
                                            HelperThread.this.mHelper.mListener.OnGetStWithoutPasswd(HelperThread.this.mUserAccount, HelperThread.this.mDwAppid, HelperThread.this.mDwDstAppid, HelperThread.this.mDwMainSigMap, HelperThread.this.mDwSubDstAppid, HelperThread.this.mDwDstSubAppidList, HelperThread.this.mUserSigInfo, HelperThread.this.mST, GetStWithoutPasswd, errMsg);
                                            return;
                                        } else {
                                            HelperThread.this.mHelper.mListener.OnGetStWithoutPasswd(HelperThread.this.mUserAccount, HelperThread.this.mDwAppid, HelperThread.this.mDwDstAppid, HelperThread.this.mDwMainSigMap, HelperThread.this.mDwSubDstAppid, HelperThread.this.mUserSigInfo, GetStWithoutPasswd, errMsg);
                                            return;
                                        }
                                    }
                                    return;
                                }
                                errMsg.setType(GetStWithoutPasswd);
                                if (GetStWithoutPasswd == 0) {
                                    HelperThread.this.mPromise.Done(null);
                                } else if (GetStWithoutPasswd == -1000) {
                                    HelperThread.this.mPromise.Timeout(errMsg);
                                } else {
                                    HelperThread.this.mPromise.Failed(errMsg);
                                }
                            }
                        });
                    } else if (this.mReqType == 6) {
                        final int GetA1WithA1 = this.mHelper.GetA1WithA1(this.mUserAccount, this.mAppid1, this.mSubAppid1, this.mDwMainSigMap, this.mAppName2, this.mSsoVer2, this.mAppid2, this.mSubAppid2, this.mAppVer2, this.mAppSign2, this.mUserSigInfo, this.mFastLoginInfo, 1);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.8
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                ErrMsg errMsg = C4379u.m85b(HelperThread.this.mUserSigInfo._seqence)._last_err_msg;
                                C4379u.m81c(HelperThread.this.mUserSigInfo._seqence);
                                HelperThread.this.mHelper.mListener.onGetA1WithA1(HelperThread.this.mUserAccount, HelperThread.this.mAppid1, HelperThread.this.mDwMainSigMap, HelperThread.this.mSubAppid1, HelperThread.this.mAppName2, HelperThread.this.mSsoVer2, HelperThread.this.mAppid2, HelperThread.this.mSubAppid2, HelperThread.this.mAppVer2, HelperThread.this.mAppSign2, HelperThread.this.mUserSigInfo, HelperThread.this.mFastLoginInfo, GetA1WithA1, errMsg);
                            }
                        });
                    } else if (this.mReqType == 7) {
                        this.mHelper.RequestReport(1, this.mST1, this.mST1Key, this.mUIN, this.mDwAppid);
                    } else if (this.mReqType == 9) {
                        final int RequestTransport = this.mHelper.RequestTransport(1, this.mEncrypt, this.mUserAccount, this.mDwAppid, this.mRole, this.mReqContext, this.mUserSigInfo);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.9
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                if (HelperThread.this.mReqContext.is_register_req()) {
                                    HelperThread.this.mHelper.OnRequestRegister(HelperThread.this.mUserAccount, HelperThread.this.mDwAppid, HelperThread.this.mRole, HelperThread.this.mReqContext, HelperThread.this.mUserSigInfo, RequestTransport);
                                } else if (HelperThread.this.mReqContext.is_code2d_func_req()) {
                                    HelperThread.this.mHelper.OnRequestCode2d(HelperThread.this.mUserAccount, HelperThread.this.mDwAppid, HelperThread.this.mRole, HelperThread.this.mReqContext, HelperThread.this.mUserSigInfo, RequestTransport);
                                } else if (HelperThread.this.mReqContext.is_devlock_req()) {
                                    HelperThread.this.mHelper.OnDeviceLockRequest(HelperThread.this.mUserAccount, HelperThread.this.mDwAppid, HelperThread.this.mRole, HelperThread.this.mReqContext, HelperThread.this.mUserSigInfo, RequestTransport);
                                } else {
                                    HelperThread.this.mHelper.mListener.OnRequestTransport(HelperThread.this.mUserAccount, HelperThread.this.mDwAppid, HelperThread.this.mRole, HelperThread.this.mReqContext, HelperThread.this.mUserSigInfo, RequestTransport);
                                }
                            }
                        });
                    } else if (this.mReqType == 10) {
                        final int RequestTransportMsf = this.mHelper.RequestTransportMsf(1, this.mEncrypt, this.mUserAccount, this.mDwAppid, this.mRole, this.mReqContext);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.10
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                HelperThread.this.mHelper.mListener.OnRequestTransport(HelperThread.this.mUserAccount, HelperThread.this.mDwAppid, HelperThread.this.mRole, HelperThread.this.mReqContext, RequestTransportMsf);
                            }
                        });
                    } else if (this.mReqType == 12) {
                        final int CheckSMSVerifyLoginAccount = this.mHelper.CheckSMSVerifyLoginAccount(this.mAppid1, this.mSubAppid1, this.mUserAccount, this.mUserSigInfo, 1);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.11
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                async_context m85b = C4379u.m85b(HelperThread.this.mUserSigInfo._seqence);
                                HelperThread.this.mHelper.mListener.OnCheckSMSVerifyLoginAccount(HelperThread.this.mAppid1, HelperThread.this.mSubAppid1, HelperThread.this.mUserAccount, m85b._smslogin_msg, m85b._smslogin_msgcnt, m85b._smslogin_timelimit, HelperThread.this.mUserSigInfo, CheckSMSVerifyLoginAccount, m85b._last_err_msg);
                            }
                        });
                    } else if (this.mReqType == 13) {
                        final int VerifySMSVerifyLoginCode = this.mHelper.VerifySMSVerifyLoginCode(this.mUserAccount, this.mMsgCode, this.mUserSigInfo, 1);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.12
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                HelperThread.this.mHelper.mListener.OnVerifySMSVerifyLoginCode(HelperThread.this.mUserAccount, HelperThread.this.mMsgCode, HelperThread.this.mUserSigInfo, VerifySMSVerifyLoginCode, C4379u.m85b(HelperThread.this.mUserSigInfo._seqence)._last_err_msg);
                            }
                        });
                    } else if (this.mReqType == 14) {
                        final int RefreshSMSVerifyLoginCode = this.mHelper.RefreshSMSVerifyLoginCode(this.mUserAccount, this.mUserSigInfo, 1);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.13
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                async_context m85b = C4379u.m85b(HelperThread.this.mUserSigInfo._seqence);
                                HelperThread.this.mHelper.mListener.OnRefreshSMSVerifyLoginCode(HelperThread.this.mUserAccount, m85b._smslogin_msg, m85b._smslogin_msgcnt, m85b._smslogin_timelimit, HelperThread.this.mUserSigInfo, RefreshSMSVerifyLoginCode, m85b._last_err_msg);
                            }
                        });
                    } else if (this.mReqType == 8) {
                        this.mHelper.RequestReportError(1, this.mST1, this.mST1Key, this.mUIN, this.mDwAppid, this.mReportErrType);
                    } else if (this.mReqType == 15) {
                        final int stWithQQSig = this.mHelper.getStWithQQSig(this.mUserAccount, this.quickLoginParam, 1);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.14
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                if (HelperThread.this.mHelper.mListener == null) {
                                    C4393util.LOGW("login helper listener is null", HelperThread.this.mUserAccount);
                                    return;
                                }
                                HelperThread.this.mHelper.mListener.onQuickLogin(HelperThread.this.mUserAccount, HelperThread.this.quickLoginParam, stWithQQSig, C4379u.m85b(HelperThread.this.mUserSigInfo._seqence)._last_err_msg);
                            }
                        });
                    } else if (this.mReqType == 16) {
                        final int stWithPtSig = this.mHelper.getStWithPtSig(this.mUserAccount, this.ptSig, this.quickLoginParam, 1);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.15
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                if (HelperThread.this.mHelper.mListener == null) {
                                    C4393util.LOGW("login helper listener is null", HelperThread.this.mUserAccount);
                                    return;
                                }
                                HelperThread.this.mHelper.mListener.onQuickLogin(HelperThread.this.mUserAccount, HelperThread.this.quickLoginParam, stWithPtSig, C4379u.m85b(HelperThread.this.mUserSigInfo._seqence)._last_err_msg);
                            }
                        });
                    } else if (this.mReqType == 17) {
                        final int stWithQrSig = this.mHelper.getStWithQrSig(this.mUserAccount, this.mDwAppid, this.mDwSubDstAppid, this.mDwMainSigMap, this.mUserSigInfo, 1);
                        this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.16
                            @Override // java.lang.Runnable
                            public void run() {
                                HelperThread.this.quitSelfLooper();
                                if (i != 0) {
                                    return;
                                }
                                if (HelperThread.this.mHelper.mListener == null) {
                                    C4393util.LOGW("login helper listener is null", HelperThread.this.mUserAccount);
                                    return;
                                }
                                HelperThread.this.mHelper.mListener.onGetStWithQrSig(HelperThread.this.mUserAccount, HelperThread.this.mDwAppid, HelperThread.this.mDwMainSigMap, HelperThread.this.mDwSubDstAppid, HelperThread.this.mUserSigInfo, stWithQrSig, C4379u.m85b(HelperThread.this.mUserSigInfo._seqence)._last_err_msg);
                            }
                        });
                    }
                    if (this.isSelfLooper) {
                        Looper.loop();
                    }
                    if (this.mReqType != 7) {
                        synchronized (WtloginHelper.__sync_top) {
                            if (WtloginHelper.__top > 0) {
                                WtloginHelper.__top--;
                            }
                            C4393util.LOGI("pop queue " + WtloginHelper.__top, "");
                        }
                    }
                } catch (Exception e) {
                    C4393util.printException(e, "");
                    this.mHandler.post(new Runnable() { // from class: oicq.wlogin_sdk.request.WtloginHelper.HelperThread.17
                        @Override // java.lang.Runnable
                        public void run() {
                            HelperThread.this.quitSelfLooper();
                            if (i != 0) {
                                return;
                            }
                            if (HelperThread.this.mHelper.mListener == null) {
                                C4393util.LOGW("login helper listener is null", HelperThread.this.mUserAccount);
                            } else {
                                HelperThread.this.mHelper.mListener.OnException(new ErrMsg(), HelperThread.this.mReqType, HelperThread.this.mUserSigInfo);
                            }
                        }
                    });
                    if (this.isSelfLooper) {
                        Looper.loop();
                    }
                    if (this.mReqType != 7) {
                        synchronized (WtloginHelper.__sync_top) {
                            if (WtloginHelper.__top > 0) {
                                WtloginHelper.__top--;
                            }
                            C4393util.LOGI("pop queue " + WtloginHelper.__top, "");
                        }
                    }
                }
            } catch (Throwable th) {
                if (this.isSelfLooper) {
                    Looper.loop();
                }
                if (this.mReqType != 7) {
                    synchronized (WtloginHelper.__sync_top) {
                        if (WtloginHelper.__top > 0) {
                            WtloginHelper.__top--;
                        }
                        C4393util.LOGI("pop queue " + WtloginHelper.__top, "");
                    }
                }
                throw th;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class QuickLoginParam {
        public long appid;
        public long dstAppid;
        public long[] dstSubAppidList;
        public int sigMap;
        public String userAccount;
        public String webViewActivityClassName;
        public boolean forceWebLogin = false;
        public boolean isUserAccountLocked = false;
        public long subAppid = 1;
        public WUserSigInfo userSigInfo = new WUserSigInfo();
    }

    /* loaded from: classes.dex */
    public class QuickLoginRequestCode {
        public static final int REQUEST_PT_LOGIN = 1202;
        public static final int REQUEST_QQ_LOGIN = 1201;

        public QuickLoginRequestCode() {
        }
    }

    /* loaded from: classes.dex */
    public static class RegTLVType {
        public static final int ADDRESS_BOOK = 7;
        public static final int APPID = 2;
        public static final int APPNAME = 14;
        public static final int CALL_BACK_URL = 5;
        public static final int EMAIL_URL = 4;
        public static final int GUID = 10;
        public static final int HAS_ADDRESS_BOOK = 8;

        /* renamed from: ID */
        public static final int f5173ID = 1;
        public static final int LANGUAGE = 3;
        public static final int MPASSWD = 11;
        public static final int MSALT = 12;
        public static final int NEW_UIN = 31;
        public static final int NICK_NAME = 6;
        public static final int NOPASSWD_REG = 9;
        public static final int PHONE_NUMBER = 30;
        public static final int PHONE_NUMBER_BOUND_UIN = 36;
        public static final int PICTURE_ID = 17;
        public static final int PICTURE_URL = 40;
        public static final int REGISTER_SIG = 16;
        public static final int REG_SIG = 33;
        public static final int SET_DEVLOCK_FLG = 15;
        public static final int SUBAPPID = 13;
    }

    /* loaded from: classes.dex */
    public static final class SigType {
        public static final int WLOGIN_A2 = 64;
        public static final int WLOGIN_A5 = 2;
        static final int WLOGIN_A8_RESERVED = 16;
        public static final int WLOGIN_AQSIG = 2097152;
        public static final int WLOGIN_D2 = 262144;
        public static final int WLOGIN_DA2 = 33554432;
        public static final int WLOGIN_LHSIG = 4194304;
        public static final int WLOGIN_LSKEY = 512;
        public static final int WLOGIN_OPENKEY = 16384;
        public static final int WLOGIN_PAYTOKEN = 8388608;
        public static final int WLOGIN_PF = 16777216;
        public static final int WLOGIN_PSKEY = 1048576;
        public static final int WLOGIN_PT4Token = 134217728;
        public static final int WLOGIN_QRPUSH = 67108864;
        static final int WLOGIN_SID_RESERVED = 524288;
        public static final int WLOGIN_SIG64 = 8192;
        public static final int WLOGIN_SKEY = 4096;
        public static final int WLOGIN_ST = 128;
        public static final int WLOGIN_STWEB = 32;
        public static final int WLOGIN_TOKEN = 32768;
        static final int WLOGIN_VKEY_RESERVED = 131072;
    }

    public WtloginHelper(Context context) {
        this.f5172mG = new C4379u(null);
        this.mHelperHandler = newHelperHandler();
        this.mContext = null;
        this.mListener = null;
        this.mRegStatus = new C4204j();
        this.mMainSigMap = 16724722;
        this.mSubSigMap = 66560;
        this.mMiscBitmap = 3669884;
        this.mOpenAppid = 715019303L;
        this.mAysncSeq = 0L;
        this.isForLocal = false;
        this.isForLocal = false;
        this.mContext = context;
        this.f5172mG.m91a(context);
        RequestInit();
    }

    public WtloginHelper(Context context, Object obj) {
        this.f5172mG = new C4379u(null);
        this.mHelperHandler = newHelperHandler();
        this.mContext = null;
        this.mListener = null;
        this.mRegStatus = new C4204j();
        this.mMainSigMap = 16724722;
        this.mSubSigMap = 66560;
        this.mMiscBitmap = 3669884;
        this.mOpenAppid = 715019303L;
        this.mAysncSeq = 0L;
        this.isForLocal = false;
        WtloginMsfListener.TicketMgr = obj;
        localInit(context, this.isForLocal);
    }

    public WtloginHelper(Context context, boolean z) {
        this.f5172mG = new C4379u(null);
        this.mHelperHandler = newHelperHandler();
        this.mContext = null;
        this.mListener = null;
        this.mRegStatus = new C4204j();
        this.mMainSigMap = 16724722;
        this.mSubSigMap = 66560;
        this.mMiscBitmap = 3669884;
        this.mOpenAppid = 715019303L;
        this.mAysncSeq = 0L;
        this.isForLocal = false;
        localInit(context, z);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [oicq.wlogin_sdk.request.WtloginHelper$2] */
    private void AsyncGenRSAKey() {
        if (this.isForLocal) {
            return;
        }
        new Thread("AsyncGenRSAKey") { // from class: oicq.wlogin_sdk.request.WtloginHelper.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                new RSACrypt(WtloginHelper.this.mContext).GenRSAKey();
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int CheckPictureAndGetSt(String str, byte[] bArr, WUserSigInfo wUserSigInfo, byte[][] bArr2, int i) {
        long parseLong;
        long parseLong2;
        boolean z;
        int m168a;
        if (str == null || bArr == null || wUserSigInfo == null) {
            return C4393util.E_INPUT;
        }
        if (i == 0) {
            new HelperThread(this, this.mHelperHandler, str, bArr, wUserSigInfo, bArr2, "CheckPictureAndGetSt").RunReq(2);
            return C4393util.E_PENDING;
        }
        boolean z2 = false;
        if (wUserSigInfo._seqence == 0) {
            wUserSigInfo._seqence = this.mAysncSeq;
        }
        C4379u m96a = this.f5172mG.m96a(wUserSigInfo._seqence);
        wUserSigInfo._seqence = m96a.f5303h;
        async_context m85b = C4379u.m85b(wUserSigInfo._seqence);
        C4393util.LOGI("user:" + str + " CheckPictureAndGetSt Seq:" + m96a.f5303h + " ...", str);
        m96a.f5302g = str;
        m85b._last_err_msg = new ErrMsg();
        if (C4393util.check_uin_account(str).booleanValue()) {
            parseLong = Long.parseLong(str);
            z2 = true;
        } else {
            parseLong = m96a.m83b(str);
            if (parseLong != 0) {
                z2 = true;
            }
        }
        if (z2) {
            m96a.f5301f = parseLong;
            wUserSigInfo.uin = parseLong + "";
        }
        int m162a = new C4373o(m96a).m162a(bArr, this.mMiscBitmap, this.mSubSigMap, m85b._sub_appid_list, wUserSigInfo);
        if (m162a == 204) {
            m162a = new C4375q(m96a).m106a(this.mMiscBitmap, this.mSubSigMap, m85b._sub_appid_list, wUserSigInfo);
        }
        if (m162a == 0 || m162a == 160) {
            if (C4393util.check_uin_account(str).booleanValue()) {
                parseLong2 = Long.parseLong(str);
                z = true;
            } else {
                parseLong2 = m96a.m83b(str);
                z = parseLong2 != 0 ? true : z2;
            }
            if (m85b._msalt != 0 || z) {
                m96a.f5301f = parseLong2;
                wUserSigInfo.uin = parseLong2 + "";
                if (m162a == 160) {
                    m168a = m162a;
                } else {
                    if (wUserSigInfo._reserveData == null || wUserSigInfo._reserveData.length <= 3) {
                        m96a.f5304i = 0;
                    } else {
                        m96a.f5304i = C4393util.buf_to_int32(wUserSigInfo._reserveData, 0);
                        C4393util.LOGI("MSF SSO SEQ:" + m96a.f5304i, str);
                    }
                    WloginSigInfo m95a = m96a.m95a(parseLong2, m85b._appid);
                    if (m95a != null) {
                        wUserSigInfo.get_clone(m95a);
                        if (m85b._sub_appid_list != null && bArr2 != null && m85b._sub_appid_list.length * 2 == bArr2.length) {
                            int i2 = 0;
                            while (true) {
                                int i3 = i2;
                                if (m85b._sub_appid_list == null || i3 >= m85b._sub_appid_list.length) {
                                    break;
                                }
                                WloginSigInfo m95a2 = m96a.m95a(parseLong2, m85b._sub_appid_list[i3]);
                                if (m95a2 != null) {
                                    bArr2[i3 * 2] = (byte[]) m95a2._userSt_Key.clone();
                                    bArr2[(i3 * 2) + 1] = (byte[]) m95a2._userStSig.clone();
                                }
                                i2 = i3 + 1;
                            }
                        }
                        m168a = 0;
                    } else {
                        byte[] bArr3 = (wUserSigInfo._in_ksid == null || wUserSigInfo._in_ksid.length <= 0) ? C4379u.f5272aa : (byte[]) wUserSigInfo._in_ksid.clone();
                        if (m85b._tmp_pwd_type != 0) {
                            C4370l c4370l = new C4370l(m96a, this.mContext);
                            c4370l.m109g();
                            m168a = c4370l.m167a(m85b._appid, m85b._sub_appid, m96a.f5301f, 0, C4379u.f5275ad, m85b._tmp_pwd, null, this.mMiscBitmap, this.mSubSigMap, m85b._sub_appid_list, m85b._main_sigmap, m85b._sub_appid, C4379u.f5293y, 0, 0, 1, bArr3, wUserSigInfo);
                        } else {
                            byte[] bArr4 = new byte[4];
                            C4393util.int64_to_buf32(bArr4, 0, (System.currentTimeMillis() / 1000) + C4379u.f5274ac);
                            int i4 = m85b._isSmslogin ? 3 : 1;
                            C4370l c4370l2 = new C4370l(m96a, this.mContext);
                            c4370l2.m109g();
                            m168a = c4370l2.m168a(m85b._appid, m85b._sub_appid, m96a.f5301f, 0, C4379u.f5275ad, bArr4, m85b._tmp_pwd, i4, this.mMiscBitmap, this.mSubSigMap, m85b._sub_appid_list, m85b._main_sigmap, m85b._sub_appid, C4379u.f5293y, 0, 0, 1, bArr3, wUserSigInfo);
                        }
                        if (m168a == 204) {
                            m168a = new C4375q(m96a).m106a(this.mMiscBitmap, this.mSubSigMap, m85b._sub_appid_list, wUserSigInfo);
                        }
                        if (m168a == 0 || m168a == 160) {
                            long m83b = m96a.m83b(str);
                            wUserSigInfo.uin = m83b + "";
                            if (m168a != 160) {
                                WloginSigInfo m95a3 = m96a.m95a(m83b, m85b._appid);
                                if (m95a3 == null) {
                                    m168a = C4393util.E_NO_KEY;
                                } else {
                                    wUserSigInfo.get_clone(m95a3);
                                    if (m85b._sub_appid_list != null && bArr2 != null && m85b._sub_appid_list.length * 2 == bArr2.length) {
                                        int i5 = 0;
                                        while (true) {
                                            int i6 = i5;
                                            if (m85b._sub_appid_list == null || i6 >= m85b._sub_appid_list.length) {
                                                break;
                                            }
                                            WloginSigInfo m95a4 = m96a.m95a(m83b, m85b._sub_appid_list[i6]);
                                            if (m95a4 != null) {
                                                bArr2[i6 * 2] = (byte[]) m95a4._userSt_Key.clone();
                                                bArr2[(i6 * 2) + 1] = (byte[]) m95a4._userStSig.clone();
                                            }
                                            i5 = i6 + 1;
                                        }
                                    }
                                    m168a = 0;
                                }
                            }
                        }
                    }
                }
            } else {
                m168a = C4393util.E_NO_UIN;
            }
        } else {
            m168a = m162a;
        }
        Ticket GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, 128);
        if (GetUserSigInfoTicket == null) {
            GetUserSigInfoTicket = new Ticket();
        }
        C4379u.f5281al.commit_t2(m96a.f5301f, m96a.f5302g, C4393util.format_ret_code(m168a), m168a);
        if (m168a != 0) {
            RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid, 0);
        } else if (GetUserSigInfoTicket._sig != null && GetUserSigInfoTicket._sig.length != 0) {
            RequestReport(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid);
        }
        if (m96a.f5300d != null && m96a.f5300d.m330a() != 0) {
            this.f5172mG.f5300d = m96a.f5300d;
            RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid, 1);
        }
        C4379u.m86b();
        m96a.m70h();
        C4393util.LOGI("user:" + str + " CheckPictureAndGetSt Seq:" + m96a.f5303h + " ret=" + m168a, "" + m96a.f5301f);
        return m168a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0277  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int CheckSMSAndGetSt(String str, byte[] bArr, WUserSigInfo wUserSigInfo, byte[][] bArr2, int i) {
        long parseLong;
        int i2;
        Ticket GetUserSigInfoTicket;
        if (str == null || bArr == null || wUserSigInfo == null) {
            return C4393util.E_INPUT;
        }
        if (i == 0) {
            new HelperThread(this, this.mHelperHandler, str, bArr, wUserSigInfo, bArr2, "CheckSMSAndGetSt").RunReq(4);
            return C4393util.E_PENDING;
        }
        if (wUserSigInfo._seqence == 0) {
            wUserSigInfo._seqence = this.mAysncSeq;
        }
        C4379u m96a = this.f5172mG.m96a(wUserSigInfo._seqence);
        wUserSigInfo._seqence = m96a.f5303h;
        async_context m85b = C4379u.m85b(wUserSigInfo._seqence);
        C4393util.LOGI("user:" + str + " CheckSMSAndGetSt Seq:" + m96a.f5303h + " ...", str);
        m96a.f5302g = str;
        m96a.f5301f = 0L;
        m85b._last_err_msg = new ErrMsg();
        if (wUserSigInfo._reserveData == null || wUserSigInfo._reserveData.length <= 3) {
            m96a.f5304i = 0;
        } else {
            m96a.f5304i = C4393util.buf_to_int32(wUserSigInfo._reserveData, 0);
            C4393util.LOGI("MSF SSO SEQ:" + m96a.f5304i, str);
        }
        if (C4393util.check_uin_account(str).booleanValue()) {
            parseLong = Long.parseLong(str);
        } else {
            long m83b = m96a.m83b(str);
            if (m83b == 0) {
                C4393util.LOGI("user:" + str + " have not found uin record.", str);
                i2 = C4393util.E_NO_UIN;
                GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, 128);
                if (GetUserSigInfoTicket == null) {
                    GetUserSigInfoTicket = new Ticket();
                }
                C4379u.f5281al.commit_t2(m96a.f5301f, m96a.f5302g, C4393util.format_ret_code(i2), i2);
                if (i2 == 0) {
                    RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid, 0);
                } else if (GetUserSigInfoTicket._sig != null && GetUserSigInfoTicket._sig.length != 0) {
                    RequestReport(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid);
                }
                if (m96a.f5300d != null && m96a.f5300d.m330a() != 0) {
                    this.f5172mG.f5300d = m96a.f5300d;
                    RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid, 1);
                }
                C4379u.m86b();
                m96a.m70h();
                C4393util.LOGI("user:" + str + " CheckSMSAndGetSt Seq:" + m96a.f5303h + " ret=" + i2, "" + m96a.f5301f);
                return i2;
            }
            parseLong = m83b;
        }
        m96a.f5301f = parseLong;
        wUserSigInfo.uin = parseLong + "";
        int m108a = new C4374p(m96a).m108a(bArr, this.mMiscBitmap, this.mSubSigMap, m85b._sub_appid_list, wUserSigInfo);
        if (m108a != 0) {
            i2 = m108a;
        } else {
            WloginSigInfo m95a = m96a.m95a(parseLong, m85b._appid);
            if (m95a == null) {
                i2 = C4393util.E_NO_KEY;
            } else {
                wUserSigInfo.get_clone(m95a);
                if (m85b._sub_appid_list != null && bArr2 != null && m85b._sub_appid_list.length * 2 == bArr2.length) {
                    int i3 = 0;
                    while (true) {
                        int i4 = i3;
                        if (m85b._sub_appid_list == null || i4 >= m85b._sub_appid_list.length) {
                            break;
                        }
                        WloginSigInfo m95a2 = m96a.m95a(parseLong, m85b._sub_appid_list[i4]);
                        if (m95a2 != null) {
                            bArr2[i4 * 2] = (byte[]) m95a2._userSt_Key.clone();
                            bArr2[(i4 * 2) + 1] = (byte[]) m95a2._userStSig.clone();
                        }
                        i3 = i4 + 1;
                    }
                }
                i2 = 0;
            }
        }
        GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, 128);
        if (GetUserSigInfoTicket == null) {
        }
        C4379u.f5281al.commit_t2(m96a.f5301f, m96a.f5302g, C4393util.format_ret_code(i2), i2);
        if (i2 == 0) {
        }
        if (m96a.f5300d != null) {
            this.f5172mG.f5300d = m96a.f5300d;
            RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid, 1);
        }
        C4379u.m86b();
        m96a.m70h();
        C4393util.LOGI("user:" + str + " CheckSMSAndGetSt Seq:" + m96a.f5303h + " ret=" + i2, "" + m96a.f5301f);
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int CheckSMSVerifyLoginAccount(long j, long j2, String str, WUserSigInfo wUserSigInfo, int i) {
        C4204j.f4971x = false;
        C4204j.f4972y = 0L;
        if (str == null || wUserSigInfo == null) {
            return C4393util.E_INPUT;
        }
        if (i == 0) {
            new HelperThread(this, this.mHelperHandler, j, j2, str, wUserSigInfo, "CheckSMSVerifyLoginAccount").RunReq(12);
            return C4393util.E_PENDING;
        }
        C4379u m96a = this.f5172mG.m96a(0L);
        wUserSigInfo._seqence = m96a.f5303h;
        this.mAysncSeq = m96a.f5303h;
        async_context m85b = C4379u.m85b(m96a.f5303h);
        m96a.f5302g = str;
        C4393util.LOGI("user:" + str + " Seq:" + m96a.f5303h + " CheckSMSVerifyLoginAccount ...", str);
        m85b._login_bitmap = wUserSigInfo._login_bitmap;
        m85b._last_err_msg = new ErrMsg();
        int m58a = new C4381w(m96a).m58a(j, j2, this.mMainSigMap, C4379u.f5272aa, str, this.mMiscBitmap, this.mSubSigMap, (long[]) null, wUserSigInfo);
        if (m58a == 208) {
            m58a = 0;
        }
        C4393util.LOGI("user:" + m96a.f5302g + " Seq:" + m96a.f5303h + " CheckSMSVerifyLoginAccount ret=" + (m58a > 0 ? Integer.toHexString(m58a) : Integer.valueOf(m58a)), str);
        return m58a;
    }

    private WloginSigInfo FindUserSig(long j, long j2) {
        return this.f5172mG.m95a(j, j2);
    }

    private byte[] GetA1ByAccount(String str, long j) {
        long parseLong;
        WloginSigInfo m95a;
        if (str == null) {
            return null;
        }
        if (C4393util.check_uin_account(str).booleanValue()) {
            parseLong = Long.parseLong(str);
        } else {
            parseLong = this.f5172mG.m83b(str);
            if (parseLong == 0) {
                m95a = null;
                if (m95a != null || m95a._en_A1 == null || m95a._en_A1.length <= 0) {
                    C4393util.LOGI("userAccount:" + str + " dwAppid:" + j + " GetA1ByAccount return: null", str);
                    return null;
                }
                C4393util.LOGI("userAccount:" + str + " dwAppid:" + j + " GetA1ByAccount return: not null", str);
                return (byte[]) m95a._en_A1.clone();
            }
        }
        m95a = this.f5172mG.m95a(parseLong, j);
        if (m95a == null) {
        }
        if (m95a != null) {
        }
        C4393util.LOGI("userAccount:" + str + " dwAppid:" + j + " GetA1ByAccount return: null", str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0325  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int GetA1WithA1(String str, long j, long j2, int i, byte[] bArr, long j3, long j4, long j5, byte[] bArr2, byte[] bArr3, WUserSigInfo wUserSigInfo, WFastLoginInfo wFastLoginInfo, int i2) {
        long parseLong;
        int i3;
        Ticket GetUserSigInfoTicket;
        if (str == null || bArr == null || bArr2 == null || bArr3 == null || wUserSigInfo == null || wFastLoginInfo == null) {
            return C4393util.E_INPUT;
        }
        int i4 = i | 192;
        if (i2 == 0) {
            new HelperThread(this, this.mHelperHandler, str, j, j2, i4, bArr, j3, j4, j5, bArr2, bArr3, wUserSigInfo, wFastLoginInfo, "GetA1WithA1").RunReq(6);
            return C4393util.E_PENDING;
        }
        C4379u m96a = this.f5172mG.m96a(0L);
        wUserSigInfo._seqence = m96a.f5303h;
        async_context m85b = C4379u.m85b(m96a.f5303h);
        C4393util.LOGI("wtlogin login with GetA1WithA1:" + str + " dwSrcAppid:" + j + " dwMainSigMap:" + i4 + " dwSubSrcAppid:" + j2 + " dstAppName:" + new String(bArr) + " dwDstAppid:" + j4 + " dwSubDstAppid:" + j5 + " Seq:" + m96a.f5303h + " ...", str);
        int i5 = C4393util.get_saved_network_type(this.mContext);
        C4379u.f5248D = C4393util.get_network_type(this.mContext);
        if (i5 != C4379u.f5248D) {
            C4393util.set_net_retry_type(this.mContext, 0);
            C4393util.save_network_type(this.mContext, C4379u.f5248D);
        }
        C4379u.f5250F = C4393util.get_apn_string(this.mContext).getBytes();
        m96a.f5302g = str;
        m96a.f5301f = 0L;
        m85b._sappid = j;
        m85b._appid = j;
        m85b._sub_appid = j2;
        m85b._main_sigmap = i4;
        m85b._last_err_msg = new ErrMsg();
        C4379u.f5281al.add_t2(new report_t2("login", new String(C4379u.f5247C), System.currentTimeMillis(), j4, j5, null));
        if (C4393util.check_uin_account(str).booleanValue()) {
            parseLong = Long.parseLong(str);
        } else {
            parseLong = m96a.m83b(str);
            if (parseLong == 0) {
                C4393util.LOGI("user:" + str + " have not found uin record.", str);
                i3 = C4393util.E_NO_UIN;
                GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, 128);
                if (GetUserSigInfoTicket == null) {
                    GetUserSigInfoTicket = new Ticket();
                }
                C4379u.f5281al.commit_t2(m96a.f5301f, m96a.f5302g, C4393util.format_ret_code(i3), i3);
                if (i3 == 0) {
                    RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, j, 0);
                } else if (GetUserSigInfoTicket._sig != null && GetUserSigInfoTicket._sig.length != 0) {
                    RequestReport(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, j);
                }
                if (m96a.f5300d != null && m96a.f5300d.m330a() != 0) {
                    this.f5172mG.f5300d = m96a.f5300d;
                    RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, j, 1);
                }
                C4379u.m86b();
                m96a.m70h();
                C4393util.LOGI("wtlogin login with GetA1WithA1:" + str + " dwSrcAppid:" + j + " dwMainSigMap:" + i4 + " dwSubSrcAppid:" + j2 + " dstAppName:" + new String(bArr) + " dwDstAppid:" + j4 + " dwSubDstAppid:" + j5 + " Seq:" + m96a.f5303h + " ret=" + i3, str);
                return i3;
            }
        }
        m96a.f5301f = parseLong;
        m96a.m68j();
        byte[] GetA1ByAccount = GetA1ByAccount(str, j);
        byte[] GetNoPicSigByAccount = GetNoPicSigByAccount(str, j);
        if (GetA1ByAccount == null || GetA1ByAccount.length <= 0) {
            C4393util.LOGI("user:" + str + " have no a1 or pic_sig.", str);
            i3 = C4393util.E_A1_FORMAT;
        } else {
            C4393util.LOGI("user:" + str + " login with A1 exchange A1.", str);
            i3 = new C4371m(m96a).m166a(parseLong, j, j2, 1, i4, GetA1ByAccount, GetNoPicSigByAccount, this.mMiscBitmap, this.mSubSigMap, (long[]) null, bArr, j3, j4, j5, bArr2, bArr3, wUserSigInfo);
            if (i3 == 0) {
                WloginSigInfo m95a = m96a.m95a(parseLong, j);
                if (m95a == null) {
                    i3 = C4393util.E_NO_KEY;
                } else {
                    wUserSigInfo.get_clone(m95a);
                    wFastLoginInfo.get_clone(m96a.f5305j);
                }
            }
        }
        GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, 128);
        if (GetUserSigInfoTicket == null) {
        }
        C4379u.f5281al.commit_t2(m96a.f5301f, m96a.f5302g, C4393util.format_ret_code(i3), i3);
        if (i3 == 0) {
        }
        if (m96a.f5300d != null) {
            this.f5172mG.f5300d = m96a.f5300d;
            RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, j, 1);
        }
        C4379u.m86b();
        m96a.m70h();
        C4393util.LOGI("wtlogin login with GetA1WithA1:" + str + " dwSrcAppid:" + j + " dwMainSigMap:" + i4 + " dwSubSrcAppid:" + j2 + " dstAppName:" + new String(bArr) + " dwDstAppid:" + j4 + " dwSubDstAppid:" + j5 + " Seq:" + m96a.f5303h + " ret=" + i3, str);
        return i3;
    }

    private int GetFastLoginInfo(byte[] bArr, async_context async_contextVar) {
        if (bArr == null || bArr.length <= 3 || async_contextVar == null) {
            return C4393util.E_INPUT;
        }
        C4283i c4283i = new C4283i();
        C4289o c4289o = new C4289o();
        C4236bd c4236bd = new C4236bd();
        C4221ap c4221ap = new C4221ap();
        int length = bArr.length;
        if (c4283i.m316c(bArr, 3, length) < 0) {
            C4393util.LOGI("fast login info no tgtgt data", "");
            return C4393util.E_INPUT;
        } else if (c4289o.m316c(bArr, 3, length) < 0) {
            C4393util.LOGI("fast login info no gtkey data", "");
            return C4393util.E_INPUT;
        } else if (c4236bd.m316c(bArr, 3, length) < 0) {
            C4393util.LOGI("fast login info no nopicsig data", "");
            return C4393util.E_INPUT;
        } else {
            if (c4221ap.m316c(bArr, 3, length) > 0) {
                byte[] c = c4221ap.m318c();
                byte[] bArr2 = C4379u.f5245A;
                C4393util.LOGD("new guid:" + C4393util.buf_to_string(c) + " old guid:" + C4393util.buf_to_string(bArr2));
                if (!Arrays.equals(c, bArr2)) {
                    C4393util.LOGI("fast login info guid not equal", "");
                    C4393util.saveGuidToFile(C4379u.f5288t, c);
                    C4379u.f5245A = (byte[]) c.clone();
                    C4379u.f5246B = (byte[]) c.clone();
                }
            }
            async_contextVar._tmp_pwd = oicq_request.m120b(c4283i.m318c(), c4289o.m318c());
            async_contextVar._tmp_no_pic_sig = c4236bd.m318c();
            return 0;
        }
    }

    public static WFastLoginInfo GetFastLoginUrl(String str, long j) {
        String[] split;
        if (str != null) {
            try {
                if (str.length() != 0) {
                    C4393util.LOGI("packageName:" + str + " uin:" + j, "");
                    String str2 = j == 1689053018 ? "http://imgcache.qq.com/wtlogin/test" : "http://imgcache.qq.com/wtlogin/app";
                    for (int i = 0; i < str.split("\\.").length; i++) {
                        str2 = (str2 + "/") + split[i];
                    }
                    WFastLoginInfo wFastLoginInfo = new WFastLoginInfo();
                    wFastLoginInfo.iconUrl = str2 + "/icon.png";
                    wFastLoginInfo.adUrl = str2 + "/ad_img.png";
                    wFastLoginInfo.profileUrl = str2 + "/profile.js";
                    return wFastLoginInfo;
                }
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }

    private byte[] GetNoPicSigByAccount(String str, long j) {
        long parseLong;
        WloginSigInfo m95a;
        if (str == null) {
            return null;
        }
        if (C4393util.check_uin_account(str).booleanValue()) {
            parseLong = Long.parseLong(str);
        } else {
            parseLong = this.f5172mG.m83b(str);
            if (parseLong == 0) {
                m95a = null;
                if (m95a != null || m95a._noPicSig == null || m95a._noPicSig.length <= 0) {
                    C4393util.LOGI("userAccount:" + str + " dwAppid:" + j + " GetNoPicSigByAccount return: null", str);
                    return null;
                }
                C4393util.LOGI("userAccount:" + str + " dwAppid:" + j + " GetNoPicSigByAccount return: not null", str);
                return (byte[]) m95a._noPicSig.clone();
            }
        }
        m95a = this.f5172mG.m95a(parseLong, j);
        if (m95a == null) {
        }
        if (m95a != null) {
        }
        C4393util.LOGI("userAccount:" + str + " dwAppid:" + j + " GetNoPicSigByAccount return: null", str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0611  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x024b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int GetStWithPasswd(String str, long j, int i, long j2, long[] jArr, boolean z, String str2, WUserSigInfo wUserSigInfo, byte[][] bArr, boolean z2, int i2) {
        C4379u c4379u;
        long parseLong;
        int i3;
        boolean z3;
        long j3;
        boolean z4;
        long j4;
        Ticket GetUserSigInfoTicket;
        if (str == null || wUserSigInfo == null) {
            return C4393util.E_INPUT;
        }
        int i4 = i | 192;
        if (i2 == 0) {
            new HelperThread(this, this.mHelperHandler, str, j, i4, j2, jArr, z, str2, wUserSigInfo, bArr, z2, "GetStWithPasswd").RunReq(0);
            return C4393util.E_PENDING;
        }
        boolean z5 = true;
        if (!z2 || C4204j.f4971x) {
            C4379u m96a = this.f5172mG.m96a(0L);
            wUserSigInfo._seqence = m96a.f5303h;
            this.mAysncSeq = m96a.f5303h;
            c4379u = m96a;
        } else {
            if (wUserSigInfo._seqence == 0) {
                wUserSigInfo._seqence = this.mAysncSeq;
            }
            C4379u m96a2 = this.f5172mG.m96a(wUserSigInfo._seqence);
            wUserSigInfo._seqence = m96a2.f5303h;
            c4379u = m96a2;
        }
        async_context m85b = C4379u.m85b(c4379u.f5303h);
        C4393util.LOGI("start GetStWithPasswd:user:" + str + " dwAppid:" + j + " dwMainSigMap:0x" + Integer.toHexString(i4) + " dwSubAppid:" + j2 + " Seq:" + c4379u.f5303h + " ...", str);
        m85b._isSmslogin = z2;
        if (z2 && str2.length() == 0) {
            str2 = m85b._mpasswd;
        }
        C4204j.f4971x = false;
        C4204j.f4973z = "";
        if (str2 != null && str2.length() > 16) {
            str2 = str2.substring(0, 16);
        }
        int i5 = C4393util.get_saved_network_type(this.mContext);
        C4379u.f5248D = C4393util.get_network_type(this.mContext);
        if (i5 != C4379u.f5248D) {
            C4393util.set_net_retry_type(this.mContext, 0);
            C4393util.save_network_type(this.mContext, C4379u.f5248D);
        }
        C4379u.f5250F = C4393util.get_apn_string(this.mContext).getBytes();
        c4379u.f5302g = str;
        c4379u.f5301f = 0L;
        m85b._sappid = j;
        m85b._appid = j;
        m85b._sub_appid_list = null;
        m85b._sub_appid = j2;
        m85b._main_sigmap = i4;
        m85b._login_bitmap = wUserSigInfo._login_bitmap;
        m85b._last_err_msg = new ErrMsg();
        if (jArr != null) {
            m85b._sub_appid_list = (long[]) jArr.clone();
        }
        if (wUserSigInfo._reserveData == null || wUserSigInfo._reserveData.length <= 3) {
            c4379u.f5304i = 0;
        } else {
            c4379u.f5304i = C4393util.buf_to_int32(wUserSigInfo._reserveData, 0);
            C4393util.LOGI("MSF SSO SEQ:" + c4379u.f5304i, str);
        }
        C4379u.f5281al.add_t2(new report_t2("login", new String(C4379u.f5247C), System.currentTimeMillis(), j, j2, jArr));
        if (C4393util.check_uin_account(str).booleanValue()) {
            parseLong = Long.parseLong(str);
        } else {
            parseLong = c4379u.m83b(str);
            if (parseLong == 0) {
                z5 = false;
            }
        }
        if (str2 == null || str2.length() <= 0) {
            if (wUserSigInfo._fastLoginBuf != null && wUserSigInfo._fastLoginBuf.length > 0) {
                C4393util.LOGI("GetFastLoginInfo ...", str);
                if (GetFastLoginInfo(wUserSigInfo._fastLoginBuf, m85b) < 0) {
                    C4393util.LOGI("GetFastLoginInfo failed", str);
                    i3 = C4393util.E_INPUT;
                    GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, 128);
                    if (GetUserSigInfoTicket == null) {
                        GetUserSigInfoTicket = new Ticket();
                    }
                    C4379u.f5281al.commit_t2(c4379u.f5301f, c4379u.f5302g, C4393util.format_ret_code(i3), i3);
                    if (i3 != 0) {
                        if (GetUserSigInfoTicket._sig != null && GetUserSigInfoTicket._sig.length != 0) {
                            RequestReport(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, c4379u.f5301f, m85b._appid);
                        }
                    } else if (i3 != 2 && i3 != 160) {
                        RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, c4379u.f5301f, m85b._appid, 0);
                    }
                    if (c4379u.f5300d != null && c4379u.f5300d.m330a() != 0) {
                        this.f5172mG.f5300d = c4379u.f5300d;
                        RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, c4379u.f5301f, m85b._appid, 1);
                    }
                    C4379u.m86b();
                    c4379u.m70h();
                    C4393util.LOGI("end GetStWithPasswd:user:" + str + " dwAppid:" + j + " dwMainSigMap:0x" + Integer.toHexString(i4) + " dwSubAppid:" + j2 + " Seq:" + c4379u.f5303h + " ret=" + i3, "" + c4379u.f5301f);
                    return i3;
                }
                if (str.matches("([0-9]{5,10})@qq\\.com")) {
                    j4 = Long.valueOf(str.replaceAll("([0-9]{5,10})@qq\\.com", "$1")).longValue();
                    z4 = true;
                    c4379u.m89a(str, Long.valueOf(j4));
                } else {
                    long j5 = parseLong;
                    z4 = z5;
                    j4 = j5;
                }
                z5 = z4;
                parseLong = j4;
            } else if (C4303c.f5094q == null || C4303c.f5094q.length <= 0) {
                m85b._tmp_pwd = GetA1ByAccount(str, j);
                m85b._tmp_no_pic_sig = GetNoPicSigByAccount(str, j);
            } else {
                m85b._tmp_pwd = C4303c.f5094q;
                m85b._tmp_no_pic_sig = C4303c.f5095r;
                C4303c.f5094q = null;
                C4303c.f5095r = null;
            }
            if (m85b._tmp_pwd == null || m85b._tmp_pwd.length < 16) {
                i3 = C4393util.E_A1_FORMAT;
                GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, 128);
                if (GetUserSigInfoTicket == null) {
                }
                C4379u.f5281al.commit_t2(c4379u.f5301f, c4379u.f5302g, C4393util.format_ret_code(i3), i3);
                if (i3 != 0) {
                }
                if (c4379u.f5300d != null) {
                    this.f5172mG.f5300d = c4379u.f5300d;
                    RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, c4379u.f5301f, m85b._appid, 1);
                }
                C4379u.m86b();
                c4379u.m70h();
                C4393util.LOGI("end GetStWithPasswd:user:" + str + " dwAppid:" + j + " dwMainSigMap:0x" + Integer.toHexString(i4) + " dwSubAppid:" + j2 + " Seq:" + c4379u.f5303h + " ret=" + i3, "" + c4379u.f5301f);
                return i3;
            }
            m85b._tmp_pwd_type = 1;
            long j6 = parseLong;
            z3 = z5;
            j3 = j6;
        } else {
            if (z) {
                try {
                    m85b._tmp_pwd = (byte[]) str2.getBytes("ISO-8859-1").clone();
                } catch (Exception e) {
                    i3 = C4393util.E_ENCODING;
                }
            } else {
                m85b._tmp_pwd = MD5.toMD5Byte(str2);
            }
            m85b._tmp_pwd_type = 0;
            long j7 = parseLong;
            z3 = z5;
            j3 = j7;
        }
        if (!z3) {
            if (str.length() > C4393util.MAX_NAME_LEN) {
                i3 = C4393util.E_NAME_INVALID;
            } else {
                i3 = new C4378t(c4379u).m99a(j, j2, 1, i4, str.getBytes(), C4379u.f5293y, 0, 0, 1, this.mMiscBitmap, this.mSubSigMap, jArr, wUserSigInfo);
                if (i3 == 0) {
                    j3 = c4379u.m83b(str);
                    if (m85b._msalt == 0 && j3 == 0) {
                        i3 = C4393util.E_NO_UIN;
                    }
                }
            }
            GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, 128);
            if (GetUserSigInfoTicket == null) {
            }
            C4379u.f5281al.commit_t2(c4379u.f5301f, c4379u.f5302g, C4393util.format_ret_code(i3), i3);
            if (i3 != 0) {
            }
            if (c4379u.f5300d != null) {
            }
            C4379u.m86b();
            c4379u.m70h();
            C4393util.LOGI("end GetStWithPasswd:user:" + str + " dwAppid:" + j + " dwMainSigMap:0x" + Integer.toHexString(i4) + " dwSubAppid:" + j2 + " Seq:" + c4379u.f5303h + " ret=" + i3, "" + c4379u.f5301f);
            return i3;
        }
        long j8 = j3;
        if (C4204j.f4972y != 0) {
            m85b._msalt = C4204j.f4972y;
            C4204j.f4972y = 0L;
        }
        c4379u.f5301f = j8;
        wUserSigInfo.uin = "" + j8;
        byte[] bArr2 = (wUserSigInfo._in_ksid == null || wUserSigInfo._in_ksid.length <= 0) ? C4379u.f5272aa : (byte[]) wUserSigInfo._in_ksid.clone();
        if (m85b._tmp_pwd_type != 0) {
            C4393util.LOGI("user:" + str + " login with saved A1.", "" + c4379u.f5301f);
            C4370l c4370l = new C4370l(c4379u, this.mContext);
            c4370l.m109g();
            i3 = c4370l.m167a(j, j2, c4379u.f5301f, 0, C4379u.f5275ad, m85b._tmp_pwd, m85b._tmp_no_pic_sig, this.mMiscBitmap, this.mSubSigMap, jArr, i4, j2, C4379u.f5293y, 0, 0, 1, bArr2, wUserSigInfo);
        } else {
            C4393util.LOGI("user:" + str + " login with input password.", "" + c4379u.f5301f);
            byte[] bArr3 = new byte[4];
            C4393util.int64_to_buf32(bArr3, 0, (System.currentTimeMillis() / 1000) + C4379u.f5274ac);
            int i6 = z2 ? 3 : 1;
            C4370l c4370l2 = new C4370l(c4379u, this.mContext);
            c4370l2.m109g();
            i3 = c4370l2.m168a(j, j2, c4379u.f5301f, 0, C4379u.f5275ad, bArr3, m85b._tmp_pwd, i6, this.mMiscBitmap, this.mSubSigMap, jArr, i4, j2, C4379u.f5293y, 0, 0, 1, bArr2, wUserSigInfo);
        }
        if (i3 == 204) {
            i3 = new C4375q(c4379u).m106a(this.mMiscBitmap, this.mSubSigMap, jArr, wUserSigInfo);
        }
        if (i3 == 0 || i3 == 160) {
            if (j8 == 0) {
                j8 = c4379u.m83b(str);
                c4379u.f5301f = j8;
                wUserSigInfo.uin = "" + j8;
            }
            if (i3 != 160) {
                WloginSigInfo m95a = c4379u.m95a(j8, j);
                if (m95a == null) {
                    i3 = C4393util.E_NO_KEY;
                } else {
                    wUserSigInfo.get_clone(m95a);
                    if (jArr != null && bArr != null && jArr.length * 2 == bArr.length) {
                        for (int i7 = 0; jArr != null && i7 < jArr.length; i7++) {
                            WloginSigInfo m95a2 = c4379u.m95a(j8, jArr[i7]);
                            if (m95a2 != null) {
                                bArr[i7 * 2] = (byte[]) m95a2._userSt_Key.clone();
                                bArr[(i7 * 2) + 1] = (byte[]) m95a2._userStSig.clone();
                            }
                        }
                    }
                }
            }
        }
        GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, 128);
        if (GetUserSigInfoTicket == null) {
        }
        C4379u.f5281al.commit_t2(c4379u.f5301f, c4379u.f5302g, C4393util.format_ret_code(i3), i3);
        if (i3 != 0) {
        }
        if (c4379u.f5300d != null) {
        }
        C4379u.m86b();
        c4379u.m70h();
        C4393util.LOGI("end GetStWithPasswd:user:" + str + " dwAppid:" + j + " dwMainSigMap:0x" + Integer.toHexString(i4) + " dwSubAppid:" + j2 + " Seq:" + c4379u.f5303h + " ret=" + i3, "" + c4379u.f5301f);
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0638  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x039a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int GetStWithoutPasswd(String str, long j, long j2, long j3, int i, long j4, long[] jArr, WUserSigInfo wUserSigInfo, byte[][] bArr, byte[][] bArr2, int i2, WtTicketPromise wtTicketPromise) {
        long parseLong;
        int i3;
        int m164a;
        Ticket GetUserSigInfoTicket;
        if (str == null || wUserSigInfo == null) {
            return C4393util.E_INPUT;
        }
        int i4 = i | 192;
        if (2 == j4) {
            i4 &= -33554433;
        }
        if (i2 == 0) {
            new HelperThread(this, this.mHelperHandler, wtTicketPromise, str, j, j2, j3, i4, j4, jArr, wUserSigInfo, bArr, bArr2, "GetStWithoutPasswd").RunReq(5);
            return C4393util.E_PENDING;
        }
        C4379u m96a = this.f5172mG.m96a(0L);
        wUserSigInfo._seqence = m96a.f5303h;
        async_context m85b = C4379u.m85b(m96a.f5303h);
        C4393util.LOGI("start GetStWithoutPasswd:user:" + str + " dwSrcAppid:" + j + " dwDstAppid:" + j2 + " dwDstAppPri:" + j3 + " dwMainSigMap:0x" + Integer.toHexString(i4) + " dwSubDstAppid:" + j4 + " Seq:" + m96a.f5303h, str);
        int i5 = C4393util.get_saved_network_type(this.mContext);
        C4379u.f5248D = C4393util.get_network_type(this.mContext);
        if (i5 != C4379u.f5248D) {
            C4393util.set_net_retry_type(this.mContext, 0);
            C4393util.save_network_type(this.mContext, C4379u.f5248D);
        }
        C4379u.f5250F = C4393util.get_apn_string(this.mContext).getBytes();
        m96a.f5302g = str;
        m96a.f5301f = 0L;
        m85b._sappid = j;
        m85b._appid = j2;
        m85b._sub_appid = j4;
        m85b._main_sigmap = i4;
        m85b._last_err_msg = new ErrMsg();
        if (jArr != null) {
            m85b._sub_appid_list = (long[]) jArr.clone();
        }
        if (wUserSigInfo._reserveData == null || wUserSigInfo._reserveData.length <= 3) {
            m96a.f5304i = 0;
        } else {
            m96a.f5304i = C4393util.buf_to_int32(wUserSigInfo._reserveData, 0);
            C4393util.LOGI("MSF SSO SEQ:" + m96a.f5304i, str);
        }
        C4379u.f5281al.add_t2(new report_t2("exchg", new String(C4379u.f5247C), System.currentTimeMillis(), j2, j4, jArr));
        if (C4393util.check_uin_account(str).booleanValue()) {
            parseLong = Long.parseLong(str);
        } else {
            parseLong = m96a.m83b(str);
            if (parseLong == 0) {
                C4393util.LOGI("user:" + str + " have not found uin record.", str);
                i3 = C4393util.E_NO_UIN;
                GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, 128);
                if (GetUserSigInfoTicket == null) {
                    GetUserSigInfoTicket = new Ticket();
                }
                C4379u.f5281al.commit_t2(m96a.f5301f, m96a.f5302g, C4393util.format_ret_code(i3), i3);
                if (i3 == 0) {
                    RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid, 0);
                } else if (GetUserSigInfoTicket._sig != null && GetUserSigInfoTicket._sig.length != 0) {
                    RequestReport(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid);
                }
                if (m96a.f5300d != null && m96a.f5300d.m330a() != 0) {
                    this.f5172mG.f5300d = m96a.f5300d;
                    RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid, 1);
                }
                C4379u.m86b();
                m96a.m70h();
                C4393util.LOGI("end GetStWithoutPasswd:user:" + str + " dwSrcAppid:" + j + " dwDstAppid:" + j2 + " dwDstAppPri:" + j3 + " dwMainSigMap:0x" + Integer.toHexString(i4) + " dwSubDstAppid:" + j4 + " Seq:" + m96a.f5303h + " ret=" + i3, "" + m96a.f5301f);
                return i3;
            }
        }
        m96a.f5301f = parseLong;
        wUserSigInfo.uin = "" + parseLong;
        if (bArr2 != null && bArr2.length == 4 && bArr2[0] != null && bArr2[0].length == 1 && bArr2[0][0] == 1) {
            C4393util.LOGI("user:" + str + " exchange A2 from A2/D2/KEY.", "" + m96a.f5301f);
            if (bArr2[1] == null || bArr2[1].length == 0 || bArr2[2] == null || bArr2[2].length == 0 || bArr2[3] == null || bArr2[3].length == 0) {
                i3 = C4393util.E_NO_KEY;
            } else {
                m96a.f5298b = MD5.toMD5Byte(bArr2[3]);
                m164a = new C4372n(m96a).m164a(parseLong, j2, j4, 1, i4, bArr2[1], this.mMiscBitmap, this.mSubSigMap, jArr, bArr2[2], wUserSigInfo);
                if (m164a == 0) {
                }
                i3 = m164a;
            }
        } else if (bArr2 != null && bArr2.length == 3 && bArr2[0] != null && bArr2[0].length == 1 && bArr2[0][0] == 2) {
            C4393util.LOGI("user:" + str + " exchange A2 from A2/A2KEY.", "" + m96a.f5301f);
            if (bArr2[1] == null || bArr2[1].length == 0 || bArr2[2] == null || bArr2[2].length == 0) {
                i3 = C4393util.E_NO_KEY;
            } else {
                m96a.f5298b = bArr2[2];
                m164a = new C4372n(m96a).m164a(parseLong, j2, j4, 1, i4, bArr2[1], this.mMiscBitmap, this.mSubSigMap, jArr, null, wUserSigInfo);
                if (m164a == 0) {
                }
                i3 = m164a;
            }
        } else {
            m96a.m68j();
            byte[] GetA1ByAccount = GetA1ByAccount(String.valueOf(m96a.f5301f), j);
            byte[] GetNoPicSigByAccount = GetNoPicSigByAccount(String.valueOf(m96a.f5301f), j);
            if (GetA1ByAccount == null || GetA1ByAccount.length <= 0 || GetNoPicSigByAccount == null || GetNoPicSigByAccount.length <= 0) {
                C4393util.LOGI("user:" + str + " exchange A2 from A2.", "" + m96a.f5301f);
                WloginSigInfo m95a = m96a.m95a(parseLong, j);
                if (m95a == null || m95a._TGT == null || m95a._TGT.length == 0 || m95a.iSExpireA2(C4379u.m72f())) {
                    i3 = C4393util.E_NO_KEY;
                } else {
                    C4393util.LOGI("user:" + str + " exchange A2 from A2 without Priority.", "" + m96a.f5301f);
                    printTicket(m95a);
                    m96a.f5298b = m95a._TGTKey;
                    m164a = new C4372n(m96a).m164a(parseLong, j2, j4, 1, i4, m95a._TGT, this.mMiscBitmap, this.mSubSigMap, jArr, null, wUserSigInfo);
                }
            } else {
                C4393util.LOGI("user:" + str + " exchange A2 from A1.", "" + m96a.f5301f);
                m85b._tmp_pwd = GetA1ByAccount;
                m85b._tmp_no_pic_sig = GetNoPicSigByAccount;
                byte[] bArr3 = (wUserSigInfo._in_ksid == null || wUserSigInfo._in_ksid.length <= 0) ? C4379u.f5272aa : (byte[]) wUserSigInfo._in_ksid.clone();
                C4384z c4384z = new C4384z(m96a);
                WloginSigInfo FindUserSig = FindUserSig(parseLong, j);
                if (FindUserSig != null) {
                    c4384z.m140a(FindUserSig);
                }
                int m53a = c4384z.m53a(j2, 1, m96a.f5301f, 0, C4379u.f5275ad, GetA1ByAccount, GetNoPicSigByAccount, this.mMiscBitmap, this.mSubSigMap, jArr, i4, j4, 1, C4379u.f5293y, 0, 0, 1, bArr3, j, wUserSigInfo);
                if (m53a == 204) {
                    m53a = new C4375q(m96a).m106a(this.mMiscBitmap, this.mSubSigMap, jArr, wUserSigInfo);
                }
                m164a = m53a;
            }
            if (m164a == 0) {
                WloginSigInfo m95a2 = m96a.m95a(parseLong, j2);
                if (m95a2 == null) {
                    i3 = C4393util.E_NO_KEY;
                } else {
                    wUserSigInfo.get_clone(m95a2);
                    if (jArr != null && bArr != null && jArr.length * 2 == bArr.length) {
                        int i6 = 0;
                        while (true) {
                            int i7 = i6;
                            if (i7 >= jArr.length) {
                                break;
                            }
                            WloginSigInfo m95a3 = m96a.m95a(parseLong, jArr[i7]);
                            if (m95a3 != null) {
                                bArr[i7 * 2] = (byte[]) m95a3._userSt_Key.clone();
                                bArr[(i7 * 2) + 1] = (byte[]) m95a3._userStSig.clone();
                            }
                            i6 = i7 + 1;
                        }
                    }
                }
            }
            i3 = m164a;
        }
        GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, 128);
        if (GetUserSigInfoTicket == null) {
        }
        C4379u.f5281al.commit_t2(m96a.f5301f, m96a.f5302g, C4393util.format_ret_code(i3), i3);
        if (i3 == 0) {
        }
        if (m96a.f5300d != null) {
            this.f5172mG.f5300d = m96a.f5300d;
            RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid, 1);
        }
        C4379u.m86b();
        m96a.m70h();
        C4393util.LOGI("end GetStWithoutPasswd:user:" + str + " dwSrcAppid:" + j + " dwDstAppid:" + j2 + " dwDstAppPri:" + j3 + " dwMainSigMap:0x" + Integer.toHexString(i4) + " dwSubDstAppid:" + j4 + " Seq:" + m96a.f5303h + " ret=" + i3, "" + m96a.f5301f);
        return i3;
    }

    private int GetStWithoutPasswd(String str, long j, long j2, long j3, int i, WUserSigInfo wUserSigInfo, WtTicketPromise wtTicketPromise) {
        return GetStWithoutPasswd(str, j, j2, -1L, i, j3, null, wUserSigInfo, null, null, 0, wtTicketPromise);
    }

    public static byte[] GetTicketSig(WUserSigInfo wUserSigInfo, int i) {
        Ticket GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, i);
        return GetUserSigInfoTicket != null ? GetUserSigInfoTicket._sig : new byte[0];
    }

    public static byte[] GetTicketSigKey(WUserSigInfo wUserSigInfo, int i) {
        if (i == 64 || i == 262144 || i == 128 || i == 16384 || i == 32768 || i == 16777216) {
            Ticket GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, i);
            return GetUserSigInfoTicket != null ? GetUserSigInfoTicket._sig_key : new byte[0];
        }
        throw null;
    }

    public static Ticket GetUserSigInfoTicket(WUserSigInfo wUserSigInfo, int i) {
        if (i == 4194304) {
            C4393util.LOGI("get lhsig", "");
            return new Ticket((int) SigType.WLOGIN_LHSIG, WloginSigInfo._LHSig, (byte[]) null, C4379u.m72f(), 0L);
        } else if (i == 67108864) {
            C4393util.LOGI("get qrpushsig", "");
            return new Ticket((int) SigType.WLOGIN_QRPUSH, WloginSigInfo._QRPUSHSig, (byte[]) null, C4379u.m72f(), 0L);
        } else if (wUserSigInfo == null) {
            C4393util.LOGI("userInfo is null " + Integer.toHexString(i), "");
            return null;
        } else if (wUserSigInfo._tickets == null) {
            C4393util.LOGI("tickets is null " + Integer.toHexString(i), wUserSigInfo.uin);
            return null;
        } else {
            C4393util.LOGI("GetUserSigInfoTicket ticket type:0x" + Integer.toHexString(i), "");
            if (wUserSigInfo._tickets != null) {
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 >= wUserSigInfo._tickets.size()) {
                        break;
                    }
                    Ticket ticket = wUserSigInfo._tickets.get(i3);
                    if (ticket._type == i) {
                        C4393util.LOGI("GetUserSigInfoTicket type:0x" + Integer.toHexString(i) + " sig:" + C4393util.buf_len(ticket._sig) + " key:" + C4393util.buf_len(ticket._sig_key) + " create time:" + ticket._create_time + " expire time:" + ticket._expire_time, "");
                        return ticket;
                    }
                    i2 = i3 + 1;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OnDeviceLockRequest(String str, long j, long j2, TransReqContext transReqContext, WUserSigInfo wUserSigInfo, int i) {
        DevlockRst devlockRst = DevlockBase.rst;
        devlockRst.commRsp = new TLV_CommRsp();
        DevlockInfo devlockInfo = new DevlockInfo();
        ErrMsg errMsg = new ErrMsg(0, "", "", "");
        if (i != 0) {
            C4393util.LOGI("OnDeviceLockRequest ret:" + i, str);
            errMsg.setMessage(C4393util.get_error_msg(i));
            errMsg.setTitle(InternationMsg.m49a(InternationMsg.MSG_TYPE.MSG_5));
        }
        switch (transReqContext.get_subcmd()) {
            case 5:
                if (i == 0) {
                    i = new C4307a().parse_rsp(transReqContext.get_body());
                    C4393util.LOGI("CheckDevLockStatus ret:" + i, str);
                    if (i != -1009) {
                        tlvCommRsp2ErrMsg(devlockRst.commRsp, errMsg);
                        if (devlockRst.devSetupInfo != null && devlockRst.devSetupInfo.get_data_len() > 0) {
                            devlockInfo.DevSetup = devlockRst.devSetupInfo.f5116a;
                            devlockInfo.AllowSet = devlockRst.devSetupInfo.f5117b;
                            if (devlockRst.devGuideInfo == null || devlockRst.devGuideInfo.get_data_len() <= 0) {
                                devlockInfo.ProtectIntro = new String(devlockRst.devSetupInfo.f5119d);
                            } else {
                                devlockInfo.ProtectIntro = new String(devlockRst.devGuideInfo.f5115a);
                            }
                            devlockInfo.WarningInfo = new String(devlockRst.devSetupInfo.f5122g);
                            devlockInfo.WarningTitle = new String(devlockRst.devSetupInfo.f5120e);
                            devlockInfo.WarningMsg = new String(devlockRst.devSetupInfo.f5121f);
                            devlockInfo.WarningInfoType = devlockRst.devSetupInfo.f5118c;
                        }
                        if (devlockRst.mbMobileInfo != null && devlockRst.mbMobileInfo.get_data_len() > 0) {
                            devlockInfo.CountryCode = new String(devlockRst.mbMobileInfo.f5127a);
                            devlockInfo.Mobile = new String(devlockRst.mbMobileInfo.f5128b);
                            devlockInfo.MbItemSmsCodeStatus = devlockRst.mbMobileInfo.f5129c;
                            devlockInfo.AvailableMsgCount = devlockRst.mbMobileInfo.f5130d;
                            devlockInfo.TimeLimit = devlockRst.mbMobileInfo.f5131e;
                        }
                        if (devlockRst.mbGuideInfo != null && devlockRst.mbGuideInfo.get_data_len() > 0) {
                            devlockInfo.MbGuideType = devlockRst.mbGuideInfo.f5125c;
                            devlockInfo.MbGuideInfoType = devlockRst.mbGuideInfo.f5126d;
                            devlockInfo.MbGuideInfo = new String(devlockRst.mbGuideInfo.f5124b);
                            devlockInfo.MbGuideMsg = new String(devlockRst.mbGuideInfo.f5123a);
                        }
                        if (devlockRst.transferInfo != null && devlockRst.transferInfo.get_data_len() > 0) {
                            devlockInfo.TransferInfo = devlockRst.transferInfo.get_data();
                        }
                    }
                }
                if (this.mListener != null) {
                    this.mListener.OnCheckDevLockStatus(wUserSigInfo, devlockInfo, i, errMsg);
                    return;
                }
                return;
            case 6:
            case 9:
            case 10:
            case 11:
            default:
                return;
            case 7:
                if (i == 0) {
                    i = new C4310d().parse_rsp(transReqContext.get_body());
                    C4393util.LOGI("AskDevLockSms ret:" + i, str);
                    if (i != -1009) {
                        tlvCommRsp2ErrMsg(devlockRst.commRsp, errMsg);
                        if (devlockRst.smsInfo != null) {
                            devlockInfo.AvailableMsgCount = devlockRst.smsInfo.f5133a;
                            devlockInfo.TimeLimit = devlockRst.smsInfo.f5134b;
                        }
                    }
                }
                if (this.mListener != null) {
                    this.mListener.OnAskDevLockSms(wUserSigInfo, devlockInfo, i, errMsg);
                    return;
                }
                return;
            case 8:
                if (i == 0) {
                    i = new C4312f().parse_rsp(transReqContext.get_body());
                    C4393util.LOGI("CheckDevLockSms ret:" + i, str);
                    if (i != -1009) {
                        tlvCommRsp2ErrMsg(devlockRst.commRsp, errMsg);
                    }
                }
                if (this.mListener != null) {
                    this.mListener.OnCheckDevLockSms(wUserSigInfo, i, errMsg);
                    return;
                }
                return;
            case 12:
                if (i == 0) {
                    i = new C4308b().parse_rsp(transReqContext.get_body());
                    C4393util.LOGI("CloseDevLock ret:" + i, str);
                    if (i != -1009) {
                        tlvCommRsp2ErrMsg(devlockRst.commRsp, errMsg);
                        try {
                            this.f5172mG.m84b(!C4393util.check_uin_account(str).booleanValue() ? this.f5172mG.m83b(str) : Long.parseLong(str), j);
                            for (int i2 = 0; i2 < wUserSigInfo._tickets.size(); i2++) {
                                if (wUserSigInfo._tickets.get(i2)._type == 33554432) {
                                    wUserSigInfo._tickets.remove(i2);
                                }
                            }
                        } catch (Exception e) {
                            C4393util.printException(e);
                        }
                    }
                }
                if (this.mListener != null) {
                    this.mListener.OnCloseDevLock(wUserSigInfo, i, errMsg);
                    return;
                }
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OnRequestCode2d(String str, long j, long j2, TransReqContext transReqContext, WUserSigInfo wUserSigInfo, int i) {
        int i2;
        int i3;
        if (this.mListener == null) {
            return;
        }
        C4303c c4303c = C4302b._status;
        if (i != 0) {
            C4393util.LOGI("OnRequestCode2d ret:" + i, str);
        }
        switch (transReqContext.get_subcmd()) {
            case 18:
                if (i == 0) {
                    i2 = new C4304d().m236a(transReqContext.get_body());
                    C4393util.LOGI("QueryCodeResult ret:" + c4303c.f5098b, str);
                } else {
                    i2 = i;
                }
                this.mListener.OnQueryCodeResult(c4303c.f5097a, c4303c.f5101e, c4303c.f5099c, wUserSigInfo, c4303c.f5102f, i2);
                return;
            case 19:
                if (i != 0) {
                    this.mListener.OnVerifyCode(str, c4303c.f5100d, c4303c.f5099c, c4303c.f5101e, wUserSigInfo, c4303c.f5102f, i);
                    return;
                }
                c4303c.f5098b = new C4305e().m234a(transReqContext.get_body());
                C4393util.LOGI("VerifyCode ret:" + c4303c.f5098b, str);
                if (c4303c.f5098b == 0 && c4303c.f5103g != null && c4303c.f5103g.length > 0) {
                    this.f5172mG.m93a(c4303c.f5097a, j, c4303c.f5103g);
                }
                this.mListener.OnVerifyCode(str, c4303c.f5100d, c4303c.f5099c, c4303c.f5101e, wUserSigInfo, c4303c.f5102f, c4303c.f5098b);
                return;
            case 20:
                if (i != 0) {
                    this.mListener.OnCloseCode(str, c4303c.f5100d, c4303c.f5099c, wUserSigInfo, c4303c.f5102f, i);
                    return;
                }
                c4303c.f5098b = new C4301a().m238a(transReqContext.get_body(), j, C4379u.f5288t);
                C4393util.LOGI("CloseCode ret:" + c4303c.f5098b, str);
                C4303c.f5096s = false;
                this.mListener.OnCloseCode(str, c4303c.f5100d, c4303c.f5099c, wUserSigInfo, c4303c.f5102f, c4303c.f5098b);
                return;
            case C3298m.f3077fG /* 49 */:
                if (i == 0) {
                    i3 = new fetch_code().get_response(transReqContext.get_body());
                    C4393util.LOGI("FetchCodeSig ret:" + c4303c.f5098b, str);
                } else {
                    i3 = i;
                }
                this.mListener.OnFetchCodeSig(c4303c.f5105j, c4303c.f5106k, c4303c.f5107l, wUserSigInfo, c4303c.f5102f, i3);
                return;
            default:
                C4393util.LOGW("OnRequestName unhandle cmd", "", str);
                this.mListener.OnException(new ErrMsg(), 9, wUserSigInfo);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OnRequestRegister(String str, long j, long j2, TransReqContext transReqContext, WUserSigInfo wUserSigInfo, int i) {
        if (this.mListener == null) {
            return;
        }
        String m49a = InternationMsg.m49a(InternationMsg.MSG_TYPE.MSG_3);
        if (i != 0) {
            if (this.mListener != null) {
                this.mListener.OnRegError(wUserSigInfo, i, m49a.getBytes());
                return;
            }
            return;
        }
        C4204j c4204j = this.mRegStatus;
        switch (transReqContext.get_subcmd()) {
            case 3:
                int m383a = C4197c.m383a(transReqContext.get_body(), c4204j);
                if (m383a != 0) {
                    if (this.mListener != null) {
                        this.mListener.OnRegError(wUserSigInfo, m383a, m49a.getBytes());
                        return;
                    }
                    return;
                }
                C4393util.LOGI("reg cmd:" + transReqContext.get_subcmd() + " ret:" + c4204j.f4978d, "");
                if (c4204j.f4978d == 0 || c4204j.f4978d == 4 || c4204j.f4978d == 31 || c4204j.f4978d == 118) {
                    this.mListener.OnRegQueryClientSentMsgStatus(wUserSigInfo, c4204j.f4978d, c4204j.f4993s, c4204j.f4994t, new String(c4204j.f4980f));
                    return;
                } else if (c4204j.f4978d == 3) {
                    if (this.mListener != null) {
                        this.mListener.OnRegCheckValidUrl(wUserSigInfo, c4204j.f4992r);
                        return;
                    }
                    return;
                } else {
                    C4393util.LOGW("OnRequestRegister 0x3 return code:", String.valueOf(c4204j.f4978d), str);
                    if (this.mListener != null) {
                        this.mListener.OnRegError(wUserSigInfo, c4204j.f4978d, c4204j.f4980f);
                        return;
                    }
                    return;
                }
            case 4:
                int m383a2 = C4197c.m383a(transReqContext.get_body(), c4204j);
                if (m383a2 != 0) {
                    if (this.mListener != null) {
                        this.mListener.OnRegError(wUserSigInfo, m383a2, m49a.getBytes());
                        return;
                    }
                    return;
                }
                C4393util.LOGI("reg cmd:" + transReqContext.get_subcmd() + " ret:" + c4204j.f4978d, "");
                if (c4204j.f4978d == 0) {
                    if (this.mListener != null) {
                        this.mListener.OnRegRequestServerResendMsg(wUserSigInfo, c4204j.f4978d, c4204j.f4993s, c4204j.f4994t);
                        return;
                    }
                    return;
                } else if (c4204j.f4978d == 3) {
                    if (this.mListener != null) {
                        this.mListener.OnRegCheckValidUrl(wUserSigInfo, c4204j.f4992r);
                        return;
                    }
                    return;
                } else if (c4204j.f4978d == 5) {
                    if (this.mListener != null) {
                        this.mListener.OnRegRequestServerResendMsg(wUserSigInfo, c4204j.f4978d, c4204j.f4993s, c4204j.f4994t);
                        return;
                    }
                    return;
                } else {
                    C4393util.LOGW("OnRequestRegister 0x4 return code:", String.valueOf(c4204j.f4978d), str);
                    if (this.mListener != null) {
                        this.mListener.OnRegError(wUserSigInfo, c4204j.f4978d, c4204j.f4980f);
                        return;
                    }
                    return;
                }
            case 5:
                int m380b = C4197c.m380b(transReqContext.get_body(), c4204j);
                if (m380b != 0) {
                    if (this.mListener != null) {
                        this.mListener.OnRegError(wUserSigInfo, m380b, m49a.getBytes());
                        return;
                    }
                    return;
                }
                wUserSigInfo.regTLVMap = c4204j.f4975B;
                c4204j.f4975B = new HashMap();
                C4393util.LOGI("reg cmd:" + transReqContext.get_subcmd() + " ret:" + c4204j.f4978d, "");
                if (this.mListener != null) {
                    this.mListener.OnRegSubmitMsgChk(wUserSigInfo, c4204j.f4978d, c4204j.f4980f);
                    return;
                }
                return;
            case 6:
                int m379c = C4197c.m379c(transReqContext.get_body(), c4204j);
                if (m379c != 0) {
                    if (this.mListener != null) {
                        this.mListener.OnRegError(wUserSigInfo, m379c, m49a.getBytes());
                        return;
                    }
                    return;
                }
                C4393util.LOGI("reg cmd:" + transReqContext.get_subcmd() + " ret:" + c4204j.f4978d, "");
                if (this.mListener != null) {
                    if (c4204j.f4976b != null && c4204j.f4976b.indexOf(KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR) > 0) {
                        int indexOf = c4204j.f4976b.indexOf(KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR);
                        String substring = c4204j.f4976b.substring(0, indexOf);
                        if (substring.equals("86")) {
                            c4204j.f4976b = c4204j.f4976b.substring(indexOf + 1);
                        } else {
                            c4204j.f4976b = "00" + substring + c4204j.f4976b.substring(indexOf + 1);
                        }
                    }
                    if (c4204j.f4976b != null && c4204j.f4976b.length() != 0) {
                        this.f5172mG.m75d(c4204j.f4976b);
                        this.f5172mG.m89a(c4204j.f4976b, Long.valueOf(c4204j.f4995u));
                    }
                    C4393util.LOGI("reg userAccount: " + c4204j.f4976b, c4204j.f4995u + "");
                    if (C4204j.f4973z.length() > 0) {
                        this.mListener.OnRegGetSMSVerifyLoginAccount(wUserSigInfo, c4204j.f4978d, c4204j.f4995u, c4204j.f4996v, c4204j.f4997w, c4204j.f4980f);
                        return;
                    } else {
                        this.mListener.OnRegGetAccount(wUserSigInfo, c4204j.f4978d, c4204j.f4995u, c4204j.f4996v, c4204j.f4997w, c4204j.f4980f);
                        return;
                    }
                }
                return;
            case 7:
                int m378d = C4197c.m378d(transReqContext.get_body(), c4204j);
                if (m378d != 0) {
                    if (this.mListener != null) {
                        this.mListener.OnRegError(wUserSigInfo, m378d, m49a.getBytes());
                        return;
                    }
                    return;
                }
                C4393util.LOGI("reg cmd:" + transReqContext.get_subcmd() + " ret:" + c4204j.f4978d, "");
                if (this.mListener != null) {
                    this.mListener.OnRegQueryAccount(wUserSigInfo, c4204j.f4978d, c4204j.f4980f);
                    return;
                }
                return;
            case 8:
            case 9:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            default:
                C4393util.LOGW("OnRequestRegister unhandle cmd:" + transReqContext.get_subcmd(), "", str);
                if (this.mListener != null) {
                    this.mListener.OnRegError(wUserSigInfo, C4393util.E_NO_REG_CMD, m49a.getBytes());
                    return;
                }
                return;
            case 10:
                int m383a3 = C4197c.m383a(transReqContext.get_body(), c4204j);
                if (m383a3 != 0) {
                    if (this.mListener != null) {
                        this.mListener.OnRegError(wUserSigInfo, m383a3, m49a.getBytes());
                        return;
                    }
                    return;
                }
                C4393util.LOGI("reg cmd:" + transReqContext.get_subcmd() + " ret:" + c4204j.f4978d, "");
                if (c4204j.f4978d == 0) {
                    if (this.mListener != null) {
                        this.mListener.OnRegCheckDownloadMsg(wUserSigInfo, c4204j.f4987m, c4204j.f4988n);
                        return;
                    }
                    return;
                } else if (c4204j.f4978d == 2) {
                    if (this.mListener != null) {
                        this.mListener.OnRegCheckUploadMsg(wUserSigInfo, new String(c4204j.f4991q));
                        return;
                    }
                    return;
                } else if (c4204j.f4978d == 3) {
                    if (this.mListener != null) {
                        this.mListener.OnRegCheckValidUrl(wUserSigInfo, c4204j.f4992r);
                        return;
                    }
                    return;
                } else if (c4204j.f4978d == 6 || c4204j.f4978d == 44) {
                    if (this.mListener != null) {
                        this.mListener.OnRegCheckWebSig(wUserSigInfo, new String(c4204j.f4992r), new String(c4204j.f4980f));
                    }
                    c4204j.f4992r = new byte[0];
                    return;
                } else {
                    C4393util.LOGW("OnRequestRegister 0xa return code:", String.valueOf(c4204j.f4978d), str);
                    if (this.mListener != null) {
                        this.mListener.OnRegError(wUserSigInfo, c4204j.f4978d, c4204j.f4980f);
                        return;
                    }
                    return;
                }
            case 16:
                int m377e = C4197c.m377e(transReqContext.get_body(), c4204j);
                if (m377e != 0 && this.mListener != null) {
                    this.mListener.OnRegError(wUserSigInfo, m377e, m49a.getBytes());
                }
                C4393util.LOGI("reg cmd:" + transReqContext.get_subcmd() + " ret:" + c4204j.f4978d, "");
                this.mListener.OnQuickRegisterCheckAccount(wUserSigInfo, c4204j.f4978d, c4204j.f4980f);
                return;
            case 17:
                int m376f = C4197c.m376f(transReqContext.get_body(), c4204j);
                if (m376f != 0 && this.mListener != null) {
                    this.mListener.OnRegError(wUserSigInfo, m376f, m49a.getBytes());
                }
                C4393util.LOGI("reg cmd:" + transReqContext.get_subcmd() + " ret:" + c4204j.f4978d, "");
                wUserSigInfo.regTLVMap = c4204j.f4975B;
                c4204j.f4975B = new HashMap();
                this.mListener.OnQuickRegisterGetAccount(wUserSigInfo, c4204j.f4978d, c4204j.f4980f);
                return;
        }
    }

    private Intent PrepareQloginIntent(long j, long j2, String str) {
        String str2 = "com.tencent.mobileqq";
        boolean CheckMayFastLogin = C4393util.CheckMayFastLogin(this.mContext);
        boolean CheckQQMiniHD = C4393util.CheckQQMiniHD(this.mContext);
        if (!CheckMayFastLogin) {
            if (!CheckQQMiniHD) {
                return null;
            }
            str2 = "com.tencent.minihd.qq";
        }
        byte[] bArr = C4393util.get_rsa_pubkey(this.mContext);
        if (bArr == null || bArr.length == 0) {
            bArr = C4393util.string_to_buf(RSACrypt.DEFAULT_PUB_KEY);
        }
        Intent intent = new Intent();
        intent.setClassName(str2, "com.tencent.open.agent.AgentActivity");
        Bundle bundle = new Bundle();
        bundle.putLong("dstSsoVer", 1L);
        bundle.putLong("dstAppid", j);
        bundle.putLong("subDstAppid", j2);
        bundle.putByteArray("dstAppVer", str.getBytes());
        bundle.putByteArray("publickey", bArr);
        intent.putExtra("key_params", bundle);
        intent.putExtra("key_action", "action_quick_login");
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int RefreshPictureData(String str, WUserSigInfo wUserSigInfo, int i) {
        long parseLong;
        boolean z;
        if (str == null || wUserSigInfo == null) {
            return C4393util.E_INPUT;
        }
        if (i == 0) {
            new HelperThread(this, this.mHelperHandler, str, wUserSigInfo, "RefreshPictureData").RunReq(1);
            return C4393util.E_PENDING;
        }
        if (wUserSigInfo._seqence == 0) {
            wUserSigInfo._seqence = this.mAysncSeq;
        }
        C4379u m96a = this.f5172mG.m96a(wUserSigInfo._seqence);
        wUserSigInfo._seqence = m96a.f5303h;
        async_context m85b = C4379u.m85b(m96a.f5303h);
        C4393util.LOGI("user:" + str + " Seq:" + m96a.f5303h + " RefreshPictureData ...", "" + str);
        m96a.f5302g = str;
        m85b._last_err_msg = new ErrMsg();
        if (C4393util.check_uin_account(str).booleanValue()) {
            parseLong = Long.parseLong(str);
            z = true;
        } else {
            parseLong = m96a.m83b(str);
            z = parseLong != 0;
        }
        if (z) {
            m96a.f5301f = parseLong;
        }
        int m104a = new C4376r(m96a).m104a(this.mMiscBitmap, this.mSubSigMap, m85b._sub_appid_list, wUserSigInfo);
        int i2 = m104a != 2 ? m104a : 0;
        C4393util.LOGI("user:" + str + " Seq:" + m96a.f5303h + " RefreshPictureData ret=" + i2, "" + str);
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int RefreshSMSData(String str, long j, WUserSigInfo wUserSigInfo, int i) {
        long parseLong;
        boolean z;
        if (str == null || wUserSigInfo == null) {
            return C4393util.E_INPUT;
        }
        if (i == 0) {
            new HelperThread(this, this.mHelperHandler, str, j, wUserSigInfo, "RefreshSMSData").RunReq(3);
            return C4393util.E_PENDING;
        }
        if (wUserSigInfo._seqence == 0) {
            wUserSigInfo._seqence = this.mAysncSeq;
        }
        C4379u m96a = this.f5172mG.m96a(wUserSigInfo._seqence);
        wUserSigInfo._seqence = m96a.f5303h;
        async_context m85b = C4379u.m85b(m96a.f5303h);
        C4393util.LOGI("user:" + str + " smsAppid:" + j + " Seq:" + m96a.f5303h + " RefreshSMSData ...", "" + str);
        m96a.f5302g = str;
        m85b._last_err_msg = new ErrMsg();
        if (C4393util.check_uin_account(str).booleanValue()) {
            parseLong = Long.parseLong(str);
            z = true;
        } else {
            parseLong = m96a.m83b(str);
            z = parseLong != 0;
        }
        if (z) {
            m96a.f5301f = parseLong;
        }
        int m102a = new C4377s(m96a).m102a(j, this.mMiscBitmap, this.mSubSigMap, m85b._sub_appid_list, wUserSigInfo);
        int i2 = m102a != 160 ? m102a : 0;
        C4393util.LOGI("user:" + str + " smsAppid:" + j + " Seq:" + m96a.f5303h + " RefreshSMSData ret=" + i2, "" + str);
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int RefreshSMSVerifyLoginCode(String str, WUserSigInfo wUserSigInfo, int i) {
        if (str == null || str.length() == 0) {
            return C4393util.E_INPUT;
        }
        if (i == 0) {
            new HelperThread(this, this.mHelperHandler, str, wUserSigInfo, "RefreshSMSVerifyLoginCode").RunReq(14);
            return C4393util.E_PENDING;
        }
        if (wUserSigInfo._seqence == 0) {
            wUserSigInfo._seqence = this.mAysncSeq;
        }
        C4379u m96a = this.f5172mG.m96a(wUserSigInfo._seqence);
        wUserSigInfo._seqence = m96a.f5303h;
        async_context m85b = C4379u.m85b(m96a.f5303h);
        C4393util.LOGI("user:" + str + " Seq:" + m96a.f5303h + " RefreshSMSVerifyLoginCode ...", str);
        m96a.f5302g = str;
        m85b._last_err_msg = new ErrMsg();
        int m56a = new C4382x(m96a).m56a(this.mMiscBitmap, this.mSubSigMap, (long[]) null, wUserSigInfo);
        C4393util.LOGI("user:" + m96a.f5302g + " Seq:" + m96a.f5303h + " RefreshSMSVerifyLoginCode ret=" + (m56a > 0 ? Integer.toHexString(m56a) : Integer.valueOf(m56a)), str);
        return m56a;
    }

    private int RegSubmitMobile(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i, int i2, int i3, long j, long j2, WUserSigInfo wUserSigInfo) {
        if (bArr2 == null || bArr2.length <= 0 || bArr4 == null) {
            return C4393util.E_INPUT;
        }
        byte[] bArr5 = bArr == null ? new byte[0] : bArr;
        byte[] bArr6 = C4379u.f5249E;
        long j3 = 0;
        byte[] bArr7 = new byte[0];
        WloginLastLoginInfo GetLastLoginInfo = GetLastLoginInfo();
        if (GetLastLoginInfo != null) {
            j3 = GetLastLoginInfo.mUin;
            Ticket GetLocalTicket = GetLocalTicket(GetLastLoginInfo.mAccount, j, 64);
            if (GetLocalTicket != null && GetLocalTicket._sig != null) {
                bArr7 = GetLocalTicket._sig;
            }
        }
        C4393util.LOGI("has uin? " + j3 + ", a2: " + bArr7.length);
        C4393util.LOGI("RegSubmitMobile mobile ..." + new String(bArr2) + " appname: " + new String(bArr6) + "...", "");
        this.mRegStatus.f4977c = new String(bArr2);
        C4202h c4202h = new C4202h();
        TransReqContext transReqContext = new TransReqContext();
        C4204j c4204j = this.mRegStatus;
        c4204j.f4985k = bArr2;
        c4204j.f4981g = j;
        c4204j.f4982h = j2;
        transReqContext.set_register_req();
        transReqContext.set_subcmd(c4202h.m385a());
        transReqContext._body = c4202h.m370a(bArr2, bArr6, bArr4, i, i2, i3, j, j2, null, C4393util.generateGuid(this.mContext), C4393util.get_IMSI(this.mContext), C4379u.f5272aa, j3, bArr7, GetGuid(), bArr5);
        return RequestTransport(0, 1, null, 0L, c4204j.f4983i, transReqContext, wUserSigInfo);
    }

    private int RequestInit() {
        int ShareKeyInit;
        synchronized (this) {
            int i = C4393util.get_saved_network_type(this.mContext);
            C4379u.m78d();
            ShareKeyInit = ShareKeyInit();
            AsyncGenRSAKey();
            C4393util.LOGI("init ok  ret:" + ShareKeyInit + " os ver:" + new String(C4379u.f5254J) + " saved_network_type:" + i + " network_type:" + C4379u.f5248D + " svn " + C4393util.SVN_VER + " at " + C4379u.m66l(), "");
        }
        return ShareKeyInit;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int RequestReport(int i, byte[] bArr, byte[] bArr2, long j, long j2) {
        if (i == 0) {
            new HelperThread(this, this.mHelperHandler, bArr, bArr2, j, j2, "RequestReport").RunReq(7);
            return C4393util.E_PENDING;
        }
        C4379u m96a = this.f5172mG.m96a(0L);
        m96a.f5301f = j;
        C4393util.LOGI("user:" + j + " appid:" + j2 + " Seq:" + m96a.f5303h + " RequestReport...", "" + j);
        int m215a = new C4359aa(m96a).m215a(j, (byte[]) null, bArr, bArr2, j2, new WUserSigInfo());
        m96a.m69i();
        C4393util.LOGI("user:" + j + " appid:" + j2 + " Seq:" + m96a.f5303h + " RequestReport ret=" + m215a, "" + j);
        return m215a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int RequestReportError(int i, byte[] bArr, byte[] bArr2, long j, long j2, int i2) {
        if (i == 0) {
            new HelperThread(this, this.mHelperHandler, bArr, bArr2, j, j2, i2, "RequestReportError").RunReq(8);
            return C4393util.E_PENDING;
        }
        C4379u m96a = this.f5172mG.m96a(0L);
        m96a.f5300d = this.f5172mG.f5300d;
        m96a.f5301f = j;
        C4393util.LOGI("user:" + j + " appid:" + j2 + " Seq:" + m96a.f5303h + " RequestReportError...", "" + j);
        int m63a = new C4380v(m96a).m63a(j, null, bArr, bArr2, j2, i2);
        C4393util.LOGI("user:" + j + " appid:" + j2 + " Seq:" + m96a.f5303h + " RequestReportError ret=" + m63a, "" + j);
        return m63a;
    }

    private WUserSigInfo ResolveQloginIntentReserved(Intent intent) {
        if (intent != null && intent.getExtras().getInt("quicklogin_ret") == 0) {
            String string = intent.getExtras().getString("quicklogin_uin");
            byte[] byteArray = intent.getExtras().getByteArray("quicklogin_buff");
            if (string == null || byteArray == null) {
                return null;
            }
            WUserSigInfo wUserSigInfo = new WUserSigInfo();
            wUserSigInfo._fastLoginBuf = new RSACrypt(this.mContext).DecryptData(null, byteArray);
            if (wUserSigInfo._fastLoginBuf == null) {
                C4393util.LOGI("rsa decrypt failed", "");
                return null;
            }
            wUserSigInfo.uin = string;
            return wUserSigInfo;
        }
        return null;
    }

    private int ShareKeyInit() {
        C4393util.LOGI("start ShareKeyInit", "");
        EcdhCrypt ecdhCrypt = new EcdhCrypt(this.mContext);
        if (this.isForLocal) {
            return ecdhCrypt.initShareKeyByDefault();
        }
        int initShareKey = ecdhCrypt.initShareKey();
        C4393util.LOGI("end ShareKeyInit", "");
        this.f5172mG.f5309n = ecdhCrypt.get_c_pub_key();
        this.f5172mG.f5311p = ecdhCrypt.get_g_share_key();
        return initShareKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int VerifySMSVerifyLoginCode(String str, String str2, WUserSigInfo wUserSigInfo, int i) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return C4393util.E_INPUT;
        }
        if (i == 0) {
            new HelperThread(this, this.mHelperHandler, str, str2, wUserSigInfo, "VerifySMSVerifyLoginCode").RunReq(13);
            return C4393util.E_PENDING;
        }
        if (wUserSigInfo._seqence == 0) {
            wUserSigInfo._seqence = this.mAysncSeq;
        }
        C4379u m96a = this.f5172mG.m96a(wUserSigInfo._seqence);
        wUserSigInfo._seqence = m96a.f5303h;
        async_context m85b = C4379u.m85b(m96a.f5303h);
        C4393util.LOGI("user:" + m96a.f5302g + " code:" + str2 + " Seq:" + m96a.f5303h + " VerifySMSVerifyLoginCode ...", str);
        m96a.f5302g = str;
        m85b._last_err_msg = new ErrMsg();
        m85b._mpasswd = C4393util.get_mpasswd();
        int m55a = new C4383y(m96a).m55a(str2, this.mMiscBitmap, this.mSubSigMap, null, wUserSigInfo);
        C4393util.LOGI("user:" + str + " code:" + str2 + " Seq:" + m96a.f5303h + " VerifySMSVerifyLoginAccount ret=" + (m55a > 0 ? Integer.toHexString(m55a) : Integer.valueOf(m55a)), str);
        return m55a;
    }

    public static byte[] getRegTlvValue(WUserSigInfo wUserSigInfo, int i) {
        C4232b c4232b = wUserSigInfo.regTLVMap.get(new Integer(i));
        if (c4232b != null) {
            return c4232b.m318c();
        }
        return null;
    }

    private int getStWithPtSig(String str, String str2, QuickLoginParam quickLoginParam) {
        return getStWithPtSig(str, str2, quickLoginParam, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getStWithPtSig(String str, String str2, QuickLoginParam quickLoginParam, int i) {
        if (i == 0) {
            new HelperThread(this, this.mHelperHandler, str, str2, quickLoginParam, "getStWithPtSig").RunReq(16);
            return C4393util.E_PENDING;
        }
        WUserSigInfo wUserSigInfo = quickLoginParam.userSigInfo;
        wUserSigInfo.uin = str;
        C4379u m96a = this.f5172mG.m96a(0L);
        m96a.f5301f = Long.parseLong(str);
        wUserSigInfo._seqence = m96a.f5303h;
        async_context m85b = C4379u.m85b(m96a.f5303h);
        C4393util.LOGI("getStWithPtSig seq:" + m96a.f5303h, str);
        m85b._last_err_msg = new ErrMsg();
        quickLoginParam.sigMap |= 192;
        m85b._mpasswd = C4393util.get_mpasswd();
        m85b._msalt = C4393util.constructSalt();
        m85b._appid = quickLoginParam.appid;
        m85b._sub_appid = quickLoginParam.subAppid;
        m85b._main_sigmap = quickLoginParam.sigMap;
        m85b._sub_appid_list = quickLoginParam.dstSubAppidList;
        int m209a = new C4361c(m96a, str2).m209a(this.mMiscBitmap, this.mSubSigMap, wUserSigInfo);
        if (m209a != 0) {
            C4393util.LOGI("VerifyPTSig seq " + m96a.f5303h + " ret " + m209a, str);
            return m209a;
        }
        m85b._tmp_pwd = MD5.toMD5Byte(m85b._mpasswd.getBytes());
        C4370l c4370l = new C4370l(m96a, this.mContext);
        c4370l.m109g();
        int m168a = c4370l.m168a(quickLoginParam.appid, quickLoginParam.subAppid, m96a.f5301f, 0, C4379u.f5275ad, C4393util.getRequestInitTime(), m85b._tmp_pwd, 4, this.mMiscBitmap, this.mSubSigMap, quickLoginParam.dstSubAppidList, quickLoginParam.sigMap, quickLoginParam.subAppid, C4379u.f5293y, 0, 0, 1, C4379u.f5272aa, wUserSigInfo);
        if (m168a != 0) {
            C4393util.LOGI("getStWithPtSig seq:" + m96a.f5303h + " ret:" + m168a, str);
            return m168a;
        }
        WloginSigInfo m95a = m96a.m95a(m96a.f5301f, quickLoginParam.appid);
        if (m95a == null) {
            return C4393util.E_NO_KEY;
        }
        wUserSigInfo.get_clone(m95a);
        if (quickLoginParam.dstSubAppidList != null) {
            wUserSigInfo.stList = new byte[quickLoginParam.dstSubAppidList.length * 2];
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= quickLoginParam.dstSubAppidList.length) {
                    break;
                }
                WloginSigInfo m95a2 = m96a.m95a(m96a.f5301f, quickLoginParam.dstSubAppidList[i3]);
                if (m95a2 != null) {
                    wUserSigInfo.stList[i3 * 2] = (byte[]) m95a2._userSt_Key.clone();
                    wUserSigInfo.stList[(i3 * 2) + 1] = (byte[]) m95a2._userStSig.clone();
                }
                i2 = i3 + 1;
            }
        }
        C4393util.LOGI("request_TGTGT seq:" + m96a.f5303h + " ret " + m168a, str);
        return m168a;
    }

    private int getStWithQQSig(String str, QuickLoginParam quickLoginParam) {
        return getStWithQQSig(str, quickLoginParam, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getStWithQQSig(String str, QuickLoginParam quickLoginParam, int i) {
        if (i == 0) {
            new HelperThread(this, this.mHelperHandler, str, quickLoginParam, "getStWithQQSig").RunReq(15);
            return C4393util.E_PENDING;
        }
        WUserSigInfo wUserSigInfo = quickLoginParam.userSigInfo;
        wUserSigInfo.uin = str;
        C4379u m96a = this.f5172mG.m96a(0L);
        wUserSigInfo._seqence = m96a.f5303h;
        this.mAysncSeq = m96a.f5303h;
        async_context m85b = C4379u.m85b(m96a.f5303h);
        int i2 = C4393util.get_saved_network_type(this.mContext);
        C4379u.f5248D = C4393util.get_network_type(this.mContext);
        if (i2 != C4379u.f5248D) {
            C4393util.set_net_retry_type(this.mContext, 0);
            C4393util.save_network_type(this.mContext, C4379u.f5248D);
        }
        C4379u.f5250F = C4393util.get_apn_string(this.mContext).getBytes();
        quickLoginParam.sigMap |= 192;
        m96a.f5302g = str;
        m96a.f5301f = Long.parseLong(str);
        m85b._sappid = quickLoginParam.appid;
        m85b._appid = quickLoginParam.appid;
        m85b._sub_appid = quickLoginParam.subAppid;
        m85b._main_sigmap = quickLoginParam.sigMap;
        m85b._login_bitmap = wUserSigInfo._login_bitmap;
        m85b._last_err_msg = new ErrMsg();
        if (quickLoginParam.dstSubAppidList != null) {
            m85b._sub_appid_list = (long[]) quickLoginParam.dstSubAppidList.clone();
        } else {
            m85b._sub_appid_list = null;
        }
        if (wUserSigInfo._reserveData == null || wUserSigInfo._reserveData.length <= 3) {
            m96a.f5304i = 0;
        } else {
            m96a.f5304i = C4393util.buf_to_int32(wUserSigInfo._reserveData, 0);
            C4393util.LOGI("MSF SSO SEQ:" + m96a.f5304i, str);
        }
        if (wUserSigInfo._fastLoginBuf == null || wUserSigInfo._fastLoginBuf.length == 0) {
            C4393util.LOGI("fast login buff is null seq:" + m96a.f5304i, str);
            return C4393util.E_INPUT;
        } else if (GetFastLoginInfo(wUserSigInfo._fastLoginBuf, m85b) < 0) {
            C4393util.LOGI("GetFastLoginInfo fast login buff is failed seq:" + m96a.f5304i, str);
            return C4393util.E_INPUT;
        } else {
            C4384z c4384z = new C4384z(m96a);
            c4384z.m109g();
            int m53a = c4384z.m53a(quickLoginParam.appid, 1, m96a.f5301f, 0, C4379u.f5275ad, m85b._tmp_pwd, m85b._tmp_no_pic_sig, this.mMiscBitmap, this.mSubSigMap, quickLoginParam.dstSubAppidList, quickLoginParam.sigMap, quickLoginParam.subAppid, 1, C4379u.f5293y, 0, 0, 1, C4379u.f5272aa, quickLoginParam.appid, wUserSigInfo);
            if (m53a != 0) {
                C4393util.LOGI("getStWithQQSig seq:" + m96a.f5303h + " ret:" + m53a, str);
                return m53a;
            }
            WloginSigInfo m95a = m96a.m95a(m96a.f5301f, quickLoginParam.appid);
            if (m95a == null) {
                return C4393util.E_NO_KEY;
            }
            wUserSigInfo.get_clone(m95a);
            if (quickLoginParam.dstSubAppidList != null) {
                wUserSigInfo.stList = new byte[quickLoginParam.dstSubAppidList.length * 2];
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    if (i4 >= quickLoginParam.dstSubAppidList.length) {
                        break;
                    }
                    WloginSigInfo m95a2 = m96a.m95a(m96a.f5301f, quickLoginParam.dstSubAppidList[i4]);
                    if (m95a2 != null) {
                        wUserSigInfo.stList[i4 * 2] = (byte[]) m95a2._userSt_Key.clone();
                        wUserSigInfo.stList[(i4 * 2) + 1] = (byte[]) m95a2._userStSig.clone();
                    }
                    i3 = i4 + 1;
                }
            }
            C4393util.LOGI("getStWithQQSig seq:" + m96a.f5303h + " ret:" + m53a, str);
            return m53a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getStWithQrSig(String str, long j, long j2, int i, WUserSigInfo wUserSigInfo, int i2) {
        if (str == null || wUserSigInfo == null) {
            return C4393util.E_INPUT;
        }
        int i3 = i | 192;
        if (i2 == 0) {
            new HelperThread(this, this.mHelperHandler, str, j, i3, j2, wUserSigInfo, "getStWithQrSig").RunReq(17);
            return C4393util.E_PENDING;
        }
        int i4 = 0;
        C4379u m96a = this.f5172mG.m96a(0L);
        wUserSigInfo._seqence = m96a.f5303h;
        this.mAysncSeq = m96a.f5303h;
        C4204j.f4973z = "";
        async_context m85b = C4379u.m85b(m96a.f5303h);
        C4393util.LOGI("start getStWithQrSig:user:" + str + " appid:" + j + " sigMap:0x" + Integer.toHexString(i3) + " subAppid:" + j2 + " Seq:" + m96a.f5303h, str);
        int i5 = C4393util.get_saved_network_type(this.mContext);
        C4379u.f5248D = C4393util.get_network_type(this.mContext);
        if (i5 != C4379u.f5248D) {
            C4393util.set_net_retry_type(this.mContext, 0);
            C4393util.save_network_type(this.mContext, C4379u.f5248D);
        }
        C4379u.f5250F = C4393util.get_apn_string(this.mContext).getBytes();
        if (!C4393util.check_uin_account(str).booleanValue()) {
            C4393util.LOGI("userAccount " + str + " isn't valid", "");
            return C4393util.E_INPUT;
        }
        long parseLong = Long.parseLong(str);
        wUserSigInfo.uin = str;
        m96a.f5302g = str;
        m96a.f5301f = parseLong;
        m85b._sappid = j;
        m85b._appid = j;
        m85b._sub_appid_list = null;
        m85b._sub_appid = j2;
        m85b._main_sigmap = i3;
        m85b._login_bitmap = wUserSigInfo._login_bitmap;
        m85b._last_err_msg = new ErrMsg();
        if (wUserSigInfo._reserveData == null || wUserSigInfo._reserveData.length <= 3) {
            m96a.f5304i = 0;
        } else {
            m96a.f5304i = C4393util.buf_to_int32(wUserSigInfo._reserveData, 0);
            C4393util.LOGI("MSF SSO SEQ:" + m96a.f5304i, str);
        }
        C4379u.f5281al.add_t2(new report_t2("login", new String(C4379u.f5247C), System.currentTimeMillis(), j, j2, null));
        if (C4303c.f5094q != null && C4303c.f5094q.length > 0) {
            m85b._tmp_pwd = C4303c.f5094q;
            m85b._tmp_no_pic_sig = C4303c.f5095r;
            C4303c.f5094q = null;
            C4303c.f5095r = null;
        }
        if (m85b._tmp_pwd == null || m85b._tmp_pwd.length < 16) {
            i4 = C4393util.E_A1_FORMAT;
        } else {
            m85b._tmp_pwd_type = 1;
            byte[] bArr = (wUserSigInfo._in_ksid == null || wUserSigInfo._in_ksid.length <= 0) ? C4379u.f5272aa : (byte[]) wUserSigInfo._in_ksid.clone();
            if (m85b._tmp_pwd_type != 0) {
                C4393util.LOGI("user:" + str + " login with qrsig", str);
                C4370l c4370l = new C4370l(m96a, this.mContext);
                c4370l.m109g();
                i4 = c4370l.m167a(j, j2, m96a.f5301f, 0, C4379u.f5275ad, m85b._tmp_pwd, m85b._tmp_no_pic_sig, this.mMiscBitmap, this.mSubSigMap, null, i3, j2, C4379u.f5293y, 0, 0, 1, bArr, wUserSigInfo);
            }
            if (i4 == 0 || i4 == 160) {
                WloginSigInfo m95a = m96a.m95a(parseLong, j);
                if (m95a == null) {
                    i4 = C4393util.E_NO_KEY;
                } else {
                    wUserSigInfo.get_clone(m95a);
                }
            }
        }
        Ticket GetUserSigInfoTicket = GetUserSigInfoTicket(wUserSigInfo, 128);
        if (GetUserSigInfoTicket == null) {
            GetUserSigInfoTicket = new Ticket();
        }
        C4379u.f5281al.commit_t2(m96a.f5301f, m96a.f5302g, C4393util.format_ret_code(i4), i4);
        if (i4 == 0) {
            if (GetUserSigInfoTicket._sig != null && GetUserSigInfoTicket._sig.length != 0) {
                RequestReport(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid);
            }
        } else if (i4 != 2 && i4 != 160) {
            RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid, 0);
        }
        if (m96a.f5300d != null && m96a.f5300d.m330a() != 0) {
            this.f5172mG.f5300d = m96a.f5300d;
            RequestReportError(0, GetUserSigInfoTicket._sig, GetUserSigInfoTicket._sig_key, m96a.f5301f, m85b._appid, 1);
        }
        C4379u.m86b();
        m96a.m70h();
        C4393util.LOGI("end getStWithQrSig user:" + str + " appid:" + j + " sigMap:0x" + Integer.toHexString(i3) + " subAppid:" + j2 + " Seq:" + m96a.f5303h + " ret=" + i4, "" + m96a.f5301f);
        return i4;
    }

    private int isPskeyExpired(int i, String[] strArr, Ticket ticket, long j, int i2) {
        boolean z;
        boolean z2;
        String str;
        int i3;
        if (i != 1048576 || strArr == null || strArr.length <= 0) {
            return 0;
        }
        int i4 = 0;
        for (String str2 : strArr) {
            if (str2 != null && str2.length() != 0) {
                int indexOf = str2.indexOf(40);
                int indexOf2 = str2.indexOf(41);
                if (indexOf != 0 || indexOf2 <= 0) {
                    z = false;
                    z2 = true;
                    str = str2;
                } else {
                    int intValue = Integer.valueOf(str2.substring(indexOf + 1, indexOf2)).intValue();
                    boolean z3 = (1048576 & intValue) > 0;
                    z = (intValue & SigType.WLOGIN_PT4Token) > 0;
                    z2 = z3;
                    str = str2.substring(indexOf2 + 1);
                }
                boolean z4 = z2 && (ticket._pskey_map.get(str) == null || Ticket.isPskeyExpired(ticket._pskey_expire.get(str).longValue()));
                boolean z5 = z && (ticket._pt4token_map.get(str) == null || Ticket.isPskeyExpired(ticket._pt4token_expire.get(str).longValue()));
                if (z4 || z5) {
                    i3 = i4 + 1;
                    strArr[i4] = str2;
                    C4393util.LOGI("isPskeyExpired refresh " + str + " need refresh pskey:" + z4 + " and pt4token:" + z5, "");
                } else {
                    i3 = i4;
                }
                C4393util.LOGI("isPskeyExpired domain " + str + " get pskey:" + z2 + " get pt4token:" + z, "");
                i4 = i3;
            }
        }
        if (i4 == 0) {
            return 3;
        }
        while (i4 < strArr.length) {
            C4393util.LOGI("isPskeyExpired domain " + strArr[i4] + " cleared", "");
            strArr[i4] = null;
            i4++;
        }
        if (i2 == 1) {
            return 1;
        }
        RefreshMemorySig();
        return 2;
    }

    private void localInit(Context context, boolean z) {
        this.isForLocal = z;
        try {
            this.mContext = context.getApplicationContext();
        } catch (Throwable th) {
            this.mContext = context;
            C4393util.printThrowable(th, "");
        }
        this.f5172mG.m91a(context);
        RequestInit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Handler newHelperHandler() {
        try {
            if (Looper.myLooper() == null) {
                return null;
            }
            return new Handler();
        } catch (Throwable th) {
            return null;
        }
    }

    private void printTicket(WloginSigInfo wloginSigInfo) {
        C4393util.LOGI("a1 " + wloginSigInfo._en_A1.length);
        C4393util.LOGI("a2 " + wloginSigInfo._TGT.length);
        C4393util.LOGI("skey " + wloginSigInfo._sKey.length);
        C4393util.LOGI("pskey " + wloginSigInfo._psKey.length);
        C4393util.LOGI("superkey " + wloginSigInfo._superKey.length);
        C4393util.LOGI("d2 " + wloginSigInfo._D2.length);
        C4393util.LOGI("d2key " + wloginSigInfo._D2Key.length);
    }

    public static void setExtraLoginTlvValue(WUserSigInfo wUserSigInfo, int i, byte[] bArr) {
        Integer num = new Integer(i);
        C4232b c4232b = new C4232b(i);
        c4232b.m320b(bArr, bArr.length);
        wUserSigInfo.extraLoginTLVMap.put(num, c4232b);
    }

    public static void setLoadEncryptSo(boolean z) {
        C4393util.loadEncryptSo = z;
    }

    public static void setLoadSoFlg(boolean z) {
        C4379u.f5285aq = z;
    }

    private void tlvCommRsp2ErrMsg(TLV_CommRsp tLV_CommRsp, ErrMsg errMsg) {
        if (tLV_CommRsp == null || tLV_CommRsp.get_data_len() == 0) {
            return;
        }
        errMsg.setType(tLV_CommRsp.ErrInfoType);
        errMsg.setOtherinfo(new String(tLV_CommRsp.ErrInfo));
        errMsg.setTitle(new String(tLV_CommRsp.ErrTitle));
        errMsg.setMessage(new String(tLV_CommRsp.ErrMsg));
    }

    public int AskDevLockSms(String str, long j, long j2, WUserSigInfo wUserSigInfo) {
        if (str == null) {
            return C4393util.E_INPUT;
        }
        WloginSimpleInfo wloginSimpleInfo = new WloginSimpleInfo();
        if (GetBasicUserInfo(str, wloginSimpleInfo).booleanValue()) {
            long j3 = wloginSimpleInfo._uin;
            C4393util.LOGI("AskDevLockSms ...", str);
            C4310d c4310d = new C4310d();
            TransReqContext transReqContext = new TransReqContext();
            transReqContext.set_devlock_req();
            transReqContext.set_subcmd(c4310d.get_msgType());
            transReqContext._body = c4310d.m229a(j3, j, j2);
            return (transReqContext._body == null || transReqContext._body.length == 0) ? C4393util.E_INPUT : RequestTransport(0, 1, str, j, c4310d.Role, transReqContext, wUserSigInfo);
        }
        return C4393util.E_NO_UIN;
    }

    public void CancelRequest() {
        this.f5172mG.f5314s = 1;
    }

    public int CheckDevLockSms(String str, long j, long j2, String str2, byte[] bArr, WUserSigInfo wUserSigInfo) {
        if (str == null) {
            return C4393util.E_INPUT;
        }
        WloginSimpleInfo wloginSimpleInfo = new WloginSimpleInfo();
        if (GetBasicUserInfo(str, wloginSimpleInfo).booleanValue()) {
            long j3 = wloginSimpleInfo._uin;
            WloginSigInfo FindUserSig = FindUserSig(j3, j);
            if (FindUserSig == null) {
                return C4393util.E_NO_KEY;
            }
            if (bArr != null && bArr.length > 0) {
                DevlockBase.rst.setSppKey(bArr);
            }
            C4393util.LOGI("CheckDevLockSms ...", str);
            C4312f c4312f = new C4312f();
            TransReqContext transReqContext = new TransReqContext();
            String str3 = Build.VERSION.RELEASE;
            if (str3 == null) {
                str3 = "";
            }
            transReqContext.set_devlock_req();
            transReqContext.set_subcmd(c4312f.get_msgType());
            transReqContext.setSTEncryptMethod();
            transReqContext.setWtST(FindUserSig);
            transReqContext._body = c4312f.m228a(j3, j, j2, FindUserSig._TGT, C4379u.f5245A, C4379u.f5249E, C4393util.SDK_VERSION.getBytes(), "android".getBytes(), str3.getBytes(), str2 == null ? null : str2.getBytes());
            return (transReqContext._body == null || transReqContext._body.length == 0) ? C4393util.E_INPUT : RequestTransport(0, 1, str, j, c4312f.Role, transReqContext, wUserSigInfo);
        }
        return C4393util.E_NO_UIN;
    }

    public int CheckDevLockStatus(String str, long j, long j2, WUserSigInfo wUserSigInfo) {
        if (str == null) {
            return C4393util.E_INPUT;
        }
        WloginSimpleInfo wloginSimpleInfo = new WloginSimpleInfo();
        if (GetBasicUserInfo(str, wloginSimpleInfo).booleanValue()) {
            long j3 = wloginSimpleInfo._uin;
            WloginSigInfo FindUserSig = FindUserSig(j3, j);
            if (FindUserSig == null) {
                return C4393util.E_NO_KEY;
            }
            C4393util.LOGI("CheckDevLockStatus ...", str);
            DevlockBase.rst = new DevlockRst();
            C4307a c4307a = new C4307a();
            TransReqContext transReqContext = new TransReqContext();
            transReqContext.set_devlock_req();
            transReqContext.set_subcmd(c4307a.get_msgType());
            transReqContext.setSTEncryptMethod();
            transReqContext.setWtST(FindUserSig);
            transReqContext._body = c4307a.m233a(j3, j, j2, FindUserSig._TGT, C4379u.f5245A, C4379u.f5249E, C4393util.SDK_VERSION.getBytes(), C4379u.f5255K, C4379u.f5254J);
            return (transReqContext._body == null || transReqContext._body.length == 0) ? C4393util.E_INPUT : RequestTransport(0, 1, str, j, c4307a.Role, transReqContext, wUserSigInfo);
        }
        return C4393util.E_NO_UIN;
    }

    public int CheckPictureAndGetSt(String str, byte[] bArr, WUserSigInfo wUserSigInfo) {
        C4373o.f5209I = false;
        return CheckPictureAndGetSt(str, bArr, wUserSigInfo, null, 0);
    }

    public int CheckPictureAndGetSt(String str, byte[] bArr, WUserSigInfo wUserSigInfo, byte[][] bArr2) {
        C4373o.f5209I = false;
        return CheckPictureAndGetSt(str, bArr, wUserSigInfo, bArr2, 0);
    }

    public int CheckSMSAndGetSt(String str, byte[] bArr, WUserSigInfo wUserSigInfo) {
        return CheckSMSAndGetSt(str, bArr, wUserSigInfo, null, 0);
    }

    public int CheckSMSAndGetSt(String str, byte[] bArr, WUserSigInfo wUserSigInfo, byte[][] bArr2) {
        return CheckSMSAndGetSt(str, bArr, wUserSigInfo, bArr2, 0);
    }

    public int CheckSMSVerifyLoginAccount(long j, long j2, String str, WUserSigInfo wUserSigInfo) {
        return CheckSMSVerifyLoginAccount(j, j2, str, wUserSigInfo, 0);
    }

    public int CheckWebsigAndGetSt(String str, String str2, WUserSigInfo wUserSigInfo) {
        C4373o.f5209I = true;
        return CheckPictureAndGetSt(str, str2.getBytes(), wUserSigInfo, null, 0);
    }

    public int CheckWebsigAndGetSt(String str, String str2, WUserSigInfo wUserSigInfo, byte[][] bArr) {
        C4373o.f5209I = true;
        return CheckPictureAndGetSt(str, str2.getBytes(), wUserSigInfo, bArr, 0);
    }

    public void ClearPSkey(String str, long j) {
        long parseLong;
        C4393util.LOGI("user:" + str + " appid:" + j + " ClearPSkey ...", str);
        if (str == null || str.length() <= 0) {
            return;
        }
        boolean z = true;
        synchronized (this) {
            if (C4393util.check_uin_account(str).booleanValue()) {
                parseLong = Long.parseLong(str);
            } else {
                parseLong = this.f5172mG.m83b(str);
                if (parseLong == 0) {
                    z = false;
                }
            }
            if (z) {
                this.f5172mG.m80c(parseLong, j);
            }
        }
    }

    public Boolean ClearUserLoginData(String str, long j) {
        long parseLong;
        boolean z;
        C4393util.LOGI("user:" + str + " appid:" + j + " ClearUserLoginData ...", str);
        if (str == null || str.length() <= 0) {
            return true;
        }
        synchronized (this) {
            if (C4393util.check_uin_account(str).booleanValue()) {
                parseLong = Long.parseLong(str);
                z = true;
            } else {
                parseLong = this.f5172mG.m83b(str);
                if (parseLong == 0) {
                    z = false;
                } else {
                    this.f5172mG.m75d(str);
                    z = true;
                }
            }
            if (z) {
                this.f5172mG.m76d(parseLong, j);
            }
        }
        WloginSigInfo._QRPUSHSig = new byte[0];
        WloginSigInfo._LHSig = new byte[0];
        return true;
    }

    public int CloseCode(String str, long j, byte[] bArr, int i, List<byte[]> list, WUserSigInfo wUserSigInfo) {
        WloginSimpleInfo wloginSimpleInfo = new WloginSimpleInfo();
        if (GetBasicUserInfo(str, wloginSimpleInfo).booleanValue()) {
            long j2 = wloginSimpleInfo._uin;
            this.f5172mG.m68j();
            WloginSigInfo FindUserSig = FindUserSig(j2, j);
            if (FindUserSig == null) {
                return C4393util.E_NO_KEY;
            }
            C4393util.LOGI("user:" + str + " CloseCode ...", str);
            C4301a c4301a = new C4301a();
            TransReqContext transReqContext = new TransReqContext();
            transReqContext.set_code2d_func_req();
            transReqContext.set_subcmd(c4301a.get_cmd());
            transReqContext.setSTEncryptMethod();
            transReqContext.setWtST(FindUserSig);
            transReqContext._body = c4301a.m239a(j2, j, 1L, bArr, FindUserSig._userStSig, C4379u.f5245A, i, list, FindUserSig._en_A1, FindUserSig._noPicSig, this.mMiscBitmap, 0L);
            return RequestTransport(0, 1, str, j, c4301a._role, transReqContext, wUserSigInfo);
        }
        return C4393util.E_NO_UIN;
    }

    public int CloseDevLock(String str, long j, long j2, WUserSigInfo wUserSigInfo) {
        if (str == null) {
            return C4393util.E_INPUT;
        }
        WloginSimpleInfo wloginSimpleInfo = new WloginSimpleInfo();
        if (GetBasicUserInfo(str, wloginSimpleInfo).booleanValue()) {
            long j3 = wloginSimpleInfo._uin;
            WloginSigInfo FindUserSig = FindUserSig(j3, j);
            if (FindUserSig == null) {
                return C4393util.E_NO_KEY;
            }
            C4393util.LOGI("CloseDevLock ...", str);
            C4308b c4308b = new C4308b();
            TransReqContext transReqContext = new TransReqContext();
            String str2 = Build.VERSION.RELEASE;
            if (str2 == null) {
                str2 = "";
            }
            transReqContext.set_devlock_req();
            transReqContext.set_subcmd(c4308b.get_msgType());
            transReqContext.setSTEncryptMethod();
            transReqContext.setWtST(FindUserSig);
            transReqContext._body = c4308b.m232a(j3, j, j2, FindUserSig._TGT, C4379u.f5245A, C4379u.f5249E, C4393util.SDK_VERSION.getBytes(), "android".getBytes(), str2.getBytes());
            return (transReqContext._body == null || transReqContext._body.length == 0) ? C4393util.E_INPUT : RequestTransport(0, 1, str, j, c4308b.Role, transReqContext, wUserSigInfo);
        }
        return C4393util.E_NO_UIN;
    }

    public int FetchCodeSig(long j, long j2, fetch_code.QRCodeCustom qRCodeCustom, WUserSigInfo wUserSigInfo) {
        C4393util.LOGI(" FetchCodeSig ...", "");
        fetch_code fetch_codeVar = new fetch_code();
        TransReqContext transReqContext = new TransReqContext();
        transReqContext.set_code2d_func_req();
        transReqContext.set_subcmd(fetch_codeVar.get_cmd());
        transReqContext._body = fetch_codeVar.get_request(0L, j, j2, new byte[0], qRCodeCustom, this.mMiscBitmap, 0L, WloginSigInfo._QRPUSHSig);
        return RequestTransport(0, 1, null, j, fetch_codeVar._role, transReqContext, wUserSigInfo);
    }

    public int GetA1WithA1(String str, long j, long j2, byte[] bArr, long j3, long j4, long j5, byte[] bArr2, byte[] bArr3, WUserSigInfo wUserSigInfo, WFastLoginInfo wFastLoginInfo) {
        return GetA1WithA1(str, j, j2, this.mMainSigMap, bArr, j3, j4, j5, bArr2, bArr3, wUserSigInfo, wFastLoginInfo, 0);
    }

    public byte[] GetA2A2KeyBuf(String str, long j) {
        Ticket GetLocalTicket = GetLocalTicket(str, j, 64);
        if (GetLocalTicket == null || GetLocalTicket._sig == null || GetLocalTicket._sig.length <= 0 || GetLocalTicket._sig_key == null || GetLocalTicket._sig_key.length <= 0 || C4379u.f5246B == null || C4379u.f5246B.length <= 0) {
            return null;
        }
        byte[] bArr = new byte[str.getBytes().length + 2 + 8 + 2 + GetLocalTicket._sig.length + 2 + GetLocalTicket._sig_key.length];
        C4393util.int16_to_buf(bArr, 0, str.getBytes().length);
        System.arraycopy(str.getBytes(), 0, bArr, 2, str.getBytes().length);
        int length = str.getBytes().length + 2;
        C4393util.int64_to_buf(bArr, length, j);
        int i = length + 8;
        C4393util.int16_to_buf(bArr, i, GetLocalTicket._sig.length);
        int i2 = i + 2;
        System.arraycopy(GetLocalTicket._sig, 0, bArr, i2, GetLocalTicket._sig.length);
        int length2 = i2 + GetLocalTicket._sig.length;
        C4393util.int16_to_buf(bArr, length2, GetLocalTicket._sig_key.length);
        int i3 = length2 + 2;
        System.arraycopy(GetLocalTicket._sig_key, 0, bArr, i3, GetLocalTicket._sig_key.length);
        int length3 = GetLocalTicket._sig_key.length + i3;
        return cryptor.encrypt(bArr, 0, bArr.length, C4379u.f5246B);
    }

    public List<WloginLoginInfo> GetAllLoginInfo() {
        return this.f5172mG.m67k();
    }

    public long GetAppidFromUrl(String str) {
        if (str == null) {
            return -1L;
        }
        int indexOf = str.indexOf("f=");
        if (indexOf == -1 || indexOf + 2 >= str.length()) {
            return -1L;
        }
        String str2 = "";
        for (int i = indexOf + 2; i < str.length() && str.charAt(i) != '&'; i++) {
            str2 = str2 + str.charAt(i);
        }
        try {
            return Long.parseLong(str2);
        } catch (Exception e) {
            return -1L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Boolean GetBasicUserInfo(String str, WloginSimpleInfo wloginSimpleInfo) {
        long parseLong;
        boolean z;
        boolean z2;
        if (str == null) {
            return false;
        }
        if (C4393util.check_uin_account(str).booleanValue()) {
            parseLong = Long.parseLong(str);
            z = true;
        } else {
            parseLong = this.f5172mG.m83b(str);
            z = parseLong != 0;
        }
        if (z) {
            WloginSimpleInfo m77d = this.f5172mG.m77d(parseLong);
            if (m77d == null) {
                z2 = false;
                return Boolean.valueOf(z2);
            } else if (wloginSimpleInfo != null) {
                wloginSimpleInfo.get_clone(new WloginSimpleInfo(m77d._uin, m77d._face, m77d._age, m77d._gender, m77d._nick, m77d._img_type, m77d._img_format, m77d._img_url));
            }
        }
        z2 = z;
        return Boolean.valueOf(z2);
    }

    public DevlockInfo GetDevLockInfo(String str) {
        return GetDevLockInfo(str, 0L);
    }

    public DevlockInfo GetDevLockInfo(String str, long j) {
        if (j <= 0) {
            j = this.mAysncSeq;
        }
        return C4379u.m85b(j)._devlock_info;
    }

    public byte[] GetGuid() {
        if (C4379u.f5245A == null || C4379u.f5245A.length <= 0) {
            return null;
        }
        byte[] bArr = new byte[C4379u.f5245A.length];
        System.arraycopy(C4379u.f5245A, 0, bArr, 0, C4379u.f5245A.length);
        return bArr;
    }

    public WloginLastLoginInfo GetLastLoginInfo() {
        List<WloginLoginInfo> m67k = this.f5172mG.m67k();
        if (m67k == null) {
            return null;
        }
        WloginLoginInfo wloginLoginInfo = null;
        for (WloginLoginInfo wloginLoginInfo2 : m67k) {
            if (wloginLoginInfo == null) {
                wloginLoginInfo = wloginLoginInfo2;
            } else {
                if (wloginLoginInfo2.mCreateTime <= wloginLoginInfo.mCreateTime) {
                    wloginLoginInfo2 = wloginLoginInfo;
                }
                wloginLoginInfo = wloginLoginInfo2;
            }
        }
        if (wloginLoginInfo != null) {
            return (wloginLoginInfo.mAccount == null || wloginLoginInfo.mAccount.length() <= 0) ? new WloginLastLoginInfo(String.valueOf(wloginLoginInfo.mUin), wloginLoginInfo.mUin) : new WloginLastLoginInfo(wloginLoginInfo.mAccount, wloginLoginInfo.mUin);
        }
        return null;
    }

    public WUserSigInfo GetLocalSig(String str, long j) {
        WUserSigInfo wUserSigInfo;
        Exception e;
        long parseLong;
        if (str == null) {
            C4393util.LOGI("userAccount null", "");
            return null;
        }
        try {
            if (C4393util.check_uin_account(str).booleanValue()) {
                parseLong = Long.parseLong(str);
            } else {
                parseLong = this.f5172mG.m83b(str);
                if (parseLong == 0) {
                    return null;
                }
            }
            WloginSigInfo m95a = this.f5172mG.m95a(parseLong, j);
            if (m95a != null) {
                wUserSigInfo = new WUserSigInfo();
                try {
                    wUserSigInfo.uin = str;
                    wUserSigInfo.get_clone(m95a);
                } catch (Exception e2) {
                    e = e2;
                    C4393util.printException(e, str);
                    return wUserSigInfo;
                }
            } else {
                wUserSigInfo = null;
            }
        } catch (Exception e3) {
            wUserSigInfo = null;
            e = e3;
        }
        return wUserSigInfo;
    }

    public Ticket GetLocalTicket(String str, long j, int i) {
        C4393util.LOGI("GetLocalTicket appid=" + j, str);
        if (str == null) {
            C4393util.LOGI("userAccount null", "");
            return null;
        }
        return GetUserSigInfoTicket(GetLocalSig(str, j), i);
    }

    public int GetOpenKeyWithoutPasswd(String str, long j, long j2, int i, WUserSigInfo wUserSigInfo) {
        return GetStWithoutPasswd(str, j, this.mOpenAppid, -1L, i, j2, null, wUserSigInfo, null, null, 0, null);
    }

    public byte[] GetPictureData(String str) {
        return GetPictureData(str, 0L);
    }

    public byte[] GetPictureData(String str, long j) {
        if (j <= 0) {
            j = this.mAysncSeq;
        }
        return C4379u.m85b(j)._t105.m258a();
    }

    @Deprecated
    public byte[] GetPicturePrompt(String str) {
        return GetPicturePrompt(str, 0L);
    }

    @Deprecated
    public byte[] GetPicturePrompt(String str, long j) {
        if (j <= 0) {
            j = this.mAysncSeq;
        }
        return C4379u.m85b(j)._t165.m318c();
    }

    public String GetPicturePromptValue(String str) {
        return GetPicturePromptValue(str, 0L);
    }

    public String GetPicturePromptValue(String str, long j) {
        byte[] GetPicturePrompt = GetPicturePrompt(str, j);
        if (GetPicturePrompt == null || GetPicturePrompt.length <= 3) {
            return "";
        }
        int buf_to_int32 = C4393util.buf_to_int32(GetPicturePrompt, 0);
        int i = 4;
        int i2 = 0;
        while (i2 < buf_to_int32 && GetPicturePrompt.length >= i + 1) {
            int buf_to_int8 = C4393util.buf_to_int8(GetPicturePrompt, i);
            int i3 = i + 1;
            if (GetPicturePrompt.length < i3 + buf_to_int8) {
                return "";
            }
            String str2 = new String(GetPicturePrompt, i3, buf_to_int8);
            int i4 = i3 + buf_to_int8;
            if (GetPicturePrompt.length < i4 + 2) {
                return "";
            }
            int buf_to_int322 = C4393util.buf_to_int32(GetPicturePrompt, i4);
            int i5 = i4 + 4;
            if (GetPicturePrompt.length < i5 + buf_to_int322) {
                return "";
            }
            String str3 = new String(GetPicturePrompt, i5, buf_to_int322);
            int i6 = buf_to_int322 + i5;
            if (str2.equals("pic_reason")) {
                return str3;
            }
            i2++;
            i = i6;
        }
        return "";
    }

    public Ticket GetPskey(String str, long j, String[] strArr, WtTicketPromise wtTicketPromise) {
        Bundle bundle = new Bundle();
        bundle.putStringArray("domains", strArr);
        String str2 = "";
        for (int i = 0; i < strArr.length; i++) {
            str2 = str2 + strArr[i] + ",";
        }
        C4393util.LOGI("GetPskey appid " + j + " domains " + str2, str);
        return GetTicket(str, j, 1048576, wtTicketPromise, bundle);
    }

    public Ticket GetSkey(String str, long j, WtTicketPromise wtTicketPromise) {
        return GetTicket(str, j, 4096, wtTicketPromise, null);
    }

    public int GetStViaSMSVerifyLogin(String str, long j, long j2, int i, WUserSigInfo wUserSigInfo) {
        C4393util.LOGI("user:" + str + " GetStViaSMSVerifyLogin ...", str);
        return GetStWithPasswd(str, j, i, j2, null, false, C4204j.f4971x ? C4204j.f4973z : "", wUserSigInfo, null, true, 0);
    }

    public int GetStViaSMSVerifyLogin(String str, long j, long j2, long[] jArr, int i, WUserSigInfo wUserSigInfo) {
        byte[][] bArr = (jArr == null || jArr.length <= 0) ? null : (byte[][]) Array.newInstance(Byte.TYPE, jArr.length, 0);
        C4393util.LOGI("user:" + str + " GetStViaSMSVerifyLogin ...", str);
        return GetStWithPasswd(str, j, i, j2, jArr, false, C4204j.f4971x ? C4204j.f4973z : "", wUserSigInfo, bArr, true, 0);
    }

    public int GetStWithPasswdMd5(String str, long j, long j2, int i, String str2, WUserSigInfo wUserSigInfo) {
        return GetStWithPasswd(str, j, i, j2, null, true, str2, wUserSigInfo, null, false, 0);
    }

    @Deprecated
    public int GetStWithPasswdMd5(String str, long j, String str2, WUserSigInfo wUserSigInfo) {
        return GetStWithPasswd(str, j, this.mMainSigMap, 1L, null, true, str2, wUserSigInfo, null, false, 0);
    }

    public int GetStWithPasswdReserved(String str, long j, int i, long j2, long[] jArr, boolean z, String str2, WUserSigInfo wUserSigInfo, byte[][] bArr) {
        return GetStWithPasswd(str, j, i, j2, jArr, z, str2, wUserSigInfo, bArr, false, 0);
    }

    public int GetStWithPasswdReserved(String str, long j, long j2, int i, String str2, WUserSigInfo wUserSigInfo) {
        return GetStWithPasswd(str, j, i, j2, null, false, str2, wUserSigInfo, null, false, 0);
    }

    @Deprecated
    public int GetStWithPasswdReserved(String str, long j, String str2, WUserSigInfo wUserSigInfo) {
        return GetStWithPasswd(str, j, this.mMainSigMap, 1L, null, false, str2, wUserSigInfo, null, false, 0);
    }

    public int GetStWithoutPasswd(String str, long j, long j2, long j3, int i, long j4, long[] jArr, WUserSigInfo wUserSigInfo, byte[][] bArr, byte[][] bArr2) {
        return GetStWithoutPasswd(str, j, j2, j3, i, j4, jArr, wUserSigInfo, bArr, bArr2, 0, null);
    }

    public int GetStWithoutPasswd(String str, long j, long j2, long j3, int i, WUserSigInfo wUserSigInfo) {
        return GetStWithoutPasswd(str, j, j2, -1L, i, j3, null, wUserSigInfo, null, null, 0, null);
    }

    public int GetStWithoutPasswd(String str, long j, long j2, long j3, int i, byte[] bArr, byte[] bArr2, byte[] bArr3, WUserSigInfo wUserSigInfo) {
        r14[0][0] = 1;
        byte[][] bArr4 = {new byte[1], bArr, bArr2, bArr3};
        return GetStWithoutPasswd(str, j, j2, -1L, i, j3, null, wUserSigInfo, null, bArr4, 0, null);
    }

    @Deprecated
    public int GetStWithoutPasswd(String str, long j, long j2, WUserSigInfo wUserSigInfo) {
        return GetStWithoutPasswd(str, j, j2, -1L, this.mMainSigMap, 1L, null, wUserSigInfo, null, null, 0, null);
    }

    public int GetStWithoutPasswd(byte[] bArr, long j, int i, WUserSigInfo wUserSigInfo) {
        byte[] decrypt;
        int buf_to_int16;
        if (bArr == null || bArr.length <= 0 || (decrypt = cryptor.decrypt(bArr, 0, bArr.length, C4379u.f5246B)) == null || decrypt.length <= 0 || 2 > decrypt.length || (buf_to_int16 = C4393util.buf_to_int16(decrypt, 0)) <= 0 || buf_to_int16 + 2 > decrypt.length) {
            return C4393util.E_INPUT;
        }
        String str = new String(decrypt, 2, buf_to_int16);
        int i2 = buf_to_int16 + 2;
        if (i2 + 8 > decrypt.length) {
            return C4393util.E_INPUT;
        }
        long buf_to_int64 = C4393util.buf_to_int64(decrypt, i2);
        int i3 = i2 + 8;
        if (i3 + 2 > decrypt.length) {
            return C4393util.E_INPUT;
        }
        int buf_to_int162 = C4393util.buf_to_int16(decrypt, i3);
        int i4 = i3 + 2;
        if (buf_to_int162 <= 0 || i4 + buf_to_int162 > decrypt.length) {
            return C4393util.E_INPUT;
        }
        byte[] bArr2 = new byte[buf_to_int162];
        System.arraycopy(decrypt, i4, bArr2, 0, bArr2.length);
        int i5 = i4 + buf_to_int162;
        if (i5 + 2 > decrypt.length) {
            return C4393util.E_INPUT;
        }
        int buf_to_int163 = C4393util.buf_to_int16(decrypt, i5);
        int i6 = i5 + 2;
        if (buf_to_int163 <= 0 || i6 + buf_to_int163 > decrypt.length) {
            return C4393util.E_INPUT;
        }
        byte[] bArr3 = new byte[buf_to_int163];
        System.arraycopy(decrypt, i6, bArr3, 0, bArr3.length);
        int i7 = i6 + buf_to_int163;
        r0[0][0] = 2;
        byte[][] bArr4 = {new byte[1], bArr2, bArr3};
        return GetStWithoutPasswd(str, buf_to_int64, j, -1L, i, 1L, null, wUserSigInfo, null, bArr4, 0, null);
    }

    public Ticket GetTicket(final String str, final long j, final int i, final WtTicketPromise wtTicketPromise, final Bundle bundle) {
        C4393util.LOGI("GetTicket " + str + ", " + j + " sig " + Integer.toHexString(i) + " " + (bundle == null ? "null" : Integer.valueOf(bundle.size())), "");
        String[] strArr = null;
        int i2 = 2;
        do {
            WUserSigInfo GetLocalSig = GetLocalSig(str, j);
            if (GetLocalSig != null) {
                Ticket GetUserSigInfoTicket = GetUserSigInfoTicket(GetLocalSig, i);
                if (GetUserSigInfoTicket != null && GetUserSigInfoTicket._sig != null && GetUserSigInfoTicket._sig.length != 0) {
                    long m72f = C4379u.m72f();
                    if (bundle != null && i == 1048576) {
                        strArr = bundle.getStringArray("domains");
                    }
                    int isPskeyExpired = isPskeyExpired(i, strArr, GetUserSigInfoTicket, m72f, i2);
                    if (isPskeyExpired == 1) {
                        break;
                    } else if (isPskeyExpired == 2) {
                        i2--;
                        continue;
                    } else if (isPskeyExpired != 3) {
                        C4393util.LOGI("GetTicket sigType:0x" + Integer.toHexString(i) + " expires in " + (((GetUserSigInfoTicket._expire_time - m72f) / 60) / 60) + "h", "");
                        if (m72f >= GetUserSigInfoTicket._expire_time) {
                            if (i2 == 1) {
                                break;
                            }
                            RefreshMemorySig();
                            i2--;
                            continue;
                        } else {
                            return GetUserSigInfoTicket;
                        }
                    } else {
                        return GetUserSigInfoTicket;
                    }
                } else if (i2 == 1) {
                    break;
                } else {
                    RefreshMemorySig();
                    i2--;
                    continue;
                }
            } else if (i2 == 1) {
                break;
            } else {
                RefreshMemorySig();
                i2--;
                continue;
            }
        } while (i2 > 0);
        if (IsNeedLoginWithPasswd(str, j).booleanValue()) {
            ErrMsg errMsg = new ErrMsg();
            errMsg.setType(C4393util.E_NO_KEY);
            if (wtTicketPromise != null) {
                wtTicketPromise.Failed(errMsg);
            }
        } else {
            WUserSigInfo wUserSigInfo = new WUserSigInfo();
            int i3 = bundle != null ? bundle.getInt("subappid", 1) : 1;
            if (strArr != null) {
                int min = Math.min(20, strArr.length);
                for (int i4 = 0; i4 < min; i4++) {
                    String str2 = strArr[i4];
                    if (str2 != null && str2.length() > 0) {
                        wUserSigInfo._domains.add(str2);
                    }
                }
            }
            GetStWithoutPasswd(str, j, j, i3, i, wUserSigInfo, new WtTicketPromise() { // from class: oicq.wlogin_sdk.request.WtloginHelper.1
                @Override // oicq.wlogin_sdk.request.WtTicketPromise
                public void Done(Ticket ticket) {
                    if (wtTicketPromise != null) {
                        wtTicketPromise.Done(WtloginHelper.this.GetTicket(str, j, i, null, bundle));
                    }
                }

                @Override // oicq.wlogin_sdk.request.WtTicketPromise
                public void Failed(ErrMsg errMsg2) {
                    if (wtTicketPromise != null) {
                        wtTicketPromise.Failed(errMsg2);
                    }
                }

                @Override // oicq.wlogin_sdk.request.WtTicketPromise
                public void Timeout(ErrMsg errMsg2) {
                    if (wtTicketPromise != null) {
                        wtTicketPromise.Timeout(errMsg2);
                    }
                }
            });
        }
        return null;
    }

    public long GetTimeDifference() {
        return C4379u.f5273ab;
    }

    public Boolean IsNeedLoginWithPasswd(String str, long j) {
        long parseLong;
        boolean z = false;
        int i = 1;
        if (str == null) {
            return true;
        }
        synchronized (this) {
            if (C4393util.check_uin_account(str).booleanValue()) {
                parseLong = Long.parseLong(str);
            } else {
                parseLong = this.f5172mG.m83b(str);
                if (parseLong == 0) {
                    z = true;
                }
            }
            WloginSigInfo m95a = this.f5172mG.m95a(parseLong, j);
            if (m95a != null && m95a._en_A1 != null && m95a._en_A1.length != 0 && m95a._noPicSig != null && m95a._noPicSig.length != 0) {
                i = 2;
            } else if (m95a == null || m95a._TGT == null || m95a._TGT.length == 0 || m95a.iSExpireA2(C4379u.m72f())) {
                z = true;
                i = 3;
            } else {
                i = 0;
            }
        }
        C4393util.LOGI("user:" + str + " appid:" + j + " need password:" + z + " flag=" + i, str);
        return Boolean.valueOf(z);
    }

    public Boolean IsUserHaveA1(String str, long j) {
        long parseLong;
        WloginSigInfo m95a;
        if (str == null) {
            return false;
        }
        if (C4393util.check_uin_account(str).booleanValue()) {
            parseLong = Long.parseLong(str);
        } else {
            parseLong = this.f5172mG.m83b(str);
            if (parseLong == 0) {
                m95a = null;
                if (m95a != null || m95a._en_A1 == null || m95a._en_A1.length <= 0) {
                    C4393util.LOGI("userAccount:" + str + " dwAppid:" + j + " IsUserHaveA1 return: null", str);
                    return false;
                }
                C4393util.LOGI("userAccount:" + str + " dwAppid:" + j + " IsUserHaveA1 return: not null", str);
                return true;
            }
        }
        m95a = this.f5172mG.m95a(parseLong, j);
        if (m95a == null) {
        }
        if (m95a != null) {
        }
        C4393util.LOGI("userAccount:" + str + " dwAppid:" + j + " IsUserHaveA1 return: null", str);
        return false;
    }

    public boolean IsWtLoginUrl(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf("?k=")) == -1 || indexOf + 3 + 32 > str.length()) {
            return false;
        }
        int i = indexOf + 3;
        String substring = str.substring(i, i + 32);
        return C4393util.base64_decode_url(substring.getBytes(), substring.length()) != null;
    }

    public byte[] PickupQRCode(String str) {
        if (str != null && str.matches(".*[?&]k=([^&$]+).*")) {
            String replaceAll = str.replaceAll(".*[?&]k=([^&$]+).*", "$1");
            return C4393util.base64_decode_url(replaceAll.getBytes(), replaceAll.length());
        }
        return null;
    }

    public Intent PrepareQloginResult(String str, long j, long j2, int i, WFastLoginInfo wFastLoginInfo) {
        Intent intent = new Intent();
        intent.putExtra("quicklogin_uin", str);
        byte[] bArr = (byte[]) wFastLoginInfo._outA1.clone();
        if (bArr != null && bArr.length > 0) {
            intent.putExtra("quicklogin_buff", new RSACrypt(this.mContext).EncryptData(C4393util.get_cp_pubkey(this.mContext, j, j2), bArr));
        }
        intent.putExtra("quicklogin_ret", i);
        return intent;
    }

    public Intent PrepareSilenceLoginIntent(long j, long j2, String str) {
        byte[] bArr = C4393util.get_rsa_pubkey(this.mContext);
        if (bArr == null || bArr.length == 0) {
            bArr = C4393util.string_to_buf(RSACrypt.DEFAULT_PUB_KEY);
        }
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putLong("dstSsoVer", 1L);
        bundle.putLong("dstAppid", j);
        bundle.putLong("subDstAppid", j2);
        bundle.putByteArray("dstAppVer", str.getBytes());
        bundle.putByteArray("publickey", bArr);
        intent.putExtra("key_params", bundle);
        intent.putExtra("key_action", "action_quick_login");
        return intent;
    }

    public int QueryCodeResult(long j, WUserSigInfo wUserSigInfo) {
        C4393util.LOGI(" QueryCodeResult ...", "");
        C4304d c4304d = new C4304d();
        TransReqContext transReqContext = new TransReqContext();
        transReqContext.set_code2d_func_req();
        transReqContext.set_subcmd(c4304d.get_cmd());
        C4393util.LOGI("qrsig " + C4393util.buf_to_string(C4303c.f5093i));
        transReqContext._body = c4304d.m237a(0L, j, C4303c.f5093i, new byte[0]);
        return RequestTransport(0, 1, null, j, c4304d._role, transReqContext, wUserSigInfo);
    }

    public void RefreshMemorySig() {
        this.f5172mG.m68j();
    }

    public int RefreshPictureData(String str, WUserSigInfo wUserSigInfo) {
        if (wUserSigInfo == null) {
            wUserSigInfo = new WUserSigInfo();
        }
        return RefreshPictureData(str, wUserSigInfo, 0);
    }

    public int RefreshSMSData(String str, long j, WUserSigInfo wUserSigInfo) {
        return RefreshSMSData(str, j, wUserSigInfo == null ? new WUserSigInfo() : wUserSigInfo, 0);
    }

    public int RefreshSMSVerifyLoginCode(String str, WUserSigInfo wUserSigInfo) {
        return RefreshSMSVerifyLoginCode(str, wUserSigInfo, 0);
    }

    public int RegGetAccount(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i, WUserSigInfo wUserSigInfo) {
        if (bArr3 == null || bArr3.length <= 0) {
            return C4393util.E_INPUT;
        }
        C4393util.LOGI("RegGetAccount ...", "");
        C4198d c4198d = new C4198d();
        TransReqContext transReqContext = new TransReqContext();
        C4204j c4204j = this.mRegStatus;
        if (bArr != null) {
            c4204j.f4984j = (byte[]) bArr.clone();
        } else {
            c4204j.f4984j = new byte[0];
        }
        if (i == 4) {
            c4204j.f4976b = "";
        }
        transReqContext.set_register_req();
        transReqContext.set_subcmd(c4198d.m385a());
        transReqContext._body = c4198d.m375a(c4204j.f4979e, bArr, bArr3, bArr4, i, c4204j.f4976b.getBytes(), bArr2, false, null, 0L, C4379u.f5249E, C4379u.f5294z);
        return RequestTransport(0, 1, null, 0L, c4204j.f4983i, transReqContext, wUserSigInfo);
    }

    public int RegGetSMSVerifyLoginAccount(byte[] bArr, byte[] bArr2, byte[] bArr3, WUserSigInfo wUserSigInfo) {
        C4393util.LOGI("RegGetSMSVerifyLoginAccount ...", "");
        C4198d c4198d = new C4198d();
        TransReqContext transReqContext = new TransReqContext();
        C4204j c4204j = this.mRegStatus;
        if (bArr != null) {
            c4204j.f4984j = (byte[]) bArr.clone();
        } else {
            c4204j.f4984j = new byte[0];
        }
        C4204j.f4971x = true;
        C4204j.f4973z = C4393util.get_mpasswd();
        transReqContext.set_register_req();
        transReqContext.set_subcmd(c4198d.m385a());
        transReqContext._body = c4198d.m375a(c4204j.f4979e, bArr, C4204j.f4973z.getBytes(), bArr3, 1, c4204j.f4976b.getBytes(), bArr2, true, GetGuid(), c4204j.f4982h, C4379u.f5249E, C4379u.f5294z);
        return RequestTransport(0, 1, null, 0L, c4204j.f4983i, transReqContext, wUserSigInfo);
    }

    public int RegQueryAccount(int i, byte[] bArr, long j, WUserSigInfo wUserSigInfo) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        C4393util.LOGI("RegQueryAccount ...", "");
        this.mRegStatus = new C4204j();
        this.mRegStatus.f4976b = new String(bArr);
        C4199e c4199e = new C4199e();
        TransReqContext transReqContext = new TransReqContext();
        C4204j c4204j = this.mRegStatus;
        transReqContext.set_register_req();
        transReqContext.set_subcmd(c4199e.m385a());
        transReqContext._body = c4199e.m373a(i, bArr, j);
        return RequestTransport(0, 1, null, 0L, c4204j.f4983i, transReqContext, wUserSigInfo);
    }

    public int RegQueryClientSentMsgStatus(WUserSigInfo wUserSigInfo) {
        C4393util.LOGI("RegQueryClientSentMsgStatus ...", "");
        C4200f c4200f = new C4200f();
        TransReqContext transReqContext = new TransReqContext();
        C4204j c4204j = this.mRegStatus;
        transReqContext.set_register_req();
        transReqContext.set_subcmd(c4200f.m385a());
        transReqContext._body = c4200f.m372b(c4204j.f4979e, this.mRegStatus.f4990p);
        return RequestTransport(0, 1, null, 0L, c4204j.f4983i, transReqContext, wUserSigInfo);
    }

    public int RegRequestServerResendMsg(WUserSigInfo wUserSigInfo) {
        C4393util.LOGI("RegRequestServerResendMsg ...", "");
        C4201g c4201g = new C4201g();
        TransReqContext transReqContext = new TransReqContext();
        C4204j c4204j = this.mRegStatus;
        transReqContext.set_register_req();
        transReqContext.set_subcmd(c4201g.m385a());
        transReqContext._body = c4201g.m371b(c4204j.f4979e, (byte[]) null);
        return RequestTransport(0, 1, null, 0L, c4204j.f4983i, transReqContext, wUserSigInfo);
    }

    public int RegSubmitMobile(String str, byte[] bArr, byte[] bArr2, int i, int i2, int i3, long j, long j2, WUserSigInfo wUserSigInfo) {
        return RegSubmitMobile(str == null ? new byte[0] : str.getBytes(), bArr, null, bArr2, i, i2, i3, j, j2, wUserSigInfo);
    }

    public int RegSubmitMobile(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, long j, long j2, WUserSigInfo wUserSigInfo) {
        return RegSubmitMobile(null, bArr, bArr2, bArr3, i, i2, i3, j, j2, wUserSigInfo);
    }

    public int RegSubmitMsgChk(byte[] bArr, WUserSigInfo wUserSigInfo) {
        if (bArr == null) {
            return C4393util.E_INPUT;
        }
        C4393util.LOGI("RegSubmitMsgChk ...", "");
        C4203i c4203i = new C4203i();
        TransReqContext transReqContext = new TransReqContext();
        C4204j c4204j = this.mRegStatus;
        transReqContext.set_register_req();
        transReqContext.set_subcmd(c4203i.m385a());
        transReqContext._body = c4203i.m369b(c4204j.f4979e, bArr);
        return RequestTransport(0, 1, null, 0L, c4204j.f4983i, transReqContext, wUserSigInfo);
    }

    public int RequestTransport(int i, int i2, String str, long j, long j2, TransReqContext transReqContext, WUserSigInfo wUserSigInfo) {
        int m217a;
        if (i == 0) {
            new HelperThread(this, this.mHelperHandler, i2, str, j, j2, transReqContext, wUserSigInfo, "RequestTransport").RunReq(9);
            return C4393util.E_PENDING;
        }
        C4379u m96a = this.f5172mG.m96a(0L);
        C4393util.LOGI("user:" + str + " encrypt:" + i2 + " appid:" + j + " role:" + j2 + " Seq:" + m96a.f5303h + " RequestTransport...", str);
        m96a.f5302g = str;
        if (i2 == 0) {
            m96a.f5301f = 0L;
            m217a = new C4359aa(m96a).m217a(m96a.f5301f, transReqContext, (byte[]) null, (byte[]) null, j, j2, wUserSigInfo);
        } else if (str == null) {
            m96a.f5308m = 0;
            m217a = new C4359aa(m96a).m217a(0L, transReqContext, (byte[]) null, (byte[]) null, j, j2, wUserSigInfo);
        } else {
            WloginSimpleInfo wloginSimpleInfo = new WloginSimpleInfo();
            if (str == null || !GetBasicUserInfo(str, wloginSimpleInfo).booleanValue()) {
                m217a = C4393util.E_NO_UIN;
            } else {
                WloginSigInfo m95a = m96a.m95a(wloginSimpleInfo._uin, j);
                if (m95a == null) {
                    m217a = C4393util.E_NO_KEY;
                } else {
                    m96a.f5301f = wloginSimpleInfo._uin;
                    m217a = new C4359aa(m96a).m217a(wloginSimpleInfo._uin, transReqContext, m95a._userStSig, m95a._userSt_Key, j, j2, wUserSigInfo);
                }
            }
        }
        m96a.m69i();
        C4393util.LOGI("user:" + str + " encrypt:" + i2 + " appid:" + j + " role:" + j2 + " Seq:" + m96a.f5303h + " RequestTransport ret=" + m217a, str);
        return m217a;
    }

    public int RequestTransportMsf(int i, int i2, String str, long j, long j2, TransReqContext transReqContext) {
        int i3;
        if (i == 0) {
            new HelperThread(this, this.mHelperHandler, i2, str, j, j2, transReqContext, "RequestTransportMsf").RunReq(10);
            return C4393util.E_PENDING;
        }
        C4379u m96a = this.f5172mG.m96a(0L);
        C4393util.LOGI("user:" + str + " encrypt:" + i2 + " appid:" + j + " role:" + j2 + " Seq:" + m96a.f5303h + " RequestTransportMsf...", str);
        m96a.f5302g = str;
        if (i2 != 0) {
            WloginSimpleInfo wloginSimpleInfo = new WloginSimpleInfo();
            if (str == null || !GetBasicUserInfo(str, wloginSimpleInfo).booleanValue()) {
                i3 = C4393util.E_NO_UIN;
            } else {
                WloginSigInfo m95a = m96a.m95a(wloginSimpleInfo._uin, j);
                if (m95a == null) {
                    i3 = C4393util.E_NO_KEY;
                } else {
                    m96a.f5301f = wloginSimpleInfo._uin;
                    i3 = new C4359aa(m96a).m216a(wloginSimpleInfo._uin, transReqContext, m95a._userStSig, m95a._userSt_Key, m95a._TGT, j, j2, new WUserSigInfo());
                }
            }
        } else if (C4393util.check_uin_account(str).booleanValue() && Long.parseLong(str) == 0) {
            m96a.f5301f = 0L;
            i3 = new C4359aa(m96a).m216a(0L, transReqContext, (byte[]) null, (byte[]) null, new byte[0], j, j2, new WUserSigInfo());
        } else {
            WloginSimpleInfo wloginSimpleInfo2 = new WloginSimpleInfo();
            if (str == null || !GetBasicUserInfo(str, wloginSimpleInfo2).booleanValue()) {
                i3 = C4393util.E_NO_UIN;
            } else {
                WloginSigInfo m95a2 = m96a.m95a(wloginSimpleInfo2._uin, j);
                if (m95a2 == null) {
                    i3 = C4393util.E_NO_KEY;
                } else {
                    m96a.f5301f = wloginSimpleInfo2._uin;
                    i3 = new C4359aa(m96a).m216a(wloginSimpleInfo2._uin, transReqContext, (byte[]) null, (byte[]) null, m95a2._TGT, j, j2, new WUserSigInfo());
                }
            }
        }
        m96a.m69i();
        C4393util.LOGI("user:" + str + " encrypt:" + i2 + " appid:" + j + " role:" + j2 + " Seq:" + m96a.f5303h + " RequestTransportMsf ret=" + i3, str);
        return i3;
    }

    public void SetAppClientVersion(int i) {
        C4379u.f5291w = i;
    }

    public void SetCanWebVerify(boolean z) {
        C4370l.f5205I = z;
    }

    public void SetDevlockMobileType(int i) {
        C4377s.f5244I = i;
    }

    public void SetImgType(int i) {
        C4379u.f5292x = i;
        this.mMiscBitmap |= 128;
    }

    public WtloginListener SetListener(WtloginListener wtloginListener) {
        WtloginListener wtloginListener2 = this.mListener;
        this.mListener = wtloginListener;
        return wtloginListener2;
    }

    public void SetLocalId(int i) {
        C4379u.f5289u = i;
    }

    public void SetMsfTransportFlag(int i) {
        this.f5172mG.f5306k = i;
        if (i != 0) {
            C4379u.f5275ad = new byte[4];
            C4379u.f5274ac = 0L;
            this.f5172mG.f5307l = 45000;
        }
    }

    public int SetNeedForPayToken(String str, String str2, byte[] bArr) {
        if (str == null || str.length() <= 0) {
            return -1;
        }
        C4370l.f5206J = str.getBytes();
        if (bArr != null) {
            C4370l.f5208L = bArr;
        }
        if (str2 == null || str2.length() == 0) {
            str2 = C4393util.getChannelId(this.mContext, null);
        }
        C4370l.f5207K = str2.getBytes();
        return (str2 == null || str2.length() == 0) ? -2 : 0;
    }

    public void SetPicType(int i) {
        C4379u.f5293y = i;
    }

    public void SetRegDevLockFlag(int i) {
        C4379u.f5294z = i;
    }

    public void SetSigMap(int i) {
        this.mMainSigMap = i | 192;
    }

    public void SetTestHost(int i, String str) {
        oicq_request.m151a(i, str);
    }

    public void SetTimeOut(int i) {
        this.f5172mG.f5307l = i;
    }

    public int VerifyCode(String str, long j, boolean z, byte[] bArr, int[] iArr, int i, WUserSigInfo wUserSigInfo) {
        WloginSimpleInfo wloginSimpleInfo = new WloginSimpleInfo();
        if (GetBasicUserInfo(str, wloginSimpleInfo).booleanValue()) {
            long j2 = wloginSimpleInfo._uin;
            WloginSigInfo FindUserSig = FindUserSig(j2, j);
            if (FindUserSig == null) {
                return C4393util.E_NO_KEY;
            }
            C4271cl c4271cl = new C4271cl();
            byte[] bArr2 = new byte[0];
            if (FindUserSig.f5318_G != null && FindUserSig.f5318_G.length > 0 && FindUserSig._dpwd != null && FindUserSig._dpwd.length > 0 && FindUserSig._randseed != null && FindUserSig._randseed.length > 0) {
                c4271cl.m264a(FindUserSig.f5318_G, j2, C4379u.f5245A, FindUserSig._dpwd, j, 1L, FindUserSig._randseed);
                bArr2 = c4271cl.m318c();
            }
            C4393util.LOGI("user:" + str + " VerifyCode ...", str);
            C4305e c4305e = new C4305e();
            TransReqContext transReqContext = new TransReqContext();
            transReqContext.set_code2d_func_req();
            transReqContext.set_subcmd(c4305e.get_cmd());
            transReqContext.setSTEncryptMethod();
            transReqContext.setWtST(FindUserSig);
            transReqContext._body = c4305e.m235a(j2, j, z, bArr, iArr, FindUserSig._userStSig, C4379u.f5245A, C4379u.f5249E, i, bArr2);
            return RequestTransport(0, 1, str, j, c4305e._role, transReqContext, wUserSigInfo);
        }
        return C4393util.E_NO_UIN;
    }

    public int VerifySMSVerifyLoginCode(String str, String str2, WUserSigInfo wUserSigInfo) {
        return VerifySMSVerifyLoginCode(str, str2, wUserSigInfo, 0);
    }

    public boolean getHasPassword(long j) {
        UinInfo m79c;
        String m73e = this.f5172mG.m73e(j);
        C4393util.LOGI("getHasPasswd ..." + String.valueOf(m73e), "" + j);
        if (m73e == null || (m79c = this.f5172mG.m79c(m73e)) == null) {
            return true;
        }
        boolean hasPassword = m79c.getHasPassword();
        C4393util.LOGI("getHasPasswd userAccount: " + m73e + ", uin: " + j + " hasPasswd: " + hasPassword, "");
        return hasPassword;
    }

    public int getStWithQrSig(String str, long j, long j2, int i, WUserSigInfo wUserSigInfo) {
        return getStWithQrSig(str, j, j2, i, wUserSigInfo, 0);
    }

    public String getUserAccountFromQuickLoginResultData(Intent intent) {
        boolean booleanExtra = intent.getBooleanExtra("isRetFromWeb", false);
        C4393util.LOGI("getUserAccountFromQuickLoginResultData isRetFromWeb " + booleanExtra);
        String stringExtra = !booleanExtra ? intent.getStringExtra("quicklogin_uin") : intent.getStringExtra("uin");
        return stringExtra == null ? "" : stringExtra;
    }

    public int onQuickLoginActivityResultData(QuickLoginParam quickLoginParam, Intent intent) {
        if (intent == null) {
            C4393util.LOGI("onActivityResultData data is null", "");
            return C4393util.E_INPUT;
        } else if (quickLoginParam == null) {
            C4393util.LOGI("onActivityResultData quickLoginParam is null", "");
            return C4393util.E_INPUT;
        } else {
            boolean booleanExtra = intent.getBooleanExtra("isRetFromWeb", false);
            C4393util.LOGI("onQuickLoginActivityResultData isRetFromWeb " + booleanExtra);
            if (booleanExtra) {
                return getStWithPtSig(intent.getStringExtra("uin"), intent.getStringExtra("sig"), quickLoginParam);
            }
            WUserSigInfo ResolveQloginIntentReserved = ResolveQloginIntentReserved(intent);
            if (ResolveQloginIntentReserved == null) {
                C4393util.LOGI("onActivityResultData ResolveQloginIntent failed", "");
                return C4393util.E_INPUT;
            }
            quickLoginParam.userSigInfo.uin = ResolveQloginIntentReserved.uin;
            quickLoginParam.userSigInfo._fastLoginBuf = ResolveQloginIntentReserved._fastLoginBuf;
            return getStWithQQSig("" + ResolveQloginIntentReserved.uin, quickLoginParam);
        }
    }

    public int quickLogin(Activity activity, long j, long j2, String str, QuickLoginParam quickLoginParam) {
        return C4321a.m223a(this.mContext, activity, j, j2, str, quickLoginParam);
    }

    public int quickRegisterCheckAccount(long j, long j2, int i, int i2, byte[] bArr, WUserSigInfo wUserSigInfo) {
        if (bArr == null || wUserSigInfo == null) {
            return C4393util.E_INPUT;
        }
        C4393util.LOGI("quickRegisterCheckAccount " + j + " appid " + j2, "" + j);
        Ticket GetLocalTicket = GetLocalTicket("" + j, j2, 64);
        if (GetLocalTicket == null) {
            C4393util.LOGI("quickRegisterCheckAccount no key", "" + j);
            return C4393util.E_NO_KEY;
        } else if (GetLocalTicket._sig == null || GetLocalTicket._sig.length == 0) {
            C4393util.LOGI("quickRegisterCheckAccount no key", "" + j);
            return C4393util.E_NO_KEY;
        } else if (GetLocalTicket._sig_key == null || GetLocalTicket._sig_key.length == 0) {
            C4393util.LOGI("quickRegisterCheckAccount no key", "" + j);
            return C4393util.E_NO_KEY;
        } else {
            C4195a c4195a = new C4195a();
            TransReqContext transReqContext = new TransReqContext();
            this.mRegStatus.f4986l = GetLocalTicket._sig_key;
            C4204j c4204j = this.mRegStatus;
            c4204j.f4981g = j2;
            c4204j.f4982h = i2;
            transReqContext.set_register_req();
            transReqContext.set_subcmd(c4195a.m385a());
            WloginSigInfo FindUserSig = FindUserSig(j, j2);
            transReqContext.setSTEncryptMethod();
            transReqContext.setWtST(FindUserSig);
            transReqContext._body = c4195a.m387a(j, (int) j2, (byte) 8, GetLocalTicket._sig, GetLocalTicket._sig_key, (byte) i, GetGuid(), i2, C4379u.f5249E, bArr, C4393util.generateGuid(this.mContext), C4393util.get_IMSI(this.mContext));
            if (transReqContext._body == null) {
                C4393util.LOGI("req_con._body is null", "" + j);
                return C4393util.E_INPUT;
            }
            return RequestTransport(0, 1, null, 0L, c4204j.f4983i, transReqContext, wUserSigInfo);
        }
    }

    public int quickRegisterGetAccount(long j, long j2, int i, int i2, byte[] bArr, byte[] bArr2, String str, WUserSigInfo wUserSigInfo) {
        if (bArr2 == null || bArr == null || str == null || wUserSigInfo == null || 6 > str.length()) {
            return C4393util.E_INPUT;
        }
        C4393util.LOGI("quickRegisterGetAccount " + j + " appid " + j2, "" + j);
        Ticket GetLocalTicket = GetLocalTicket("" + j, j2, 64);
        if (GetLocalTicket == null) {
            C4393util.LOGI("quickRegisterCheckAccount " + j + " appid " + j2 + " no key", "" + j);
            return C4393util.E_NO_KEY;
        } else if (GetLocalTicket._sig == null || GetLocalTicket._sig.length == 0) {
            C4393util.LOGI("quickRegisterCheckAccount no key", "" + j);
            return C4393util.E_NO_KEY;
        } else if (GetLocalTicket._sig_key == null || GetLocalTicket._sig_key.length == 0) {
            C4393util.LOGI("quickRegisterCheckAccount no key", "" + j);
            return C4393util.E_NO_KEY;
        } else {
            C4196b c4196b = new C4196b();
            TransReqContext transReqContext = new TransReqContext();
            this.mRegStatus.f4986l = GetLocalTicket._sig_key;
            C4204j c4204j = this.mRegStatus;
            c4204j.f4981g = j2;
            c4204j.f4982h = i2;
            transReqContext.set_register_req();
            transReqContext.set_subcmd(c4196b.m385a());
            WloginSigInfo FindUserSig = FindUserSig(j, j2);
            transReqContext.setSTEncryptMethod();
            transReqContext.setWtST(FindUserSig);
            transReqContext._body = c4196b.m386a(j, (int) j2, (byte) 8, GetLocalTicket._sig, GetLocalTicket._sig_key, (byte) i, bArr2, GetGuid(), i2, C4379u.f5249E, bArr, C4393util.generateGuid(this.mContext), C4393util.get_IMSI(this.mContext), str.getBytes(), this.mRegStatus.f4979e);
            if (transReqContext._body == null) {
                C4393util.LOGI("req_con._body is null", "" + j);
                return C4393util.E_INPUT;
            }
            return RequestTransport(0, 1, null, 0L, c4204j.f4983i, transReqContext, wUserSigInfo);
        }
    }

    public void setBabyQFlg(boolean z) {
        C4379u.f5278ag = z;
    }

    public void setCallSource(int i) {
        C4379u.f5277af = i;
    }

    public void setForQCall() {
        C4379u.f5284ap = true;
        WtloginMsfListener.CLIENT_CLASSNAME = "com.tencent.lightalk.msf.core.auth.WtProvider";
    }

    public void setHasPassword(long j, boolean z) {
        String m73e = this.f5172mG.m73e(j);
        C4393util.LOGI("setHasPasswd ..." + String.valueOf(m73e), "");
        if (m73e == null) {
            return;
        }
        this.f5172mG.m88a(m73e, Long.valueOf(j), z);
        C4393util.LOGI("setHasPasswd userAccount: " + m73e + ", uin: " + j + " hasPassword:" + z, "");
    }

    public void setMsgType(int i, int i2, int i3) {
        DevlockBase.C4306a.f5112a = i;
        DevlockBase.C4306a.f5113b = i2;
        DevlockBase.C4306a.f5114c = i3;
    }
}
