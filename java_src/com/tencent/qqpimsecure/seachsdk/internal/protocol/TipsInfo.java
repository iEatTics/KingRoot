package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class TipsInfo extends JceStruct {
    static ReminderHelperTips bQA = new ReminderHelperTips();
    static NotifyWindowTips bQB = new NotifyWindowTips();
    static FloatingWindowTips bQC = new FloatingWindowTips();
    public ReminderHelperTips reminderHelperTips = null;
    public NotifyWindowTips notifyWindowTips = null;
    public FloatingWindowTips floatingWindowTips = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new TipsInfo();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.reminderHelperTips != null) {
            jceOutputStream.write((JceStruct) this.reminderHelperTips, 0);
        }
        if (this.notifyWindowTips != null) {
            jceOutputStream.write((JceStruct) this.notifyWindowTips, 1);
        }
        if (this.floatingWindowTips != null) {
            jceOutputStream.write((JceStruct) this.floatingWindowTips, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.reminderHelperTips = (ReminderHelperTips) jceInputStream.read((JceStruct) bQA, 0, false);
        this.notifyWindowTips = (NotifyWindowTips) jceInputStream.read((JceStruct) bQB, 1, false);
        this.floatingWindowTips = (FloatingWindowTips) jceInputStream.read((JceStruct) bQC, 2, false);
    }
}
