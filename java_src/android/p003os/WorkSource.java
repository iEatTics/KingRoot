package android.p003os;

import android.os.Parcelable;
/* renamed from: android.os.WorkSource */
/* loaded from: classes.dex */
public class WorkSource implements Parcelable {
    static WorkSource sGoneWork;
    static WorkSource sNewbWork;
    int mNum;
    int[] mUids;
    static final WorkSource sTmpWorkSource = new WorkSource(0);
    public static final Parcelable.Creator<WorkSource> CREATOR = new Parcelable.Creator<WorkSource>() { // from class: android.os.WorkSource.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WorkSource createFromParcel(Parcel parcel) {
            return new WorkSource(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WorkSource[] newArray(int i) {
            return new WorkSource[i];
        }
    };

    public WorkSource() {
        this.mNum = 0;
    }

    public WorkSource(WorkSource workSource) {
        if (workSource == null) {
            this.mNum = 0;
            return;
        }
        this.mNum = workSource.mNum;
        if (workSource.mUids != null) {
            this.mUids = (int[]) workSource.mUids.clone();
        } else {
            this.mUids = null;
        }
    }

    public WorkSource(int i) {
        this.mNum = 1;
        this.mUids = new int[]{i};
    }

    WorkSource(Parcel parcel) {
        this.mNum = parcel.readInt();
        this.mUids = parcel.createIntArray();
    }

    public int size() {
        return this.mNum;
    }

    public int get(int i) {
        return this.mUids[i];
    }

    public void clear() {
        this.mNum = 0;
    }

    public boolean diff(WorkSource workSource) {
        int i = this.mNum;
        if (i != workSource.mNum) {
            return true;
        }
        int[] iArr = this.mUids;
        int[] iArr2 = workSource.mUids;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return true;
            }
        }
        return false;
    }

    public void set(WorkSource workSource) {
        if (workSource == null) {
            this.mNum = 0;
            return;
        }
        this.mNum = workSource.mNum;
        if (workSource.mUids != null) {
            if (this.mUids != null && this.mUids.length >= this.mNum) {
                System.arraycopy(workSource.mUids, 0, this.mUids, 0, this.mNum);
                return;
            } else {
                this.mUids = (int[]) workSource.mUids.clone();
                return;
            }
        }
        this.mUids = null;
    }

    public void set(int i) {
        this.mNum = 1;
        if (this.mUids == null) {
            this.mUids = new int[2];
        }
        this.mUids[0] = i;
    }

    public WorkSource[] setReturningDiffs(WorkSource workSource) {
        WorkSource[] workSourceArr = null;
        synchronized (sTmpWorkSource) {
            sNewbWork = null;
            sGoneWork = null;
            updateLocked(workSource, true, true);
            if (sNewbWork != null || sGoneWork != null) {
                workSourceArr = new WorkSource[]{sNewbWork, sGoneWork};
            }
        }
        return workSourceArr;
    }

    public boolean add(WorkSource workSource) {
        boolean updateLocked;
        synchronized (sTmpWorkSource) {
            updateLocked = updateLocked(workSource, false, false);
        }
        return updateLocked;
    }

    public WorkSource addReturningNewbs(WorkSource workSource) {
        WorkSource workSource2;
        synchronized (sTmpWorkSource) {
            sNewbWork = null;
            updateLocked(workSource, false, true);
            workSource2 = sNewbWork;
        }
        return workSource2;
    }

    public boolean add(int i) {
        boolean updateLocked;
        synchronized (sTmpWorkSource) {
            sTmpWorkSource.mUids[0] = i;
            updateLocked = updateLocked(sTmpWorkSource, false, false);
        }
        return updateLocked;
    }

    public WorkSource addReturningNewbs(int i) {
        WorkSource workSource;
        synchronized (sTmpWorkSource) {
            sNewbWork = null;
            sTmpWorkSource.mUids[0] = i;
            updateLocked(sTmpWorkSource, false, true);
            workSource = sNewbWork;
        }
        return workSource;
    }

    public boolean remove(WorkSource workSource) {
        int i = this.mNum;
        int[] iArr = this.mUids;
        int i2 = workSource.mNum;
        int[] iArr2 = workSource.mUids;
        int i3 = 0;
        for (int i4 = 0; i4 < i2 && i3 < i; i4++) {
            if (iArr2[i4] == iArr[i3] && i3 < i - 1) {
                System.arraycopy(iArr, i3 + 1, iArr, i3, i - i3);
            }
            while (i3 < i && iArr2[i4] > iArr[i3]) {
                i3++;
            }
        }
        this.mNum = i;
        return false;
    }

    private boolean updateLocked(WorkSource workSource, boolean z, boolean z2) {
        int i = this.mNum;
        int[] iArr = this.mUids;
        int i2 = workSource.mNum;
        int[] iArr2 = workSource.mUids;
        int i3 = 0;
        boolean z3 = false;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i3 >= i || iArr2[i4] < iArr[i3]) {
                z3 = true;
                if (iArr == null) {
                    iArr = new int[4];
                    iArr[0] = iArr2[i4];
                } else if (i3 >= iArr.length) {
                    int[] iArr3 = new int[(iArr.length * 3) / 2];
                    if (i3 > 0) {
                        System.arraycopy(iArr, 0, iArr3, 0, i3);
                    }
                    if (i3 < i) {
                        System.arraycopy(iArr, i3, iArr3, i3 + 1, i - i3);
                    }
                    iArr3[i3] = iArr2[i4];
                    iArr = iArr3;
                } else {
                    if (i3 < i) {
                        System.arraycopy(iArr, i3, iArr, i3 + 1, i - i3);
                    }
                    iArr[i3] = iArr2[i4];
                }
                if (z2) {
                    if (sNewbWork == null) {
                        sNewbWork = new WorkSource(iArr2[i4]);
                    } else {
                        sNewbWork.addLocked(iArr2[i4]);
                    }
                }
                i++;
                i3++;
            } else if (z) {
                int i5 = i3;
                while (i5 < i && iArr2[i4] > iArr[i5]) {
                    if (sGoneWork == null) {
                        sGoneWork = new WorkSource(iArr[i5]);
                    } else {
                        sGoneWork.addLocked(iArr[i5]);
                    }
                    i5++;
                }
                if (i3 < i5) {
                    System.arraycopy(iArr, i5, iArr, i3, i5 - i3);
                    i -= i5 - i3;
                } else {
                    i3 = i5;
                }
                if (i3 < i && iArr2[i3] == iArr[i3]) {
                    i3++;
                }
            } else {
                do {
                    i3++;
                    if (i3 < i) {
                    }
                } while (iArr2[i4] >= iArr[i3]);
            }
        }
        this.mNum = i;
        this.mUids = iArr;
        return z3;
    }

    private void addLocked(int i) {
        if (this.mUids == null) {
            this.mUids = new int[4];
            this.mUids[0] = i;
            this.mNum = 1;
            return;
        }
        if (this.mNum >= this.mUids.length) {
            int[] iArr = new int[(this.mNum * 3) / 2];
            System.arraycopy(this.mUids, 0, iArr, 0, this.mNum);
            this.mUids = iArr;
        }
        this.mUids[this.mNum] = i;
        this.mNum++;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mNum);
        parcel.writeIntArray(this.mUids);
    }
}
