package com.tencent.feedback.anr;

import com.tencent.feedback.common.C4073e;
import java.util.HashMap;
/* renamed from: com.tencent.feedback.anr.d */
/* loaded from: classes.dex */
final class C4063d implements InterfaceC4066g {

    /* renamed from: a */
    private /* synthetic */ C4065f f4403a;

    /* renamed from: b */
    private /* synthetic */ boolean f4404b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C4063d(C4065f c4065f, boolean z) {
        this.f4403a = c4065f;
        this.f4404b = z;
    }

    @Override // com.tencent.feedback.anr.InterfaceC4066g
    /* renamed from: a */
    public final boolean mo1130a(String str, int i, String str2, String str3) {
        C4073e.m1015b("new thread %s", str);
        if (this.f4403a.f4407a > 0 && this.f4403a.f4409c > 0 && this.f4403a.f4408b != null) {
            if (this.f4403a.f4410d == null) {
                this.f4403a.f4410d = new HashMap();
            }
            this.f4403a.f4410d.put(str, new String[]{str2, str3, new StringBuilder().append(i).toString()});
        }
        return true;
    }

    @Override // com.tencent.feedback.anr.InterfaceC4066g
    /* renamed from: a */
    public final boolean mo1131a(long j, long j2, String str) {
        C4073e.m1015b("new process %s", str);
        if (str.equals(str)) {
            this.f4403a.f4407a = j;
            this.f4403a.f4408b = str;
            this.f4403a.f4409c = j2;
            return this.f4404b;
        }
        return true;
    }

    @Override // com.tencent.feedback.anr.InterfaceC4066g
    /* renamed from: a */
    public final boolean mo1132a(long j) {
        C4073e.m1015b("process end %d", Long.valueOf(j));
        return this.f4403a.f4407a <= 0 || this.f4403a.f4409c <= 0 || this.f4403a.f4408b == null;
    }
}
