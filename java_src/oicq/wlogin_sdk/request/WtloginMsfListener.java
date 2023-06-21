package oicq.wlogin_sdk.request;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Semaphore;
import oicq.wlogin_sdk.tools.C4393util;
/* loaded from: classes.dex */
public class WtloginMsfListener implements Runnable {
    static Object TicketMgr;
    private byte[] data;
    private boolean flag;
    private int ret;
    private String ret_serviceCmd;
    private String ret_uin;
    private String serviceCmd;
    private int timeout;
    private String uin;
    private WUserSigInfo userSigInfo;
    public static String CLIENT_CLASSNAME = "com.tencent.mobileqq.msf.core.auth.WtProvider";
    private static final Object __SyncSeq = new Object();
    private static final Object __SyncCB = new Object();
    private static long __seq = 0;
    private static Map<Long, WtloginMsfListener> __cbs = new HashMap();
    private final Semaphore semp = new Semaphore(1);
    private byte[] ret_data = null;
    private boolean ret_success = false;

    public WtloginMsfListener(String str, String str2, byte[] bArr, int i, boolean z, WUserSigInfo wUserSigInfo) {
        this.uin = str == null ? "0" : str;
        this.serviceCmd = str2 == null ? "" : str2;
        this.data = bArr == null ? new byte[0] : bArr;
        this.timeout = i <= 0 ? 5000 : i;
        this.flag = z;
        this.userSigInfo = wUserSigInfo;
    }

    private static long allocateSeq() {
        long j;
        synchronized (__SyncSeq) {
            long j2 = __seq + 1;
            __seq = j2;
            j = j2 % 2147483647L;
        }
        return j;
    }

    public static void onAsyncReceive(String str, String str2, long j, byte[] bArr) {
        C4393util.LOGI("rpc receive " + str2 + " seq: " + j + " data:" + (bArr == null ? "null" : Integer.valueOf(bArr.length)), str);
        WtloginMsfListener pickSeq = pickSeq(j);
        if (pickSeq != null) {
            pickSeq.onReceiveData(str, str2, bArr);
        }
    }

    public static void onAsyncReceiveFail(String str, String str2, long j, int i) {
        C4393util.LOGI("rpc receive " + str2 + " seq: " + j + " fail:" + i, str);
        WtloginMsfListener pickSeq = pickSeq(j);
        if (pickSeq != null) {
            pickSeq.onReceiveFail(str, str2, i);
        }
    }

    private static WtloginMsfListener pickSeq(long j) {
        WtloginMsfListener wtloginMsfListener;
        synchronized (__SyncCB) {
            wtloginMsfListener = __cbs.get(Long.valueOf(j));
            __cbs.remove(Long.valueOf(j));
        }
        return wtloginMsfListener;
    }

    private int sendRPCData(byte[] bArr, int i) {
        Object invoke;
        long allocateSeq = allocateSeq();
        C4393util.LOGI("sendRPCData seq: " + allocateSeq, "");
        try {
            Class<?> cls = Class.forName("mqq.manager.TicketManager");
            if (TicketMgr == null) {
                Class<?> cls2 = Class.forName("com.tencent.common.app.BaseApplicationImpl");
                Class<?> cls3 = Class.forName("mqq.app.BaseActivity");
                Class<?> cls4 = Class.forName("mqq.app.AppRuntime");
                Method method = cls2.getMethod("getApplication", new Class[0]);
                Method method2 = cls2.getMethod("waitAppRuntime", cls3);
                Method method3 = cls4.getMethod("getManager", Integer.TYPE);
                Field field = cls4.getField("TICKET_MANAGER");
                Object invoke2 = method.invoke(null, new Object[0]);
                if (invoke2 != null && (invoke = method2.invoke(invoke2, null)) != null) {
                    TicketMgr = method3.invoke(invoke, field.get(cls4));
                }
            }
            int intValue = Integer.valueOf(cls.getMethod("sendRPCData", Long.TYPE, String.class, String.class, byte[].class, Integer.TYPE).invoke(TicketMgr, Long.valueOf(allocateSeq), this.uin, this.serviceCmd, bArr.clone(), Integer.valueOf(i)).toString()).intValue();
            if (intValue == 0) {
                synchronized (__SyncCB) {
                    __cbs.put(Long.valueOf(allocateSeq), this);
                }
                this.semp.acquire();
                return 99;
            }
            return intValue;
        } catch (Exception e) {
            C4393util.printException(e, this.uin);
            return -1000;
        }
    }

    public void Cancel() {
        try {
            Class<?> cls = Class.forName(CLIENT_CLASSNAME);
            cls.getMethod("cancel", WUserSigInfo.class).invoke(cls, this.userSigInfo);
        } catch (Exception e) {
            C4393util.printException(e, this.uin);
        }
    }

    public byte[] RecvData() {
        try {
            this.semp.acquire();
            if (this.ret_success) {
                if (this.ret_uin == null || !this.ret_uin.equals(this.uin)) {
                    this.ret = C4393util.E_PK_LEN;
                    C4393util.LOGI("ret_uin: " + (this.ret_uin == null ? "null" : this.ret_uin) + ", uin: " + (this.uin == null ? "null" : this.uin), "");
                    return null;
                } else if (this.ret_serviceCmd != null && this.ret_serviceCmd.equals(this.serviceCmd)) {
                    this.semp.release();
                    return this.ret_data;
                } else {
                    this.ret = C4393util.E_PK_LEN;
                    C4393util.LOGI("ret_serviceCmd: " + (this.ret_serviceCmd == null ? "null" : this.ret_serviceCmd) + ", serviceCmd:" + (this.serviceCmd == null ? "null" : this.serviceCmd), "");
                    return null;
                }
            }
            return null;
        } catch (InterruptedException e) {
            C4393util.printException(e, this.uin);
            return null;
        }
    }

    public int SendData(byte[] bArr, int i) {
        if (!C4379u.f5284ap) {
            String m66l = C4379u.m66l();
            C4393util.LOGI("mqq process: " + m66l, "");
            if (!m66l.endsWith(":MSF")) {
                return sendRPCData(bArr, i);
            }
        }
        try {
            C4393util.LOGI("msf sendData", "");
            Class<?> cls = Class.forName(CLIENT_CLASSNAME);
            int intValue = Integer.valueOf(cls.getMethod("sendData", WUserSigInfo.class, String.class, String.class, byte[].class, Integer.TYPE, Boolean.TYPE, WtloginMsfListener.class).invoke(cls, this.userSigInfo, this.uin, this.serviceCmd, bArr.clone(), Integer.valueOf(i), Boolean.valueOf(this.flag), this).toString()).intValue();
            if (intValue > 0) {
                this.semp.acquire();
                return intValue;
            }
            return intValue;
        } catch (Exception e) {
            C4393util.printException(e, this.uin);
            return -1000;
        }
    }

    public int getRet() {
        return this.ret;
    }

    public byte[] getRetData() {
        return this.ret_data;
    }

    public void onReceiveData(String str, String str2, byte[] bArr) {
        this.ret_success = true;
        this.ret_uin = str;
        this.ret_serviceCmd = str2;
        this.ret = 0;
        this.ret_data = bArr;
        this.semp.release();
    }

    public void onReceiveFail(String str, String str2, int i) {
        this.ret_success = false;
        this.ret_uin = str;
        this.ret_serviceCmd = str2;
        this.ret = i;
        this.semp.release();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.ret = SendData(this.data, this.timeout);
            if (this.ret <= 0) {
                C4393util.LOGI("msf request send data failed, ret=" + this.ret, "");
            } else if (RecvData() == null) {
                this.ret_data = null;
            }
        } catch (Exception e) {
        }
    }
}
