package com.tencent.feedback.eup.jni;
/* loaded from: classes.dex */
public interface NativeExceptionHandler {
    void handleNativeException(int i, int i2, long j, long j2, String str, String str2, String str3, String str4);

    void handleNativeException(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7);

    void handleNativeException(int i, int i2, long j, long j2, String str, String str2, String str3, String str4, int i3, String str5, int i4, int i5, int i6, String str6, String str7, String[] strArr);
}
