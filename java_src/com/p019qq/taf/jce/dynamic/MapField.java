package com.p019qq.taf.jce.dynamic;
/* renamed from: com.qq.taf.jce.dynamic.MapField */
/* loaded from: classes.dex */
public final class MapField extends JceField {
    private JceField[] bEb;
    private JceField[] bEc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MapField(JceField[] jceFieldArr, JceField[] jceFieldArr2, int i) {
        super(i);
        this.bEb = jceFieldArr;
        this.bEc = jceFieldArr2;
    }

    public JceField[] getKeys() {
        return this.bEb;
    }

    public JceField[] getValues() {
        return this.bEc;
    }

    public int size() {
        return this.bEb.length;
    }

    public JceField getKey(int i) {
        return this.bEb[i];
    }

    public JceField getValue(int i) {
        return this.bEc[i];
    }

    public void setKey(int i, JceField jceField) {
        this.bEb[i] = jceField;
    }

    public void setValue(int i, JceField jceField) {
        this.bEc[i] = jceField;
    }
}
