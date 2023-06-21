package com.kingroot.kinguser;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes.dex */
public abstract class bgf {
    private final long boI;
    private long boJ;
    private Handler mHandler = new Handler() { // from class: com.kingroot.kinguser.bgf.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (bgf.this) {
                if (message.what == 1) {
                    bgf.this.boJ -= bgf.this.boI;
                    if (bgf.this.boJ > 0) {
                        if (bgf.this.boJ < bgf.this.boI) {
                            sendMessageDelayed(obtainMessage(1), bgf.this.boJ);
                        } else {
                            bgf.this.mo1819g(bgf.this.boJ, new Long((100 * (bgf.this.mTotalTime - bgf.this.boJ)) / bgf.this.mTotalTime).intValue());
                            sendMessageDelayed(obtainMessage(1), bgf.this.boI);
                        }
                    } else {
                        bgf.this.onFinish();
                    }
                } else if (message.what == 2) {
                }
            }
        }
    };
    private long mTotalTime;

    /* renamed from: g */
    public abstract void mo1819g(long j, int i);

    public abstract void onFinish();

    public bgf(long j, long j2) {
        this.mTotalTime = j;
        this.boI = j2;
        this.boJ = j;
    }

    /* renamed from: iH */
    public final void m7117iH(int i) {
        synchronized (this) {
            this.boJ = ((100 - i) * this.mTotalTime) / 100;
        }
    }

    public final void cancel() {
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(2);
    }

    public final void resume() {
        this.mHandler.removeMessages(2);
        this.mHandler.sendMessageAtFrontOfQueue(this.mHandler.obtainMessage(1));
    }

    public final void pause() {
        this.mHandler.removeMessages(1);
        this.mHandler.sendMessageAtFrontOfQueue(this.mHandler.obtainMessage(2));
    }

    public final synchronized bgf abz() {
        bgf bgfVar;
        if (this.boJ <= 0) {
            onFinish();
            bgfVar = this;
        } else {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1), this.boI);
            bgfVar = this;
        }
        return bgfVar;
    }
}
