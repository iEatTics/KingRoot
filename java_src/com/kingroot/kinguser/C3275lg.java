package com.kingroot.kinguser;

import android.os.IBinder;
import android.os.Parcel;
import com.king.uranus.C0386aV;
import com.king.uranus.InterfaceC0393bd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.lg */
/* loaded from: classes.dex */
public final class C3275lg extends C3274lf {
    C3275lg(String str, IBinder iBinder) {
        super(str, iBinder);
    }

    /* renamed from: ba */
    public static C3275lg m3192ba(String str) {
        IBinder service = C3344nf.getService(str);
        if (service != null) {
            return new C3275lg(str, service);
        }
        return null;
    }

    /* renamed from: h */
    public boolean m3189h(int i, String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(m3198dM());
            obtain.writeInt(i);
            obtain.writeString(str);
            boolean transact = m3197dN().transact(5, obtain, obtain2, 1);
            obtain2.readException();
            return transact;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public int getVersion() {
        int i = 0;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(m3198dM());
            obtain.writeInt(1);
            m3197dN().transact(12, obtain, obtain2, 0);
            obtain2.readException();
            i = obtain2.readInt();
        } catch (Exception e) {
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
        return i;
    }

    /* renamed from: dO */
    public int m3190dO() {
        int i = 0;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(m3198dM());
            m3197dN().transact(21, obtain, obtain2, 0);
            obtain2.readException();
            i = obtain2.readInt();
        } catch (Exception e) {
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
        return i;
    }

    /* renamed from: ae */
    public boolean m3195ae(int i) {
        if (i < 0) {
            return false;
        }
        boolean z = true;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(m3198dM());
            obtain.writeInt(i);
            m3197dN().transact(22, obtain, obtain2, 0);
            obtain2.readException();
            obtain2.recycle();
            obtain.recycle();
        } catch (Exception e) {
            obtain2.recycle();
            obtain.recycle();
            z = false;
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<InterfaceC0393bd> m3196a(C3286lr c3286lr) {
        ArrayList arrayList;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        ArrayList arrayList2 = null;
        try {
            try {
                obtain.writeInterfaceToken(m3198dM());
                c3286lr.m3153d(obtain);
                m3197dN().transact(11, obtain, obtain2, 0);
                obtain2.readException();
                int readInt = obtain2.readInt();
                if (readInt <= 0) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(readInt);
                    for (int i = 0; i < readInt; i++) {
                        try {
                            arrayList.add(C0386aV.m13680f(obtain2));
                        } catch (Exception e) {
                            arrayList2 = arrayList;
                            obtain2.recycle();
                            obtain.recycle();
                            arrayList = arrayList2;
                            if (arrayList != null) {
                            }
                        }
                    }
                }
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        } catch (Exception e2) {
        }
        if (arrayList != null) {
            return Collections.emptyList();
        }
        return arrayList;
    }

    /* renamed from: af */
    public InterfaceC0393bd m3194af(int i) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        InterfaceC0393bd interfaceC0393bd = null;
        try {
            obtain.writeInterfaceToken(m3198dM());
            obtain.writeInt(i);
            m3197dN().transact(13, obtain, obtain2, 0);
            obtain2.readException();
            if (obtain2.readInt() != 0) {
                interfaceC0393bd = C0386aV.m13680f(obtain2);
            }
        } catch (Exception e) {
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
        return interfaceC0393bd;
    }

    /* renamed from: b */
    public void m3193b(IBinder iBinder) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(m3198dM());
            obtain.writeStrongBinder(iBinder);
            m3197dN().transact(14, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    /* renamed from: d */
    public boolean m3191d(InterfaceC3280ll interfaceC3280ll) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(m3198dM());
            interfaceC3280ll.mo3119d(obtain);
            return m3197dN().transact(15, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    public void setEnabled(boolean z) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(m3198dM());
            obtain.writeInt(z ? 1 : 0);
            m3197dN().transact(17, obtain, null, 1);
        } catch (Exception e) {
        } finally {
            obtain.recycle();
        }
    }
}
