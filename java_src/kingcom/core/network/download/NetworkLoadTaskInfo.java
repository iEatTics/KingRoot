package kingcom.core.network.download;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.bzo;
import com.kingroot.kinguser.caa;
import com.kingroot.kinguser.caf;
import com.kingroot.kinguser.cag;
/* loaded from: classes.dex */
public class NetworkLoadTaskInfo implements Parcelable {
    public static final Parcelable.Creator<NetworkLoadTaskInfo> CREATOR = new cag();

    /* renamed from: a */
    public int f4934a;

    /* renamed from: b */
    public String f4935b;
    public float bVY;

    /* renamed from: c */
    public boolean f4936c;

    /* renamed from: d */
    public int f4937d;

    /* renamed from: e */
    public String f4938e;

    /* renamed from: f */
    public String f4939f;

    /* renamed from: g */
    public long f4940g;

    /* renamed from: h */
    public long f4941h;

    /* renamed from: j */
    public int f4942j;

    /* renamed from: k */
    public int f4943k;

    public NetworkLoadTaskInfo(caf cafVar) {
        this.f4936c = true;
        this.f4937d = -2;
        this.f4940g = -1L;
        this.f4943k = 0;
        if (cafVar != null) {
            this.f4934a = cafVar.f2206a;
            this.f4935b = cafVar.f2207b;
            this.f4936c = cafVar.f2208c;
            this.f4937d = cafVar.f2209d;
            this.f4938e = cafVar.f2210e;
            this.f4939f = cafVar.f2211f;
            this.f4940g = cafVar.f2212g;
            this.f4941h = cafVar.f2213h;
            this.bVY = cafVar.bVY;
            this.f4942j = cafVar.f2214j;
            this.f4943k = cafVar.f2215l;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f4934a);
        parcel.writeString(this.f4935b);
        parcel.writeByte(this.f4936c ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f4937d);
        parcel.writeString(this.f4938e);
        parcel.writeString(this.f4939f);
        parcel.writeLong(this.f4940g);
        parcel.writeLong(this.f4941h);
        parcel.writeFloat(this.bVY);
        parcel.writeInt(this.f4942j);
        parcel.writeInt(this.f4943k);
    }

    public NetworkLoadTaskInfo() {
        this.f4936c = true;
        this.f4937d = -2;
        this.f4940g = -1L;
        this.f4943k = 0;
    }

    public NetworkLoadTaskInfo(Parcel parcel) {
        this.f4936c = true;
        this.f4937d = -2;
        this.f4940g = -1L;
        this.f4943k = 0;
        mo397d(parcel);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public void mo397d(Parcel parcel) {
        this.f4935b = parcel.readString();
        this.f4936c = parcel.readByte() != 0;
        this.f4937d = parcel.readInt();
        this.f4938e = parcel.readString();
        this.f4939f = parcel.readString();
        this.f4940g = parcel.readLong();
        this.f4941h = parcel.readLong();
        this.bVY = parcel.readFloat();
        this.f4942j = parcel.readInt();
        this.f4943k = parcel.readInt();
    }

    /* renamed from: kingcom.core.network.download.NetworkLoadTaskInfo$a */
    /* loaded from: classes.dex */
    public static class C4192a {
        /* renamed from: c */
        public static NetworkLoadTaskInfo m396c(caf cafVar) {
            switch (cafVar.f2206a) {
                case 1:
                    return new AppDownloadTaskInfo((caa) cafVar);
                case 2:
                    return new CommonFileDownloadTaskInfo((bzo) cafVar);
                default:
                    return null;
            }
        }
    }
}
