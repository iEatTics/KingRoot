package com.p019qq.taf.jce;

import java.io.Serializable;
/* renamed from: com.qq.taf.jce.JceStruct */
/* loaded from: classes.dex */
public abstract class JceStruct implements Serializable {
    public abstract void readFrom(JceInputStream jceInputStream);

    public abstract void writeTo(JceOutputStream jceOutputStream);

    public void display(StringBuilder sb, int i) {
    }

    public JceStruct newInit() {
        return null;
    }

    public void recyle() {
    }

    public boolean containField(String str) {
        return false;
    }

    public Object getFieldByName(String str) {
        return null;
    }

    public void setFieldByName(String str, Object obj) {
    }

    public byte[] toByteArray() {
        JceOutputStream jceOutputStream = new JceOutputStream();
        writeTo(jceOutputStream);
        return jceOutputStream.toByteArray();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        display(sb, 0);
        return sb.toString();
    }
}
