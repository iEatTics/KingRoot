package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.jx */
/* loaded from: classes.dex */
final class C3232jx {
    public final int pid;

    /* renamed from: to */
    public final String f2909to;

    /* renamed from: tp */
    public final String f2910tp;

    /* renamed from: tq */
    public final InterfaceC3224jr f2911tq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3232jx(String str, int i, String str2, InterfaceC3224jr interfaceC3224jr) {
        this.f2910tp = str;
        this.f2909to = str2;
        this.f2911tq = interfaceC3224jr;
        this.pid = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: cM */
    public String m3340cM() {
        String valueOf;
        if (this.pid <= 0) {
            valueOf = this.f2911tq.mo3283cG();
        } else {
            valueOf = String.valueOf(this.pid);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2910tp);
        sb.append(" ").append(valueOf);
        sb.append(" ").append(this.f2909to);
        sb.append(" ").append(this.f2911tq.mo3278x());
        sb.append(" ").append(this.f2911tq.mo3282cH().length());
        sb.append(" ").append(this.f2911tq.mo3282cH());
        sb.append(" ").append(C3234jz.m3329F() ? 1 : 0);
        sb.append(" ").append(this.f2911tq.mo3281cI());
        sb.append(" ").append(this.f2911tq.mo3280cJ());
        sb.append(" ").append(C3304mf.m3091ev());
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public String m3341E() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2910tp);
        sb.append(" ").append("-f");
        sb.append(" ").append(this.pid);
        sb.append(" ").append(this.f2909to);
        return sb.toString();
    }
}
