package com.p019qq.taf.jce.dynamic;

import java.util.Arrays;
import java.util.Comparator;
/* renamed from: com.qq.taf.jce.dynamic.StructField */
/* loaded from: classes.dex */
public class StructField extends JceField {
    private static final Comparator<JceField> bEe = new Comparator<JceField>() { // from class: com.qq.taf.jce.dynamic.StructField.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(JceField jceField, JceField jceField2) {
            return jceField.getTag() - jceField2.getTag();
        }
    };
    private JceField[] bDZ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StructField(JceField[] jceFieldArr, int i) {
        super(i);
        this.bDZ = jceFieldArr;
    }

    public JceField[] get() {
        return this.bDZ;
    }

    public boolean setByTag(int i, JceField jceField) {
        int binarySearch = Arrays.binarySearch(this.bDZ, JceField.createZero(i), bEe);
        if (binarySearch >= 0) {
            this.bDZ[binarySearch] = jceField;
            return true;
        }
        int i2 = (-binarySearch) - 1;
        JceField[] jceFieldArr = new JceField[this.bDZ.length + 1];
        for (int i3 = 0; i3 < i2; i3++) {
            jceFieldArr[i3] = this.bDZ[i3];
        }
        jceFieldArr[i2] = jceField;
        while (i2 < this.bDZ.length) {
            jceFieldArr[i2 + 1] = this.bDZ[i2];
            i2++;
        }
        return false;
    }

    public JceField getFieldByTag(int i) {
        int binarySearch = Arrays.binarySearch(this.bDZ, JceField.createZero(i), bEe);
        if (binarySearch >= 0) {
            return this.bDZ[binarySearch];
        }
        return null;
    }
}
