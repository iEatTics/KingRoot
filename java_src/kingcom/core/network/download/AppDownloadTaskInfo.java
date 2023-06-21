package kingcom.core.network.download;

import android.os.Parcel;
import com.kingroot.kinguser.caa;
/* loaded from: classes.dex */
public class AppDownloadTaskInfo extends NetworkLoadTaskInfo {
    @Override // kingcom.core.network.download.NetworkLoadTaskInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    public AppDownloadTaskInfo(Parcel parcel) {
        super(parcel);
    }

    public AppDownloadTaskInfo(caa caaVar) {
        super(caaVar);
    }

    public AppDownloadTaskInfo() {
    }

    @Override // kingcom.core.network.download.NetworkLoadTaskInfo
    /* renamed from: d */
    protected void mo397d(Parcel parcel) {
        super.mo397d(parcel);
    }
}
