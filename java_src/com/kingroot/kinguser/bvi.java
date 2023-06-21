package com.kingroot.kinguser;

import android.database.Cursor;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import com.tencent.qqpimsecure.seachsdk.common.SoftwareAdvertiseEntity;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public class bvi {
    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: ks */
    public synchronized java.util.ArrayList<com.tencent.qqpimsecure.seachsdk.common.SoftwareAdvertiseEntity> m5394ks(int r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L38
            java.lang.String r1 = "select * from software_sdk_advertise_table where category_id = "
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L38
            java.lang.StringBuilder r0 = r0.append(r6)     // Catch: java.lang.Throwable -> L38
            java.lang.String r1 = r0.toString()     // Catch: java.lang.Throwable -> L38
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L38
            r2.<init>()     // Catch: java.lang.Throwable -> L38
            r0 = 0
            com.kingroot.kinguser.bvg r3 = com.kingroot.kinguser.bvg.aiv()     // Catch: java.lang.Throwable -> L33
            android.database.Cursor r0 = r3.m5400nm(r1)     // Catch: java.lang.Throwable -> L33
        L1e:
            if (r0 == 0) goto L26
            boolean r1 = r0.moveToNext()     // Catch: java.lang.Throwable -> L33
            if (r1 != 0) goto L2b
        L26:
            r5.m5396h(r0)     // Catch: java.lang.Throwable -> L38
        L29:
            monitor-exit(r5)
            return r2
        L2b:
            com.tencent.qqpimsecure.seachsdk.common.SoftwareAdvertiseEntity r1 = r5.m5395i(r0)     // Catch: java.lang.Throwable -> L33
            r2.add(r1)     // Catch: java.lang.Throwable -> L33
            goto L1e
        L33:
            r1 = move-exception
            r5.m5396h(r0)     // Catch: java.lang.Throwable -> L38
            goto L29
        L38:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        L3b:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L3f:
            r5.m5396h(r1)     // Catch: java.lang.Throwable -> L38
            throw r0     // Catch: java.lang.Throwable -> L38
        L43:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L3f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bvi.m5394ks(int):java.util.ArrayList");
    }

    /* renamed from: h */
    private void m5396h(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    SoftwareAdvertiseEntity m5397a(Cursor cursor, HashMap<Integer, ArrayList<AppInfo>> hashMap, int i) {
        int i2;
        int i3 = cursor.getInt(cursor.getColumnIndex("model_id"));
        int i4 = cursor.getInt(cursor.getColumnIndex("type"));
        long j = cursor.getLong(cursor.getColumnIndex("server_id"));
        int i5 = cursor.getInt(cursor.getColumnIndex("category_id"));
        String string = cursor.getString(cursor.getColumnIndex("title"));
        String string2 = cursor.getString(cursor.getColumnIndex("content"));
        String string3 = cursor.getString(cursor.getColumnIndex("button_text"));
        String string4 = cursor.getString(cursor.getColumnIndex("icon_Url"));
        String string5 = cursor.getString(cursor.getColumnIndex("icon_big_url"));
        String string6 = cursor.getString(cursor.getColumnIndex("background_url"));
        String string7 = cursor.getString(cursor.getColumnIndex("destination_url"));
        cursor.getBlob(cursor.getColumnIndex("applist"));
        long j2 = cursor.getLong(cursor.getColumnIndex("expire_Time"));
        int i6 = cursor.getInt(cursor.getColumnIndex("priority"));
        String string8 = cursor.getString(cursor.getColumnIndex("package_Name"));
        int i7 = cursor.getInt(cursor.getColumnIndex("jump_Type"));
        String string9 = cursor.getString(cursor.getColumnIndex("jump_Param"));
        String string10 = cursor.getString(cursor.getColumnIndex("view_id"));
        String string11 = cursor.getString(cursor.getColumnIndex("topic_id"));
        String string12 = cursor.getString(cursor.getColumnIndex("is_push"));
        String string13 = cursor.getString(cursor.getColumnIndex("auto_run"));
        boolean z = cursor.getInt(cursor.getColumnIndex("need_guide")) > 0;
        int i8 = cursor.getInt(cursor.getColumnIndex("tab_index"));
        int i9 = cursor.getInt(cursor.getColumnIndex("page_id"));
        boolean z2 = cursor.getInt(cursor.getColumnIndex("has_next")) > 0;
        int i10 = cursor.getInt(cursor.getColumnIndex("next_page_index"));
        boolean z3 = false;
        boolean z4 = false;
        try {
            z3 = Boolean.valueOf(string12).booleanValue();
            z4 = Boolean.valueOf(string13).booleanValue();
        } catch (Exception e) {
        }
        ArrayList<AppInfo> arrayList = null;
        System.currentTimeMillis();
        if (hashMap != null) {
            arrayList = hashMap.get(Integer.valueOf(i5));
        }
        if (arrayList == null) {
            if (i == -1) {
                i2 = i4 == 6 ? 3 : 0;
            } else {
                i2 = i;
            }
            arrayList = (ArrayList) bvk.aiy().m5387ar(i5, i2);
        }
        SoftwareAdvertiseEntity softwareAdvertiseEntity = new SoftwareAdvertiseEntity(j, i3, i4, i5, string, string2, string3, string4, string5, string6, arrayList, string7, j2, i6, string8, i7, string9, string10, string11, z3, z4);
        softwareAdvertiseEntity.isNeedGuide = z;
        softwareAdvertiseEntity.index = i8;
        softwareAdvertiseEntity.pageId = i9;
        softwareAdvertiseEntity.nextPageIndex = i10;
        softwareAdvertiseEntity.hasNextPage = z2;
        return softwareAdvertiseEntity;
    }

    /* renamed from: i */
    SoftwareAdvertiseEntity m5395i(Cursor cursor) {
        return m5397a(cursor, null, -1);
    }
}
