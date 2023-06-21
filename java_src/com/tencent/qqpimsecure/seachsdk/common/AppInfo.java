package com.tencent.qqpimsecure.seachsdk.common;

import com.tencent.qqpimsecure.seachsdk.internal.protocol.Comment;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.ConnectType;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class AppInfo extends AppEntity {
    public String apkFileMd5;
    public String apkPath;
    public String appName;
    public long bannerId;
    public String certMD5;
    public String channelId;
    public String describe;
    public String downFilePath;
    public String expirationTime;
    public boolean ifSelected;
    public String jumpUrl;
    public int mDestCategoryId;
    public int mFileId;
    public String mFunction;
    public int mPos;
    public int mProductId;
    public String mPublishTime;
    public int mSoftId;
    public int mSoftwareSourceAppID;
    public String mSoftwareSourceContent;
    public String mSoftwareSourceUrl;
    public int mSpeed;
    public int newVersionCode;
    public int official;
    public int oldVersionCode;
    public String pkgName;
    public String pname;
    public int safeType;
    public int categoryid = 0;
    public String uid = "";
    public String fileUrl = "";
    public String logoUrl = "";
    public String newVersion = "";
    public String oldVersion = "";
    public String mUpdateUseMd5 = "";
    public int jumptype = 0;
    public String browserUrl = "";
    public int businessType = 0;
    public String strExtend = "";
    public byte[] busiData = new byte[0];
    public byte[] transData = new byte[0];
    public int mErrorCode = 0;
    public int downloadCount = 0;
    public long downloadSize = 0;
    public int itemType = 0;
    public String recPicUrl = "";
    public int sw_type = 0;
    public int top_flag = 0;
    public String likepercent = "";
    public String mTitle = "";
    public String mSubTitle = "";
    public int versionType = -1;
    public int defaultShowType = 0;
    public String picBtnUrl = "";
    public String picIconUrl = "";
    public String activityID = "";
    public String mNetworkName = "";
    public transient ConnectType bOr = ConnectType.bPT;
    public long mSize = -1;
    public transient String bOs = "";
    public int mErrorRssi = -1;
    public long mStartTime = -1;
    public String mExtraInfo = "";
    public int mComeFrom = 0;
    public int mSource = 0;
    public int score = 0;
    public int suser = 0;
    public ArrayList<String> picurls = null;
    public ArrayList<String> logourls = null;
    public ArrayList<String> srcpicurls = null;
    public ArrayList<Comment> comments = null;
    public String publishtime = "";
    public String description = "";
    public int plugintype = 0;
    public int sign = 0;
    public String hprice = "";
    public float fee = 0.0f;
    public long tagId = -1;
    public String searchWords = "";
    public long searchNum = 0;
    public GameReservationInfo mGameReservationInfo = new GameReservationInfo();
    public ArrayList<BottomPic> mSnaShotPicList = new ArrayList<>();

    /* loaded from: classes.dex */
    public static class BottomPic implements Serializable {
        public String miniUrl;
        public String rawUrl;
    }

    /* loaded from: classes.dex */
    public static class GameReservationInfo implements Serializable {
        public long beginTime;
        public long endTime;
        public long reservationCount;
        public long reservationId;
        public int reservationStatus;
        public String activityId = "";
        public String reservationUrl = "";
        public String publicDesc = "";

        /* renamed from: qq */
        public String f4891qq = "";

        /* renamed from: wx */
        public String f4892wx = "";
        public boolean onlineFlag = false;
    }

    public String toString() {
        return "";
    }
}
