package com.google.android.mms.pdu;
/* loaded from: classes.dex */
public class RetrieveConf extends MultimediaMessagePdu {
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

    public byte[] getMessageId() {
        return null;
    }

    public void setMessageId(byte[] bArr) {
    }

    public int getReadReport() {
        return 0;
    }

    public void setReadReport(int i) {
    }

    public int getRetrieveStatus() {
        return 0;
    }

    public void setRetrieveStatus(int i) {
    }

    public EncodedStringValue getRetrieveText() {
        return null;
    }

    public void setRetrieveText(EncodedStringValue encodedStringValue) {
    }

    public byte[] getTransactionId() {
        return null;
    }

    public void setTransactionId(byte[] bArr) {
    }

    public EncodedStringValue[] getCc() {
        return null;
    }

    public void addCc(EncodedStringValue encodedStringValue) {
    }
}
