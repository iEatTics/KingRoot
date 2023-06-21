package com.kingroot.kinguser;

import android.text.TextUtils;
import android.util.SparseArray;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes.dex */
public class ajp {
    /* renamed from: b */
    public void m11439b(List<String> list, List<String> list2, List<String> list3) {
        try {
            m11438c(list, list2, list3);
        } catch (Exception e) {
        }
    }

    /* renamed from: c */
    private void m11438c(List<String> list, List<String> list2, List<String> list3) {
        try {
            LinkedList<ProcessUtils.ProcessInfo> m11436zs = m11436zs();
            SparseArray<String> m11444a = m11444a(m11436zs, m11442ar(m11436zs), m11441as(m11436zs), list2, list3);
            for (String str : list) {
                for (ProcessUtils.ProcessInfo processInfo : m11436zs) {
                    if (m11446X(processInfo.name, str) && m11444a.get(processInfo.pid) == null) {
                        m11444a.put(processInfo.pid, processInfo.name);
                        list3.add(processInfo.name);
                    }
                }
            }
            if (!m11440b(m11444a)) {
                list3.clear();
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: zs */
    private LinkedList<ProcessUtils.ProcessInfo> m11436zs() {
        return m11443aR(false);
    }

    /* renamed from: aR */
    private LinkedList<ProcessUtils.ProcessInfo> m11443aR(boolean z) {
        List<ProcessUtils.ProcessInfo> m13134qJ = ProcessUtils.m13134qJ();
        LinkedList<ProcessUtils.ProcessInfo> linkedList = new LinkedList<>();
        if (m13134qJ != null) {
            for (ProcessUtils.ProcessInfo processInfo : m13134qJ) {
                if (processInfo.ppid != 2 && processInfo.uid == 0 && (z || (!m11446X(processInfo.name, "ku.sud") && !m11446X(processInfo.name, "daemonsu") && !m11446X(processInfo.name, "kuInotify")))) {
                    linkedList.add(processInfo);
                }
            }
        }
        return linkedList;
    }

    /* renamed from: ar */
    private SparseArray<String> m11442ar(List<ProcessUtils.ProcessInfo> list) {
        SparseArray<String> sparseArray = new SparseArray<>(1);
        for (ProcessUtils.ProcessInfo processInfo : list) {
            if (processInfo.uid == 0) {
                VTCmdResult m11437dB = m11437dB(aba.m12855qF() + " head /proc/" + processInfo.pid + "/maps");
                String str = m11437dB.mStdOut;
                if (m11437dB.success() && !m11437dB.mStdOut.contains("Failure")) {
                    sparseArray.put(processInfo.pid, str);
                }
            }
        }
        return sparseArray;
    }

    /* renamed from: as */
    private SparseArray<String> m11441as(List<ProcessUtils.ProcessInfo> list) {
        SparseArray<String> sparseArray = new SparseArray<>(1);
        for (ProcessUtils.ProcessInfo processInfo : list) {
            if (processInfo.uid == 0) {
                VTCmdResult m11437dB = m11437dB("cat /proc/" + processInfo.pid + "/environ");
                String str = m11437dB.mStdOut;
                if (m11437dB.success() && str != null) {
                    if (sparseArray.get(processInfo.pid) != null) {
                        throw new IllegalStateException();
                    }
                    sparseArray.put(processInfo.pid, str);
                }
                if (processInfo.uid != 0) {
                    throw new IllegalStateException();
                }
            }
        }
        return sparseArray;
    }

    /* renamed from: a */
    private SparseArray<String> m11444a(List<ProcessUtils.ProcessInfo> list, SparseArray<String> sparseArray, SparseArray<String> sparseArray2, List<String> list2, List<String> list3) {
        SparseArray<String> sparseArray3 = new SparseArray<>(1);
        for (ProcessUtils.ProcessInfo processInfo : list) {
            if (processInfo.uid == 0 && m11445a(sparseArray, sparseArray2, list2, processInfo.pid)) {
                sparseArray3.put(processInfo.pid, processInfo.name);
                list3.add(processInfo.name);
            }
        }
        return sparseArray3;
    }

    /* renamed from: a */
    private boolean m11445a(SparseArray<String> sparseArray, SparseArray<String> sparseArray2, List<String> list, int i) {
        String str = sparseArray.get(i);
        String str2 = sparseArray2.get(i);
        for (String str3 : list) {
            if ((str != null && str.contains(str3)) || (str2 != null && str2.contains(str3))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: dB */
    private VTCmdResult m11437dB(String str) {
        return abc.m12845qK().m12846el(str);
    }

    /* renamed from: b */
    private boolean m11440b(SparseArray<String> sparseArray) {
        if (sparseArray == null || sparseArray.size() <= 0) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < sparseArray.size(); i++) {
            String num = Integer.toString(sparseArray.keyAt(i));
            if (num != null) {
                if (sb.length() != 0) {
                    sb.append(" && ");
                }
                sb.append("kill -9 ");
                sb.append(num);
            }
        }
        VTCmdResult m11437dB = m11437dB(sb.toString());
        return m11437dB == null || (m11437dB.success() && !m11437dB.mStdOut.contains("Failure"));
    }

    /* renamed from: X */
    private boolean m11446X(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return false;
        }
        return str.equals(str2) || str.startsWith(str2) || str.endsWith(str2);
    }
}
