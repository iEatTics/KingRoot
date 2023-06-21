package com.kingroot.kinguser;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bvk {
    private static bvk bPD = null;

    private bvk() {
    }

    public static bvk aiy() {
        if (bPD == null) {
            synchronized (bvk.class) {
                if (bPD == null) {
                    bPD = new bvk();
                }
            }
        }
        return bPD;
    }

    /* renamed from: a */
    public synchronized boolean m5389a(List<AppInfo> list, int i, int i2) {
        boolean m5386j;
        if (buq.m5472q(list)) {
            m5386j = false;
        } else {
            m5388aq(i, i2);
            m5386j = m5386j(list, i);
        }
        return m5386j;
    }

    /* renamed from: j */
    public synchronized boolean m5386j(List<AppInfo> list, int i) {
        boolean z;
        if (buq.m5472q(list)) {
            z = false;
        } else {
            for (AppInfo appInfo : list) {
                bvg.aiv().m5402e("tb_software_info", m5390a(appInfo, i));
            }
            z = true;
        }
        return z;
    }

    /* renamed from: aq */
    public boolean m5388aq(int i, int i2) {
        return bvg.aiv().m5403d("tb_software_info", "categoryid =? and itemType =? ", new String[]{String.valueOf(i), String.valueOf(i2)});
    }

    /* renamed from: ar */
    public synchronized List<AppInfo> m5387ar(int i, int i2) {
        ArrayList arrayList;
        Cursor cursor = null;
        synchronized (this) {
            but.m5464d("SoftwareInfoDao", "getSoftwareInfoByCategogryId,categoryId=" + i);
            if (i == 0) {
                arrayList = new ArrayList();
            } else {
                arrayList = new ArrayList();
                try {
                    cursor = bvg.aiv().m5404a("tb_software_info", null, "categoryid=? and itemType=? ", new String[]{String.valueOf(i), String.valueOf(i2)});
                    if (cursor != null && cursor.moveToFirst()) {
                        while (!cursor.isAfterLast()) {
                            AppInfo appInfo = new AppInfo();
                            m5391a(cursor, appInfo);
                            arrayList.add(appInfo);
                            cursor.moveToNext();
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m5391a(Cursor cursor, AppInfo appInfo) {
        if (cursor != null && appInfo != null) {
            try {
                appInfo.pkgName = cursor.getString(cursor.getColumnIndex("pkgName"));
                appInfo.appName = cursor.getString(cursor.getColumnIndex("appName"));
                appInfo.newVersion = cursor.getString(cursor.getColumnIndex("version"));
                appInfo.newVersionCode = Integer.parseInt(cursor.getString(cursor.getColumnIndex("versionCode")));
                appInfo.versionType = Integer.parseInt(cursor.getString(cursor.getColumnIndex("versionType")));
                appInfo.mSize = Long.parseLong(cursor.getString(cursor.getColumnIndex("size")));
                appInfo.certMD5 = cursor.getString(cursor.getColumnIndex("certMD5"));
                appInfo.newVersion = cursor.getString(cursor.getColumnIndex("newVersion"));
                appInfo.fileUrl = cursor.getString(cursor.getColumnIndex("fileUrl"));
                appInfo.logoUrl = cursor.getString(cursor.getColumnIndex("logoUrl"));
                appInfo.itemType = cursor.getInt(cursor.getColumnIndex("itemType"));
                appInfo.describe = cursor.getString(cursor.getColumnIndex("describe"));
                appInfo.downloadCount = Integer.parseInt(cursor.getString(cursor.getColumnIndex("downloadCount")));
                appInfo.score = cursor.getInt(cursor.getColumnIndex("score"));
                appInfo.expirationTime = cursor.getString(cursor.getColumnIndex("expirationTime"));
                appInfo.newVersionCode = cursor.getInt(cursor.getColumnIndex("newVersionCode"));
                appInfo.browserUrl = cursor.getString(cursor.getColumnIndex("browserUrl"));
                int columnIndex = cursor.getColumnIndex("softwareSourceUrl");
                appInfo.mSoftwareSourceUrl = columnIndex != -1 ? cursor.getString(columnIndex) : "";
                int columnIndex2 = cursor.getColumnIndex("softwareSource");
                appInfo.mSoftwareSourceContent = columnIndex2 != -1 ? cursor.getString(columnIndex2) : "";
                appInfo.sw_type = Integer.parseInt(cursor.getString(cursor.getColumnIndex("sw_type")));
                appInfo.top_flag = Integer.parseInt(cursor.getString(cursor.getColumnIndex("top_flag")));
                appInfo.plugintype = Integer.parseInt(cursor.getString(cursor.getColumnIndex("plugintype")));
                appInfo.likepercent = cursor.getString(cursor.getColumnIndex("likepercent"));
                appInfo.jumptype = Integer.parseInt(cursor.getString(cursor.getColumnIndex("jumptype")));
                appInfo.jumpUrl = cursor.getString(cursor.getColumnIndex("jumpUrl"));
                appInfo.ifSelected = Integer.parseInt(cursor.getString(cursor.getColumnIndex("ifSelected"))) > 0;
                appInfo.categoryid = Integer.parseInt(cursor.getString(cursor.getColumnIndex("categoryid")));
                appInfo.channelId = cursor.getString(cursor.getColumnIndex("channelid"));
                appInfo.mProductId = cursor.getInt(cursor.getColumnIndex("productID"));
                appInfo.mFileId = cursor.getInt(cursor.getColumnIndex("fileID"));
                appInfo.mSoftId = cursor.getInt(cursor.getColumnIndex("SoftID"));
                appInfo.mSource = cursor.getInt(cursor.getColumnIndex("source"));
                appInfo.mTitle = cursor.getString(cursor.getColumnIndex("custom_title"));
                appInfo.mSubTitle = cursor.getString(cursor.getColumnIndex("custom_sub_title"));
                appInfo.mDestCategoryId = Integer.parseInt(cursor.getString(cursor.getColumnIndex("dest_category_id")));
                appInfo.defaultShowType = Integer.parseInt(cursor.getString(cursor.getColumnIndex("default_show_type")));
                appInfo.picIconUrl = cursor.getString(cursor.getColumnIndex("pic_icon_url"));
                appInfo.picBtnUrl = cursor.getString(cursor.getColumnIndex("pic_btn_url"));
                appInfo.apkFileMd5 = cursor.getString(cursor.getColumnIndex("apkfileMd5"));
                appInfo.bannerId = Long.parseLong(cursor.getString(cursor.getColumnIndex("bannerId")));
                byte[] blob = cursor.getBlob(cursor.getColumnIndex("str_extend"));
                appInfo.strExtend = (blob == null || blob.length <= 0) ? null : new String(blob, "UTF-8");
                appInfo.businessType = cursor.getInt(cursor.getColumnIndex("business_type"));
                appInfo.busiData = cursor.getBlob(cursor.getColumnIndex("business_data"));
                appInfo.transData = cursor.getBlob(cursor.getColumnIndex("trans_data"));
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    private ContentValues m5390a(AppInfo appInfo, int i) {
        byte[] bArr = null;
        ContentValues contentValues = new ContentValues();
        contentValues.put("pkgName", appInfo.pkgName);
        contentValues.put("appName", appInfo.appName);
        contentValues.put("version", appInfo.newVersion);
        contentValues.put("versionCode", new StringBuilder(String.valueOf(appInfo.newVersionCode)).toString());
        contentValues.put("versionType", new StringBuilder(String.valueOf(appInfo.versionType)).toString());
        contentValues.put("downloadCount", new StringBuilder(String.valueOf(appInfo.downloadCount)).toString());
        contentValues.put("size", new StringBuilder(String.valueOf(appInfo.mSize)).toString());
        contentValues.put("certMD5", appInfo.certMD5);
        contentValues.put("newVersion", new StringBuilder(String.valueOf(appInfo.newVersion)).toString());
        contentValues.put("fileUrl", appInfo.fileUrl);
        contentValues.put("logoUrl", appInfo.logoUrl);
        contentValues.put("itemType", (Integer) 0);
        contentValues.put("describe", appInfo.describe);
        contentValues.put("score", new StringBuilder(String.valueOf(appInfo.score)).toString());
        contentValues.put("expirationTime", appInfo.expirationTime);
        contentValues.put("newVersionCode", Integer.valueOf(appInfo.newVersionCode));
        contentValues.put("browserUrl", appInfo.browserUrl);
        contentValues.put("softwareSource", appInfo.mSoftwareSourceContent);
        contentValues.put("softwareSourceUrl", appInfo.mSoftwareSourceUrl);
        contentValues.put("sw_type", Integer.valueOf(appInfo.sw_type));
        contentValues.put("top_flag", Integer.valueOf(appInfo.top_flag));
        contentValues.put("plugintype", Integer.valueOf(appInfo.plugintype));
        contentValues.put("likepercent", appInfo.likepercent);
        contentValues.put("jumpUrl", appInfo.jumpUrl);
        contentValues.put("ifSelected", Boolean.valueOf(appInfo.ifSelected));
        contentValues.put("jumptype", Integer.valueOf(appInfo.jumptype));
        contentValues.put("categoryid", Integer.valueOf(i));
        contentValues.put("channelid", appInfo.channelId);
        contentValues.put("productID", Integer.valueOf(appInfo.mProductId));
        contentValues.put("fileID", Integer.valueOf(appInfo.mFileId));
        contentValues.put("SoftID", Integer.valueOf(appInfo.mSoftId));
        contentValues.put("source", Integer.valueOf(appInfo.mSource));
        contentValues.put("custom_title", appInfo.mTitle);
        contentValues.put("custom_sub_title", appInfo.mSubTitle);
        contentValues.put("dest_category_id", Integer.valueOf(appInfo.mDestCategoryId));
        contentValues.put("default_show_type", Integer.valueOf(appInfo.defaultShowType));
        contentValues.put("pic_icon_url", appInfo.picIconUrl);
        contentValues.put("pic_btn_url", appInfo.picBtnUrl);
        contentValues.put("apkfileMd5", new StringBuilder(String.valueOf(appInfo.apkFileMd5)).toString());
        contentValues.put("bannerId", new StringBuilder(String.valueOf(appInfo.bannerId)).toString());
        if (appInfo != null) {
            try {
                bArr = appInfo.strExtend.getBytes("UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        contentValues.put("str_extend", bArr);
        contentValues.put("business_type", Integer.valueOf(appInfo.businessType));
        contentValues.put("business_data", appInfo.busiData);
        contentValues.put("trans_data", appInfo.transData);
        return contentValues;
    }
}
