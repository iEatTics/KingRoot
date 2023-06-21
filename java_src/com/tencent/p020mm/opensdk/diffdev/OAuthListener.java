package com.tencent.p020mm.opensdk.diffdev;
/* renamed from: com.tencent.mm.opensdk.diffdev.OAuthListener */
/* loaded from: classes.dex */
public interface OAuthListener {
    void onAuthFinish(OAuthErrCode oAuthErrCode, String str);

    void onAuthGotQrcode(String str, byte[] bArr);

    void onQrcodeScanned();
}
