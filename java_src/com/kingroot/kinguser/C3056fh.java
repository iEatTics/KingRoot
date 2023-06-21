package com.kingroot.kinguser;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
/* renamed from: com.kingroot.kinguser.fh */
/* loaded from: classes.dex */
public class C3056fh extends Thread {

    /* renamed from: pO */
    InputStream f2664pO;

    /* renamed from: pP */
    ByteArrayOutputStream f2665pP;

    /* renamed from: pQ */
    final /* synthetic */ C3055fg f2666pQ;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3056fh(C3055fg c3055fg, String str, InputStream inputStream, ByteArrayOutputStream byteArrayOutputStream) {
        super(str);
        this.f2666pQ = c3055fg;
        this.f2664pO = inputStream;
        this.f2665pP = byteArrayOutputStream;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = this.f2664pO.read(bArr);
                if (read < 0) {
                    obj = this.f2666pQ.f2657pH;
                    synchronized (obj) {
                        this.f2665pP.write(":RET=EOF".getBytes());
                        this.f2665pP.flush();
                    }
                    obj2 = this.f2666pQ.f2656V;
                    synchronized (obj2) {
                        obj3 = this.f2666pQ.f2656V;
                        obj3.notifyAll();
                    }
                    return;
                } else if (read > 0) {
                    obj4 = this.f2666pQ.f2657pH;
                    synchronized (obj4) {
                        this.f2665pP.write(bArr, 0, read);
                        this.f2665pP.flush();
                    }
                    obj5 = this.f2666pQ.f2656V;
                    synchronized (obj5) {
                        obj6 = this.f2666pQ.f2656V;
                        obj6.notifyAll();
                    }
                }
            }
        } catch (Exception e) {
        }
    }
}
