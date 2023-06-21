package meri.pluginsdk;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class IPiInfo implements Parcelable {
    public static final Parcelable.Creator<IPiInfo> CREATOR = new Parcelable.Creator<IPiInfo>() { // from class: meri.pluginsdk.IPiInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: bf */
        public IPiInfo createFromParcel(Parcel parcel) {
            return new IPiInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: kS */
        public IPiInfo[] newArray(int i) {
            return new IPiInfo[i];
        }
    };

    /* renamed from: a */
    public int f4945a;

    /* renamed from: b */
    public int f4946b;
    public int bGx;
    public ArrayList<Object> bWX;

    /* renamed from: c */
    public int f4947c;

    /* renamed from: d */
    public int f4948d;

    /* renamed from: e */
    public int f4949e;

    /* renamed from: f */
    public int f4950f;

    /* renamed from: g */
    public boolean f4951g;

    /* renamed from: h */
    public boolean f4952h;

    /* renamed from: i */
    public boolean f4953i;

    /* renamed from: j */
    public int f4954j;

    /* renamed from: k */
    public int f4955k;

    /* renamed from: l */
    public int f4956l;

    /* renamed from: m */
    public boolean f4957m;

    /* renamed from: n */
    public String f4958n;

    /* renamed from: o */
    public String f4959o;

    /* renamed from: p */
    public String f4960p;

    /* renamed from: q */
    public String f4961q;

    /* renamed from: r */
    public String f4962r;

    /* renamed from: s */
    public String f4963s;

    /* renamed from: t */
    public String f4964t;

    public IPiInfo() {
        this.f4945a = -1;
        this.f4946b = -1;
        this.f4947c = -1;
        this.f4948d = -1;
        this.f4949e = -1;
        this.f4950f = -1;
        this.f4951g = false;
        this.f4952h = false;
        this.f4953i = false;
        this.f4954j = -1;
        this.f4955k = -1;
        this.f4956l = 0;
        this.f4957m = false;
        this.f4958n = null;
        this.f4959o = null;
        this.f4960p = null;
        this.f4961q = null;
        this.f4962r = null;
        this.f4963s = null;
        this.f4964t = null;
        this.bWX = null;
        this.bGx = 0;
    }

    private IPiInfo(Parcel parcel) {
        this.f4945a = -1;
        this.f4946b = -1;
        this.f4947c = -1;
        this.f4948d = -1;
        this.f4949e = -1;
        this.f4950f = -1;
        this.f4951g = false;
        this.f4952h = false;
        this.f4953i = false;
        this.f4954j = -1;
        this.f4955k = -1;
        this.f4956l = 0;
        this.f4957m = false;
        this.f4958n = null;
        this.f4959o = null;
        this.f4960p = null;
        this.f4961q = null;
        this.f4962r = null;
        this.f4963s = null;
        this.f4964t = null;
        this.bWX = null;
        this.bGx = 0;
        this.f4945a = parcel.readInt();
        this.f4946b = parcel.readInt();
        this.f4947c = parcel.readInt();
        this.f4948d = parcel.readInt();
        this.f4949e = parcel.readInt();
        this.f4950f = parcel.readInt();
        this.f4951g = parcel.readByte() == 1;
        this.f4952h = parcel.readByte() == 1;
        this.f4953i = parcel.readByte() == 1;
        this.f4956l = parcel.readInt();
        this.f4957m = parcel.readByte() == 1;
        this.f4958n = parcel.readString();
        this.f4959o = parcel.readString();
        this.f4960p = parcel.readString();
        this.f4961q = parcel.readString();
        this.f4962r = parcel.readString();
        this.f4963s = parcel.readString();
        this.f4964t = parcel.readString();
        this.bWX = (ArrayList) parcel.readSerializable();
        this.f4954j = parcel.readInt();
        this.f4955k = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f4945a);
        parcel.writeInt(this.f4946b);
        parcel.writeInt(this.f4947c);
        parcel.writeInt(this.f4948d);
        parcel.writeInt(this.f4949e);
        parcel.writeInt(this.f4950f);
        parcel.writeByte((byte) (this.f4951g ? 1 : 0));
        parcel.writeByte((byte) (this.f4952h ? 1 : 0));
        parcel.writeByte((byte) (this.f4953i ? 1 : 0));
        parcel.writeInt(this.f4956l);
        parcel.writeByte((byte) (this.f4957m ? 1 : 0));
        parcel.writeString(this.f4958n);
        parcel.writeString(this.f4959o);
        parcel.writeString(this.f4960p);
        parcel.writeString(this.f4961q);
        parcel.writeString(this.f4962r);
        parcel.writeString(this.f4963s);
        parcel.writeString(this.f4964t);
        parcel.writeSerializable(this.bWX);
        parcel.writeInt(this.f4954j);
        parcel.writeInt(this.f4955k);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
