package kingcom.core.network.download;

import android.os.Parcel;
import com.kingroot.kinguser.bzo;
/* loaded from: classes.dex */
public class CommonFileDownloadTaskInfo extends NetworkLoadTaskInfo {
    public CommonFileDownloadTaskInfo() {
    }

    public CommonFileDownloadTaskInfo(Parcel parcel) {
        super(parcel);
    }

    public CommonFileDownloadTaskInfo(bzo bzoVar) {
        super(bzoVar);
    }

    @Override // kingcom.core.network.download.NetworkLoadTaskInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
