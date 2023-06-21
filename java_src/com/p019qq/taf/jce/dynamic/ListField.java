package com.p019qq.taf.jce.dynamic;
/* renamed from: com.qq.taf.jce.dynamic.ListField */
/* loaded from: classes.dex */
public final class ListField extends JceField {
    private JceField[] bDZ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ListField(JceField[] jceFieldArr, int i) {
        super(i);
        this.bDZ = jceFieldArr;
    }

    public JceField[] get() {
        return this.bDZ;
    }

    public JceField get(int i) {
        return this.bDZ[i];
    }

    public void set(int i, JceField jceField) {
        this.bDZ[i] = jceField;
    }

    public void set(JceField[] jceFieldArr) {
        this.bDZ = jceFieldArr;
    }

    public int size() {
        return this.bDZ.length;
    }
}
