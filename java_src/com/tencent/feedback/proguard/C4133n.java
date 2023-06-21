package com.tencent.feedback.proguard;

import cloudsdk.ext.p008kr.RootConst;
import java.util.Locale;
/* renamed from: com.tencent.feedback.proguard.n */
/* loaded from: classes.dex */
public final class C4133n {

    /* renamed from: a */
    public static final String[][] f4756a = new String[5];

    static {
        String[][] strArr = f4756a;
        String[] strArr2 = new String[2];
        strArr2[0] = "ao";
        strArr2[1] = String.format(Locale.US, "CREATE TABLE %s ( %s INTEGER PRIMARY KEY , %s int , %s int , %s int , %s int , %s blob , %s text , %s int ,%s int , %s int)", "ao", "_id", "_time", "_type", "_prority", "_length", "_datas", "_key", "_upCounts", "_count", "_state");
        strArr[0] = strArr2;
        String[][] strArr3 = f4756a;
        String[] strArr4 = new String[2];
        strArr4[0] = RootConst.KEY_PROGRESS_COUNT;
        strArr4[1] = String.format(Locale.US, "CREATE TABLE %s ( %s INTEGER PRIMARY KEY , %s text unique  , %s int , %s int , %s int , %s int , %s int , %s text)", RootConst.KEY_PROGRESS_COUNT, "_id", "_countid", "_prority", "_local", "_stime", "_utime", "_ctime", "_cparams");
        strArr3[1] = strArr4;
        String[][] strArr5 = f4756a;
        String[] strArr6 = new String[2];
        strArr6[0] = "gray";
        strArr6[1] = String.format(Locale.US, "CREATE TABLE %s ( %s INTEGER PRIMARY KEY , %s int , %s text unique )", "gray", "_id", "_time", "_uid");
        strArr5[2] = strArr6;
        String[][] strArr7 = f4756a;
        String[] strArr8 = new String[2];
        strArr8[0] = "file";
        strArr8[1] = String.format(Locale.US, "CREATE TABLE %s ( %s INTEGER PRIMARY KEY , %s text , %s int , %s int , %s text , %s int , %s text )", "file", "_id", "_n", "_ut", "_sz", "_sa", "_t", "_ac");
        strArr7[3] = strArr8;
        String[][] strArr9 = f4756a;
        String[] strArr10 = new String[2];
        strArr10[0] = "strategy";
        strArr10[1] = String.format(Locale.US, "CREATE TABLE %s ( %s INTEGER PRIMARY KEY , %s int unique , %s int , %s blob)", "strategy", "_id", "_key", "_ut", "_datas");
        strArr9[4] = strArr10;
    }
}
