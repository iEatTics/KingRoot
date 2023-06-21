package com.tencent.qqpimsecure.seachsdk.common;

import com.tencent.qqpimsecure.seachsdk.internal.protocol.Comment;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class AppDeatailInfo implements Serializable {
    public String apkFileMd5;
    public int official;
    public String pname;
    public String packageName = "";
    public String channelId = "";
    public String appName = "";
    public String version = "";
    public int versionCode = 0;
    public int categoryid = 0;
    public int score = 0;
    public int suser = 0;
    public ArrayList<String> picurls = null;
    public ArrayList<String> logourls = null;
    public ArrayList<String> srcpicurls = null;
    public ArrayList<Comment> comments = null;
    public String fileurl = "";
    public int filesize = 0;
    public String publishtime = "";
    public String description = "";
    public int softDescTimestamp = 0;
    public int plugintype = 0;
    public int sign = 0;
    public String hprice = "";
    public float fee = 0.0f;
    public String function = "";
}
