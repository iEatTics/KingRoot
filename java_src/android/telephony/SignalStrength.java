package android.telephony;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class SignalStrength implements Parcelable {
    public static final Parcelable.Creator<SignalStrength> CREATOR = new Parcelable.Creator() { // from class: android.telephony.SignalStrength.1
        @Override // android.os.Parcelable.Creator
        public SignalStrength createFromParcel(Parcel parcel) {
            return new SignalStrength(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SignalStrength[] newArray(int i) {
            return new SignalStrength[i];
        }
    };

    public static SignalStrength newFromBundle(Bundle bundle) {
        return null;
    }

    public SignalStrength() {
    }

    public SignalStrength(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, boolean z) {
    }

    public SignalStrength(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this(i, i2, i3, i4, i5, i6, i7, -1, -1, -1, -1, -1, z);
    }

    public SignalStrength(SignalStrength signalStrength) {
        copyFrom(signalStrength);
    }

    protected void copyFrom(SignalStrength signalStrength) {
    }

    public SignalStrength(Parcel parcel) {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getGsmSignalStrength() {
        return 0;
    }

    public int getGsmBitErrorRate() {
        return 0;
    }

    public int getCdmaDbm() {
        return 0;
    }

    public int getCdmaEcio() {
        return 0;
    }

    public int getEvdoDbm() {
        return 0;
    }

    public int getEvdoEcio() {
        return 0;
    }

    public int getEvdoSnr() {
        return 0;
    }

    public int getLevel() {
        return 0;
    }

    public int getAsuLevel() {
        return 0;
    }

    public int getDbm() {
        return 0;
    }

    public int getGsmDbm() {
        return 0;
    }

    public int getGsmLevel() {
        return 0;
    }

    public int getGsmAsuLevel() {
        return 0;
    }

    public int getCdmaLevel() {
        return 0;
    }

    public int getCdmaAsuLevel() {
        return 0;
    }

    public int getEvdoLevel() {
        return 0;
    }

    public int getEvdoAsuLevel() {
        return 0;
    }

    public int getLteDbm() {
        return 0;
    }

    public int getLteLevel() {
        return 0;
    }

    public int getLteAsuLevel() {
        return 0;
    }

    public boolean isGsm() {
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public boolean equals(Object obj) {
        return false;
    }

    public String toString() {
        return null;
    }

    public void fillInNotifierBundle(Bundle bundle) {
    }
}
