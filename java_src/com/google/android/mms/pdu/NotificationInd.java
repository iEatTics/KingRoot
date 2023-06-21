package com.google.android.mms.pdu;
/* loaded from: classes.dex */
public class NotificationInd extends GenericPdu {
    public int getContentClass() {
        return 0;
    }

    public void setContentClass(int i) {
    }

    public byte[] getContentLocation() {
        return null;
    }

    public void setContentLocation(byte[] bArr) {
    }

    public long getExpiry() {
        return 0L;
    }

    public void setExpiry(long j) {
    }

    @Override // com.google.android.mms.pdu.GenericPdu
    public EncodedStringValue getFrom() {
        return null;
    }

    @Override // com.google.android.mms.pdu.GenericPdu
    public void setFrom(EncodedStringValue encodedStringValue) {
    }

    public byte[] getMessageClass() {
        return null;
    }

    public void setMessageClass(byte[] bArr) {
    }

    public long getMessageSize() {
        return 0L;
    }

    public void setMessageSize(long j) {
    }

    public EncodedStringValue getSubject() {
        return null;
    }

    public void setSubject(EncodedStringValue encodedStringValue) {
    }

    public byte[] getTransactionId() {
        return null;
    }

    public void setTransactionId(byte[] bArr) {
    }

    public int getDeliveryReport() {
        return 0;
    }

    public void setDeliveryReport(int i) {
    }
}
