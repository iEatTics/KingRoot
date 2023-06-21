package com.p019qq.taf.jce.dynamic;

import com.p019qq.taf.jce.JceDecodeException;
import com.p019qq.taf.jce.JceOutputStream;
import java.nio.ByteBuffer;
/* renamed from: com.qq.taf.jce.dynamic.DynamicOutputStream */
/* loaded from: classes.dex */
public final class DynamicOutputStream extends JceOutputStream {
    public DynamicOutputStream(ByteBuffer byteBuffer) {
        super(byteBuffer);
    }

    public DynamicOutputStream(int i) {
        super(i);
    }

    public DynamicOutputStream() {
    }

    public void write(JceField jceField) {
        int i = 0;
        int tag = jceField.getTag();
        if (jceField instanceof ZeroField) {
            write(0, tag);
        } else if (jceField instanceof IntField) {
            write(((IntField) jceField).get(), tag);
        } else if (jceField instanceof ShortField) {
            write(((ShortField) jceField).get(), tag);
        } else if (jceField instanceof ByteField) {
            write(((ByteField) jceField).get(), tag);
        } else if (jceField instanceof StringField) {
            write(((StringField) jceField).get(), tag);
        } else if (jceField instanceof ByteArrayField) {
            write(((ByteArrayField) jceField).get(), tag);
        } else if (jceField instanceof ListField) {
            ListField listField = (ListField) jceField;
            reserve(8);
            writeHead((byte) 9, tag);
            write(listField.size(), 0);
            JceField[] jceFieldArr = listField.get();
            int length = jceFieldArr.length;
            while (i < length) {
                write(jceFieldArr[i]);
                i++;
            }
        } else if (jceField instanceof MapField) {
            MapField mapField = (MapField) jceField;
            reserve(8);
            writeHead((byte) 8, tag);
            int size = mapField.size();
            write(size, 0);
            while (i < size) {
                write(mapField.getKey(i));
                write(mapField.getValue(i));
                i++;
            }
        } else if (jceField instanceof StructField) {
            reserve(2);
            writeHead((byte) 10, tag);
            for (JceField jceField2 : ((StructField) jceField).get()) {
                write(jceField2);
            }
            reserve(2);
            writeHead((byte) 11, 0);
        } else if (jceField instanceof LongField) {
            write(((LongField) jceField).get(), tag);
        } else if (jceField instanceof FloatField) {
            write(((FloatField) jceField).get(), tag);
        } else if (jceField instanceof DoubleField) {
            write(((DoubleField) jceField).get(), tag);
        } else {
            throw new JceDecodeException("unknow JceField type: " + jceField.getClass().getName());
        }
    }
}
