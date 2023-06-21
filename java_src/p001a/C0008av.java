package p001a;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.C3060fl;
/* renamed from: a.av */
/* loaded from: classes.dex */
public class C0008av implements Parcelable {
    public static final Parcelable.Creator<C0008av> CREATOR = new C3060fl();

    /* renamed from: I */
    public String f65I;
    public int arg1;
    public int arg2;

    /* renamed from: as */
    public int f66as;

    /* renamed from: pE */
    public int f67pE;

    /* renamed from: pW */
    public String f68pW;

    /* renamed from: pX */
    public Parcelable f69pX;

    public /* synthetic */ C0008av(Parcel parcel, C3060fl c3060fl) {
        this(parcel);
    }

    public C0008av() {
    }

    private C0008av(Parcel parcel) {
        this.f69pX = parcel.readParcelable(getClass().getClassLoader());
        this.f66as = parcel.readInt();
        this.f67pE = parcel.readInt();
        this.f65I = parcel.readString();
        this.arg1 = parcel.readInt();
        this.arg2 = parcel.readInt();
        this.f68pW = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f69pX, i);
        parcel.writeInt(this.f66as);
        parcel.writeInt(this.f67pE);
        parcel.writeString(this.f65I);
        parcel.writeInt(this.arg1);
        parcel.writeInt(this.arg2);
        parcel.writeString(this.f68pW);
    }
}
