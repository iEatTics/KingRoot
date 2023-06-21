package oicq.wlogin_sdk.devicelock;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.devicelock.e */
/* loaded from: classes.dex */
public class C4311e {
    protected int _max = 128;
    protected int _pos = 0;
    protected int _type = 0;
    protected int _head_len = 4;
    protected int _body_len = 0;
    protected byte[] _buf = new byte[this._max];

    public void fill_body(byte[] bArr, int i) {
        if (i > this._max - this._head_len) {
            this._max = this._head_len + i + 64;
            byte[] bArr2 = new byte[this._max];
            System.arraycopy(this._buf, 0, bArr2, 0, this._pos);
            this._buf = bArr2;
        }
        this._body_len = i;
        System.arraycopy(bArr, 0, this._buf, this._pos, i);
        this._pos += i;
        set_length();
    }

    public void fill_head() {
        C4393util.int16_to_buf(this._buf, this._pos, this._type);
        this._pos += 2;
        C4393util.int16_to_buf(this._buf, this._pos, 0);
        this._pos += 2;
    }

    public byte[] get_buf() {
        byte[] bArr = new byte[this._pos];
        System.arraycopy(this._buf, 0, bArr, 0, this._pos);
        return bArr;
    }

    public byte[] get_data() {
        byte[] bArr = new byte[this._body_len];
        System.arraycopy(this._buf, this._head_len, bArr, 0, this._body_len);
        return bArr;
    }

    public int get_data_len() {
        return this._body_len;
    }

    public int get_size() {
        return this._pos;
    }

    public int get_type() {
        return this._type;
    }

    public void parse() {
    }

    public int put_block(byte[] bArr, int i) {
        int length = bArr.length;
        C4393util.int16_to_buf(this._buf, i, length);
        int i2 = i + 2;
        System.arraycopy(bArr, 0, this._buf, i2, length);
        return length + i2;
    }

    public int put_int16(int i, int i2) {
        C4393util.int16_to_buf(this._buf, i2, i);
        return i2 + 2;
    }

    public int put_int32(long j, int i) {
        C4393util.int64_to_buf32(this._buf, i, j);
        return i + 4;
    }

    public int put_int64(long j, int i) {
        C4393util.int64_to_buf(this._buf, i, j);
        return i + 8;
    }

    public int put_int8(int i, int i2) {
        C4393util.int8_to_buf(this._buf, i2, i);
        return i2 + 1;
    }

    public int set_buf(byte[] bArr, int i) {
        if (i > this._max) {
            this._max = i + 128;
            this._buf = new byte[this._max];
        }
        this._pos = i;
        System.arraycopy(bArr, 0, this._buf, 0, i);
        this._type = C4393util.buf_to_int16(bArr, 0);
        this._body_len = i - this._head_len;
        try {
            parse();
            return 0;
        } catch (Exception e) {
            return C4393util.E_PK_LEN;
        }
    }

    public int set_data(byte[] bArr, int i) {
        if (this._head_len + i > this._max) {
            this._max = this._head_len + i + 128;
            byte[] bArr2 = new byte[this._max];
            System.arraycopy(this._buf, 0, bArr2, 0, this._head_len);
            this._buf = bArr2;
        }
        this._pos = this._head_len + i;
        System.arraycopy(bArr, 0, this._buf, this._head_len, i);
        this._body_len = i;
        C4393util.int16_to_buf(this._buf, 0, this._type);
        C4393util.int16_to_buf(this._buf, 2, this._body_len);
        try {
            parse();
            return 0;
        } catch (Exception e) {
            return C4393util.E_PK_LEN;
        }
    }

    public void set_length() {
        C4393util.int16_to_buf(this._buf, 2, this._pos - this._head_len);
    }

    public String toString() {
        String str = "";
        for (int i = 0; i < this._pos; i++) {
            str = (str + Integer.toHexString((this._buf[i] >> 4) & 15)) + Integer.toHexString(this._buf[i] & 15);
        }
        return str;
    }
}
