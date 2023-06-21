package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class brr extends brl {
    @Override // com.kingroot.kinguser.brl
    /* renamed from: kd */
    public void mo5640kd(int i) {
        this.mState = Math.max(this.mState, 3);
        if (this.bKf == 0) {
            this.bKf = i;
            if (this.bKf == 0) {
                this.bKf++;
            }
        } else {
            this.bKf++;
        }
        if (this.bKd > 0) {
            this.bKd--;
        }
        this.bKg = System.currentTimeMillis();
        bth.m5539i("AdLifeCycle onDisplay:mWeight=" + this.bKf + "|maxweight=" + i + "|mRemainDisplayCount=" + this.bKd);
    }

    @Override // com.kingroot.kinguser.brl
    public void onClick() {
        this.mState = Math.max(this.mState, 4);
        this.bKf += 2;
        if (this.bKe > 0) {
            this.bKe--;
        }
        bth.m5539i("AdLifeCycle onDisplay:mWeight=" + this.bKf + "|mRemainDisplayCount=" + this.bKd);
    }

    @Override // com.kingroot.kinguser.brl
    public void ahF() {
        this.mState = Math.max(this.mState, 2);
    }
}
