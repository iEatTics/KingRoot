package com.kingroot.kinguser;

import android.support.p007v7.widget.helper.ItemTouchHelper;
import android.text.TextUtils;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.akl;
import com.kingroot.kinguser.anh;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadDataListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class anh {
    private static cce<anh> apk = new cce<anh>() { // from class: com.kingroot.kinguser.anh.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: IX */
        public anh create() {
            return new anh();
        }
    };
    private int aAE;
    private final List<String> aAF;

    /* renamed from: com.kingroot.kinguser.anh$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1263a {
        void onFinish(List<String> list);
    }

    private anh() {
        this.aAF = new ArrayList();
    }

    /* renamed from: IW */
    public static anh m10274IW() {
        return apk.get();
    }

    /* renamed from: a */
    public void m10273a(int i, final InterfaceC1263a interfaceC1263a) {
        synchronized (this.aAF) {
            if (!C3942yy.m1351d(this.aAF)) {
                if (interfaceC1263a != null) {
                    interfaceC1263a.onFinish(this.aAF);
                }
                return;
            }
            alq.m10547GY().mo10428a(i, this.aAE, 30, new ILoadDataListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.utils.HotWordManager$2
                @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadDataListener
                public void onReceive(int i2, List<String> list) {
                    List list2;
                    List list3;
                    List list4;
                    int i3;
                    ArrayList arrayList = new ArrayList();
                    if (i2 == 0) {
                        if (list != null) {
                            anh anhVar = anh.this;
                            i3 = anh.this.aAE;
                            anhVar.aAE = i3 + ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
                            if (list.size() != 0) {
                                anh.this.m10269aD(list);
                                anh.this.m10268aE(list);
                                anh.this.m10267aF(list);
                                arrayList.addAll(list);
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        ArrayList<String> m11256AT = akl.m11257AS().m11256AT();
                        if (!C3942yy.m1351d(m11256AT)) {
                            arrayList.addAll(m11256AT);
                        } else {
                            return;
                        }
                    }
                    list2 = anh.this.aAF;
                    synchronized (list2) {
                        list3 = anh.this.aAF;
                        list3.clear();
                        list4 = anh.this.aAF;
                        list4.addAll(arrayList);
                    }
                    if (interfaceC1263a != null) {
                        interfaceC1263a.onFinish(arrayList);
                    }
                    akl.m11257AS().m11203at(arrayList);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aD */
    public void m10269aD(List<String> list) {
        int size;
        if (list != null && (size = list.size()) != 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(list.get(0));
            for (int i = 1; i < size; i++) {
                String str = list.get(i);
                if (!TextUtils.isEmpty(str)) {
                    if (str.equals(list.get(0))) {
                        break;
                    }
                    arrayList.add(list.get(i));
                }
            }
            list.clear();
            list.addAll(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aE */
    public void m10268aE(List<String> list) {
        if (!C3942yy.m1351d(list)) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < list.size()) {
                    if (!TextUtils.isEmpty(list.get(i2))) {
                        list.set(i2, list.get(i2).trim());
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aF */
    public void m10267aF(List<String> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            if (anf.m10278hB(list.get(size))) {
                list.remove(size);
            }
        }
        int size2 = list.size();
        if (size2 > 0) {
            int i = 4;
            Iterator<String> it = anf.aAz.iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    list.add(i2 % size2, anf.m10298A(it.next(), false));
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }
}
