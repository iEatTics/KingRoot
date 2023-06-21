package p001a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.C3059fk;
/* renamed from: a.at */
/* loaded from: classes.dex */
public class C0007at implements Parcelable {
    public static final Parcelable.Creator<C0007at> CREATOR = new C3059fk();
    public int arg1;
    public int arg2;

    /* renamed from: pU */
    public int f60pU;

    /* renamed from: pV */
    public long f61pV;

    /* renamed from: pW */
    public String f62pW;

    /* renamed from: pX */
    public Parcelable f63pX;

    /* renamed from: pY */
    public IBinder f64pY;

    public /* synthetic */ C0007at(Parcel parcel, C3059fk c3059fk) {
        this(parcel);
    }

    public C0007at() {
    }

    private C0007at(Parcel parcel) {
        this.f63pX = parcel.readParcelable(getClass().getClassLoader());
        this.f60pU = parcel.readInt();
        this.f61pV = parcel.readLong();
        this.arg1 = parcel.readInt();
        this.arg2 = parcel.readInt();
        this.f62pW = parcel.readString();
        this.f64pY = parcel.readStrongBinder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f63pX, i);
        parcel.writeInt(this.f60pU);
        parcel.writeLong(this.f61pV);
        parcel.writeInt(this.arg1);
        parcel.writeInt(this.arg2);
        parcel.writeString(this.f62pW);
        parcel.writeStrongBinder(this.f64pY);
    }
}
