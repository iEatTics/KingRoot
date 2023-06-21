package com.google.android.mms.pdu;
/* loaded from: classes.dex */
public class SendReq extends MultimediaMessagePdu {
    public EncodedStringValue[] getBcc() {
        return null;
    }

    public void addBcc(EncodedStringValue encodedStringValue) {
    }

    public void setBcc(EncodedStringValue[] encodedStringValueArr) {
    }

    public EncodedStringValue[] getCc() {
        return null;
    }

    public void addCc(EncodedStringValue encodedStringValue) {
    }

    public void setCc(EncodedStringValue[] encodedStringValueArr) {
    }

    public byte[] getContentType() {
        return null;
    }

    public void setContentType(byte[] bArr) {
    }

    public int getDeliveryReport() {
        return 0;
    }

    public void setDeliveryReport(int i) {
    }

    public long getExpiry() {
        return 0L;
    }

    public void setExpiry(long j) {
    }

    public long getMessageSize() {
        return 0L;
    }

    public void setMessageSize(long j) {
    }

    public byte[] getMessageClass() {
        return null;
    }

    public void setMessageClass(byte[] bArr) {
    }

    public int getReadReport() {
        return 0;
    }

    public void setReadReport(int i) {
    }

    public void setTo(EncodedStringValue[] encodedStringValueArr) {
    }

    public byte[] getTransactionId() {
        return null;
    }

    public void setTransactionId(byte[] bArr) {
    }
}
