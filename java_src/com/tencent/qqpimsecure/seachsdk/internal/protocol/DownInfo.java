package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class DownInfo extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f4905lo;

    /* renamed from: nK */
    static ArrayList<DownSoftInfo> f4906nK;
    public String sQUA = "";
    public int nGUID = 0;
    public ArrayList<DownSoftInfo> listDownSoftItems = null;

    static {
        f4905lo = !DownInfo.class.desiredAssertionStatus();
    }

    /* renamed from: nq */
    public void m428nq(String str) {
        this.sQUA = str;
    }

    /* renamed from: kC */
    public void m429kC(int i) {
        this.nGUID = i;
    }

    /* renamed from: F */
    public void m430F(ArrayList<DownSoftInfo> arrayList) {
        this.listDownSoftItems = arrayList;
    }

    public DownInfo() {
        m428nq(this.sQUA);
        m429kC(this.nGUID);
        m430F(this.listDownSoftItems);
    }

    public DownInfo(String str, int i, ArrayList<DownSoftInfo> arrayList) {
        m428nq(str);
        m429kC(i);
        m430F(arrayList);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        DownInfo downInfo = (DownInfo) obj;
        return JceUtil.equals(this.sQUA, downInfo.sQUA) && JceUtil.equals(this.nGUID, downInfo.nGUID) && JceUtil.equals(this.listDownSoftItems, downInfo.listDownSoftItems);
    }

    public int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (f4905lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.sQUA, 0);
        jceOutputStream.write(this.nGUID, 1);
        jceOutputStream.write((Collection) this.listDownSoftItems, 2);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        m428nq(jceInputStream.readString(0, true));
        m429kC(jceInputStream.read(this.nGUID, 1, true));
        if (f4906nK == null) {
            f4906nK = new ArrayList<>();
            f4906nK.add(new DownSoftInfo());
        }
        m430F((ArrayList) jceInputStream.read((JceInputStream) f4906nK, 2, true));
    }
}
