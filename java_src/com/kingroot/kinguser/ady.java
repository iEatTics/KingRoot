package com.kingroot.kinguser;

import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
/* loaded from: classes.dex */
public class ady extends AbstractC3792vn {
    private static ady aeb;
    static int aec = 0;
    private static final int[] aed = {100145, 100121, 100125, 100128, 100138, 100149, 100152, 100151, 100168, 100170, 100189, 100193, 100194, 100200, 100202, 100203, 100210, 100254, 100224, 100225, 100226, 100231, 100257, 100233, 100255, 100260, 100261, 100129, 100130, 100131, 100133, 100134, 100135, 100136, 100137, 100142, 100266, 100267, 100268, 100269, 100292, 100290, 100293, 100294, 100295, 100296, 100297, 100298, 100335, 100339, 100342, 100343, 100344, 100345, 100407, 100408, 100392, 100409, 100410, 100412, 100413, 100427, 100428, 100433, 100434, 100435, 100436, 100437, 100438, 100521, 100522, 100525, 100530, 100529, 100545, 100562, 100570, 100613, 100620, 100635, 100636, 100637, 100642, 100643, 100645, 100654, 100700, 100718, 100736};
    private static final int[] aee = {100144, 100221, 100287, 100291, 100288, 100305, 100284, 100285, 100332, 100340, 100341, 100346, 100347};
    private static final int[] aef = {100026, 100027, 100029, 100030, 100031, 100032, 100033, 100034, 100035, 100036, 100037, 100038, 100039, 100040, 100041, 100042, 100043, 100044, 100045, 100046, 100047, 100048, 100049, 100050, 100051, 100052, 100053, 100054, 100055, 100056, 100057, 100058, 100059, 100060, 100061, 100062, 100063, 100064, 100065, 100066, 100067, 100068, 100069, 100070, 100071, 100072, 100073, 100074, 100126, 100127, 100139, 100147, 100148, 100153, 100156, 100154, 100157, 100163, 100164, 100165, 100159, 100160, 100161, 100162, 100166, 100167, 100171, 100172, 100173, 100174, 100175, 100176, 100177, 100178, 100179, 100180, 100181, 100183, 100184, 100185, 100186, 100190, 100191, 100192, 100195, 100196, 100197, 100198, 100199, 100201, 100204, 100205, 100207, 100208, 100247, 100256, 100234, 100235, 100236, 100237, 100238, 100239, 100240, 100241, 100243, 100244, 100245, 100227, 100228, 100229, 100230, 100265, 100212, 100213, 100214, 100215, 100216, 100217, 100258, 100259, 100218, 100219, 100220, 100222, 100223, 100286, 100279, 100270, 100271, 100272, 100273, 100274, 100275, 100276, 100277, 100281, 100283, 100306, 100307, 100308, 100309, 100310, 100311, 100312, 100313, 100314, 100315, 100316, 100317, 100318, 100319, 100320, 100321, 100322, 100323, 100324, 100325, 100326, 100327, 100328, 100333, 100334, 100336, 100337, 100338, 100348, 100349, 100350, 100351, 100352, 100353, 100354, 100355, 100356, 100357, 100358, 100359, 100361, 100362, 100363, 100364, 100365, 100366, 100367, 100368, 100369, 100370, 100371, 100372, 100373, 100374, 100375, 100376, 100393, 100394, 100395, 100396, 100397, 100398, 100399, 100400, 100401, 100402, 100403, 100404, 100405, 100406, 100377, 100411, 100414, 100415, 100416, 100417, 100418, 100419, 100420, 100421, 100422, 100423, 100424, 100425, 100426, 100429, 100430, 100431, 100432, 100439, 100440, 100441, 100442, 100443, 100444, 100445, 100446, 100447, 100448, 100449, 100450, 100451, 100452, 100453, 100454, 100455, 100456, 100457, 100458, 100459, 100460, 100461, 100462, 100463, 100464, 100465, 100466, 100467, 100468, 100469, 100470, 100471, 100472, 100473, 100474, 100475, 100476, 100477, 100478, 100479, 100480, 100481, 100482, 100483, 100484, 100485, 100486, 100487, 100488, 100489, 100490, 100492, 100493, 100494, 100495, 100496, 100497, 100498, 100499, 100500, 100501, 100502, 100503, 100504, 100505, 100506, 100507, 100508, 100509, 100510, 100511, 100512, 100513, 100514, 100515, 100516, 100517, 100518, 100519, 100520, 100523, 100524, 100528, 100531, 100532, 100533, 100534, 100535, 100536, 100537, 100538, 100539, 100540, 100541, 100542, 100543, 100544, 100546, 100547, 100548, 100549, 100550, 100551, 100552, 100553, 100554, 100555, 100556, 100557, 100558, 100559, 100560, 100561, 100563, 100564, 100565, 100566, 100567, 100571, 100572, 100573, 100574, 100575, 100576, 100577, 100578, 100579, 100580, 100581, 100582, 100583, 100584, 100585, 100586, 100587, 100588, 100589, 100590, 100591, 100592, 100593, 100594, 100595, 100596, 100597, 100598, 100599, 100600, 100601, 100602, 100603, 100604, 100605, 100606, 100607, 100608, 100609, 100610, 100611, 100612, 100614, 100615, 100616, 100617, 100618, 100619, 100621, 100622, 100623, 100624, 100625, 100626, 100627, 100628, 100629, 100630, 100631, 100632, 100634, 100633, 100638, 100639, 100640, 100641, 100646, 100647, 100648, 100649, 100650, 100651, 100652, 100653, 100655, 100656, 100657, 100658, 100659, 100699, 100661, 100662, 100663, 100664, 100665, 100666, 100667, 100668, 100669, 100670, 100671, 100672, 100673, 100674, 100675, 100676, 100677, 100678, 100679, 100680, 100681, 100682, 100683, 100684, 100685, 100686, 100687, 100688, 100689, 100690, 100691, 100692, 100693, 100694, 100695, 100696, 100697, 100698, 100701, 100702, 100703, 100704, 100705, 100706, 100707, 100708, 100709, 100710, 100711, 100712, 100713, 100714, 100715, 100716, 100717, 100719, 100720, 100721, 100722, 100723, 100724, 100725, 100726, 100727, 100728, 100729, 100730, 100731, 100732, 100733, 100734, 100735};
    private static final int[] aeg = {100123, 100122};

    private ady() {
    }

    @Override // com.kingroot.kinguser.AbstractC3789vm
    /* renamed from: lA */
    protected String mo1721lA() {
        return "KingUser";
    }

    /* renamed from: tK */
    public static synchronized ady m12308tK() {
        ady adyVar;
        synchronized (ady.class) {
            if (aeb == null) {
                synchronized (ady.class) {
                    if (aeb == null) {
                        aeb = new ady();
                    }
                }
            }
            adyVar = aeb;
        }
        return adyVar;
    }

    /* renamed from: tL */
    protected SharedPreferences m12307tL() {
        return C3566rv.m2313i(this.mContext, "PermDataStats");
    }

    /* renamed from: a */
    public static void m12330a(String str, int i, int i2, List<String> list) {
        int m8886jn = auw.m8886jn(str);
        m12308tK().m12338a(100120, str, i, i2, m8886jn);
        m12308tK().m12337a(100644, str, i, i2, m8886jn, list);
    }

    /* renamed from: a */
    private void m12338a(int i, String str, int i2, int i3, int i4) {
        String str2 = str + i;
        bdo bdoVar = new bdo(m12307tL().getString(str2, null));
        bdoVar.m7533kW(str);
        if (i3 != -1) {
            bdoVar.m7525io(i3);
        }
        bdoVar.m7524ip(i4);
        m12336a(i, str2, i2, 1, bdoVar);
    }

    /* renamed from: a */
    private void m12337a(int i, String str, int i2, int i3, int i4, List<String> list) {
        String str2 = str + i;
        bdp bdpVar = new bdp(m12307tL().getString(str2, null), list);
        bdpVar.m7533kW(str);
        if (i3 != -1) {
            bdpVar.m7525io(i3);
        }
        bdpVar.m7524ip(i4);
        bdpVar.m7523YK();
        m12336a(i, str2, i2, 1, bdpVar);
    }

    /* renamed from: b */
    public static void m12325b(String str, int i, int i2, boolean z) {
        m12308tK().m12335a(100155, str, i, i2, z);
    }

    /* renamed from: a */
    private void m12335a(int i, String str, int i2, int i3, boolean z) {
        String str2 = str + i;
        bdq bdqVar = new bdq(m12307tL().getString(str2, null));
        bdqVar.m7533kW(str);
        bdqVar.m7514w(i3, z);
        m12336a(i, str2, i2, 1, bdqVar);
    }

    /* renamed from: tM */
    public void m12306tM() {
        m12308tK().m12307tL().edit().clear().commit();
    }

    /* renamed from: a */
    private void m12336a(int i, String str, int i2, int i3, bdm bdmVar) {
        String string = m12307tL().getString("" + i, "");
        bdmVar.mo7519ah(i2, i3);
        if (TextUtils.isEmpty(bdmVar.m7536YE())) {
            bdmVar.m7534kV(str);
        }
        m12307tL().edit().putString(str, bdmVar.mo7521YF()).commit();
        if (!string.contains(str)) {
            m12307tL().edit().putString("" + i, string + "," + str).commit();
        }
    }

    /* renamed from: tN */
    public ArrayList<C2037b> m12305tN() {
        ArrayList<C2037b> m12350A = m12350A(100120, "100120");
        m12350A.addAll(m12350A(100124, "100124"));
        m12350A.addAll(m12350A(100143, "100143"));
        m12350A.addAll(m12350A(100155, "100155"));
        m12350A.addAll(m12350A(100209, "100209"));
        m12350A.addAll(m12350A(100644, "100644"));
        return m12350A;
    }

    /* renamed from: A */
    private ArrayList<C2037b> m12350A(int i, String str) {
        C2037b v;
        ArrayList<C2037b> arrayList = new ArrayList<>();
        String string = m12307tL().getString(str, "");
        if (!TextUtils.isEmpty(string)) {
            String[] split = string.split(",");
            for (String str2 : split) {
                String string2 = m12307tL().getString(str2, "");
                if (!TextUtils.isEmpty(string2) && (v = mo1757u(i, m1765s(0, string2))) != null) {
                    arrayList.add(v);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    private void m12323c(int i, int i2, String str) {
        m1788a(i, i2, str, true);
    }

    /* renamed from: tO */
    public void m12304tO() {
        m1769lz().edit().clear().commit();
    }

    /* renamed from: B */
    protected List<C2037b> m12349B(int i, String str) {
        ArrayList arrayList = new ArrayList();
        C2037b v = mo1757u(i, m1765s(0, "" + m1769lz().getInt(str, 0)));
        if (v != null) {
            arrayList.add(v);
        }
        return arrayList;
    }

    /* renamed from: tP */
    public List<C2037b> m12303tP() {
        int[] m12298tU;
        ArrayList arrayList = new ArrayList();
        for (int i : m12298tU()) {
            arrayList.addAll(m12349B(i, "" + i));
        }
        return arrayList;
    }

    /* renamed from: d */
    public void m12320d(String str, int i, int i2) {
        m12308tK().m12339a(100124, str, i, i2);
    }

    /* renamed from: a */
    private void m12339a(int i, String str, int i2, int i3) {
        bdn bdnVar = new bdn(m12307tL().getString(str, null));
        bdnVar.m7530R(str, i2);
        m12336a(i, str, i3, 1, bdnVar);
    }

    /* renamed from: a */
    public void m12333a(int i, String str, String[] strArr, String str2, String str3, String str4, String str5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(strArr);
        arrayList.add(str2);
        arrayList.add(str3);
        arrayList.add(str4);
        arrayList.add(str5);
        m12308tK().m12323c(100128, i, C3612sw.m2222t(arrayList));
    }

    /* renamed from: eI */
    public void m12319eI(String str) {
        m12308tK().m12323c(100138, 0, C3612sw.m2224cN(str));
    }

    /* renamed from: c */
    public void m12322c(int i, List<Object> list) {
        m12308tK().m12323c(100145, i, C3612sw.m2222t(list));
    }

    /* renamed from: a */
    public void m12341a(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        arrayList.add(Integer.valueOf(i3));
        arrayList.add(Integer.valueOf(i4));
        arrayList.add(Integer.valueOf(i5));
        arrayList.add(Integer.valueOf(i6));
        arrayList.add(Integer.valueOf(i7));
        m12308tK().m12323c(100545, 0, C3612sw.m2222t(arrayList));
    }

    /* renamed from: C */
    public void m12348C(int i, String str) {
        m12308tK().m12323c(100152, i, str);
    }

    /* renamed from: D */
    public void m12347D(int i, String str) {
        m12308tK().m12323c(100151, i, str);
    }

    /* renamed from: b */
    public void m12327b(int i, int i2, int i3, int i4, int i5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        arrayList.add(Integer.valueOf(i3));
        arrayList.add(Integer.valueOf(i4));
        arrayList.add(Integer.valueOf(i5));
        arrayList.add(KApplication.m13436ii() + " " + KApplication.m13444hZ());
        arrayList.add(aks.m11143BP().m11118CO() + " " + aks.m11143BP().m11117CP());
        m12308tK().m1788a(100168, 0, C3612sw.m2222t(arrayList), true);
    }

    /* renamed from: f */
    public void m12311f(Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            List asList = Arrays.asList(objArr);
            if (ais.m11585ye().m11576yn() == 2) {
                m12308tK().m12323c(100428, 0, C3612sw.m2222t(asList));
            } else {
                m12308tK().m12323c(100427, 0, C3612sw.m2222t(asList));
            }
        }
    }

    /* renamed from: a */
    public void m12329a(String str, String str2, String str3, String str4, int i, int i2, int i3, String str5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(str2);
        arrayList.add(str3);
        arrayList.add(str4);
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        arrayList.add(Integer.valueOf(i3));
        arrayList.add(str5);
        m12308tK().m12323c(100718, 0, C3612sw.m2222t(arrayList));
    }

    /* renamed from: a */
    public void m12331a(ahc ahcVar) {
        if (ahcVar != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(ahcVar.anE);
            arrayList.add(ahcVar.anF);
            arrayList.add(ahcVar.anK);
            arrayList.add(ahcVar.anM);
            arrayList.add(ahcVar.anL);
            arrayList.add(ahcVar.anH);
            arrayList.add(ahcVar.anI);
            arrayList.add(ahcVar.anO);
            arrayList.add(ahcVar.anJ);
            arrayList.add(new String[]{ahcVar.anG, ahcVar.anN});
            m12308tK().m12323c(100525, 0, C3612sw.m2222t(arrayList));
            m12326b(ahcVar);
        }
    }

    /* renamed from: b */
    private void m12326b(ahc ahcVar) {
        long j;
        long j2 = 0;
        ArrayList arrayList = new ArrayList();
        try {
            j = Long.parseLong(ahcVar.anN);
        } catch (Throwable th) {
            j = 0;
        }
        try {
            j2 = Long.parseLong(ahcVar.anG);
        } catch (Throwable th2) {
        }
        arrayList.add(new bhf().m7019lu(ahcVar.anL).m7018lv(ahcVar.anK).m7038cz(j).m7017lw(ahcVar.anM).m7016lx(ahcVar.anE).m7015ly(ahcVar.anF).m7041cA(j2).acp());
        arrayList.add(ahcVar.anH);
        arrayList.add(ahcVar.anI);
        arrayList.add(ahcVar.anJ);
        arrayList.add(ahcVar.anO);
        arrayList.add(ahcVar.anP);
        m12308tK().m12323c(100642, 0, C3612sw.m2222t(arrayList));
    }

    /* renamed from: a */
    public void m12328a(boolean z, int i, int i2, int i3, long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(z ? 1 : 2));
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        arrayList.add(Integer.valueOf(i3));
        arrayList.add(Long.valueOf(j));
        m12308tK().m12323c(100700, 0, C3612sw.m2222t(arrayList));
    }

    /* renamed from: a */
    public void m12340a(int i, int i2, String str, String str2, String str3, int i3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i2));
        arrayList.add(str);
        arrayList.add(str2);
        arrayList.add(str3);
        arrayList.add(Integer.valueOf(i3));
        m12308tK().m1788a(100170, i, C3612sw.m2222t(arrayList), true);
    }

    /* renamed from: a */
    public void m12334a(int i, String str, String str2, int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(str2);
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        m12308tK().m12323c(100189, i, C3612sw.m2222t(arrayList));
    }

    /* renamed from: V */
    public void m12344V(List<Object> list) {
        m12308tK().m12323c(100193, 0, C3612sw.m2222t(list));
    }

    /* renamed from: G */
    public void m12346G(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        m12308tK().m1788a(100202, 0, C3612sw.m2222t(arrayList), true);
    }

    /* renamed from: c */
    public void m12324c(int i, int i2, int i3, int i4, int i5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        arrayList.add(Integer.valueOf(i3));
        arrayList.add(Integer.valueOf(i4));
        arrayList.add(Integer.valueOf(i5));
        m12308tK().m1788a(100203, 0, C3612sw.m2222t(arrayList), true);
    }

    /* renamed from: tQ */
    public void m12302tQ() {
        m12308tK().m1788a(100210, 0, C3612sw.m2222t(new ArrayList(0)), false);
    }

    /* renamed from: W */
    public void m12343W(List<Object> list) {
        m12308tK().m1788a(100254, 0, C3612sw.m2222t(list), true);
    }

    /* renamed from: X */
    public void m12342X(List<Object> list) {
        m12308tK().m1788a(100260, 0, C3612sw.m2222t(list), true);
    }

    /* renamed from: H */
    public void m12345H(int i, int i2) {
        long m10984Es = aks.m11143BP().m10984Es();
        long currentTimeMillis = System.currentTimeMillis();
        if (adk.m12539b(m10984Es, currentTimeMillis, 86400000L)) {
            aks.m11143BP().m10831bm(currentTimeMillis);
            aks.m11143BP().m10780eA(0);
        }
        int m10985Er = aks.m11143BP().m10985Er();
        if (m10985Er < 50) {
            aks.m11143BP().m10780eA(m10985Er + 1);
            ArrayList arrayList = new ArrayList();
            arrayList.add(Integer.valueOf(i));
            arrayList.add(Integer.valueOf(i2));
            m12308tK().m1788a(100335, 0, C3612sw.m2222t(arrayList), true);
        }
    }

    /* renamed from: i */
    public void m12309i(List<Object> list, boolean z) {
        m12308tK().m1788a(100339, 0, C3612sw.m2222t(list), z);
    }

    @NonNull
    /* renamed from: tR */
    public List<C2037b> m12301tR() {
        ArrayList arrayList = new ArrayList();
        if (!aks.m11143BP().m11069DL()) {
            return Collections.emptyList();
        }
        Set<String> Ak = akc.m11313Ai().m11312Ak();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(Ak.toArray(new String[Ak.size()]));
        C2037b v = mo1757u(100221, m1765s(0, C3612sw.m2222t(arrayList2)));
        if (v != null) {
            arrayList.add(v);
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: eJ */
    public void m12318eJ(String str) {
        String country = Locale.getDefault().getCountry();
        String language = Locale.getDefault().getLanguage();
        TimeZone timeZone = TimeZone.getDefault();
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(country);
        arrayList.add(language);
        arrayList.add(timeZone.getID());
        m12308tK().mo1748a(100297, 0, (List<Object>) arrayList, true);
    }

    /* renamed from: eK */
    public void m12317eK(String str) {
        String country = Locale.getDefault().getCountry();
        String language = Locale.getDefault().getLanguage();
        TimeZone timeZone = TimeZone.getDefault();
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(country);
        arrayList.add(language);
        arrayList.add(timeZone.getID());
        m12308tK().mo1748a(100298, 0, (List<Object>) arrayList, true);
    }

    /* renamed from: eL */
    public void m12316eL(String str) {
        String country = Locale.getDefault().getCountry();
        String language = Locale.getDefault().getLanguage();
        TimeZone timeZone = TimeZone.getDefault();
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(country);
        arrayList.add(language);
        arrayList.add(timeZone.getID());
        m12308tK().mo1748a(100295, 0, (List<Object>) arrayList, true);
    }

    /* renamed from: eM */
    public void m12315eM(String str) {
        String country = Locale.getDefault().getCountry();
        String language = Locale.getDefault().getLanguage();
        TimeZone timeZone = TimeZone.getDefault();
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(country);
        arrayList.add(language);
        arrayList.add(timeZone.getID());
        m12308tK().mo1748a(100290, 0, (List<Object>) arrayList, true);
    }

    /* renamed from: eN */
    public void m12314eN(String str) {
        String country = Locale.getDefault().getCountry();
        String language = Locale.getDefault().getLanguage();
        TimeZone timeZone = TimeZone.getDefault();
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(country);
        arrayList.add(language);
        arrayList.add(timeZone.getID());
        m12308tK().mo1748a(100293, 0, (List<Object>) arrayList, true);
    }

    /* renamed from: eO */
    public void m12313eO(String str) {
        String country = Locale.getDefault().getCountry();
        String language = Locale.getDefault().getLanguage();
        TimeZone timeZone = TimeZone.getDefault();
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(country);
        arrayList.add(language);
        arrayList.add(timeZone.getID());
        m12308tK().mo1748a(100292, 0, (List<Object>) arrayList, true);
    }

    /* renamed from: eP */
    public void m12312eP(String str) {
        String country = Locale.getDefault().getCountry();
        String language = Locale.getDefault().getLanguage();
        TimeZone timeZone = TimeZone.getDefault();
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(country);
        arrayList.add(language);
        arrayList.add(timeZone.getID());
        m12308tK().mo1748a(100294, 0, (List<Object>) arrayList, true);
    }

    /* renamed from: h */
    public void m12310h(String str, long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(Long.valueOf(j));
        m12308tK().mo1747a(100285, (List<Object>) arrayList);
    }

    @NonNull
    /* renamed from: tS */
    public List<C2037b> m12300tS() {
        List<String> m9349OH = asw.m9349OH();
        if (m9349OH != null && m9349OH.size() == 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(m9349OH.toArray(new String[m9349OH.size()]));
        C2037b v = mo1757u(100287, m1765s(0, C3612sw.m2222t(arrayList2)));
        if (v != null) {
            arrayList.add(v);
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: tT */
    public List<C2037b> m12299tT() {
        int i;
        ArrayList arrayList = new ArrayList();
        if (aks.m11143BP().m11061DT()) {
            ArrayList arrayList2 = new ArrayList();
            if (asv.m9362Oy()) {
                i = 100280;
            } else {
                i = 100278;
                arrayList2.add(bgs.abU().abV());
            }
            C2037b v = mo1757u(i, m1765s(0, C3612sw.m2222t(arrayList2)));
            if (v != null) {
                arrayList.add(v);
            }
            return arrayList;
        }
        return arrayList;
    }

    /* renamed from: c */
    public void m12321c(long j, int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Long.valueOf(j));
        arrayList.add(Integer.valueOf(i));
        m12308tK().mo1748a(100412, 0, (List<Object>) arrayList, true);
    }

    /* renamed from: a */
    public void m12332a(long j, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Long.valueOf(j));
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        m12308tK().mo1748a(100413, 0, (List<Object>) arrayList, true);
    }

    @Override // com.kingroot.kinguser.AbstractC3789vm
    @WorkerThread
    /* renamed from: B */
    protected boolean mo1722B(@NonNull List<C2037b> list) {
        return awn.m8629Ta().m8626bG(list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3789vm
    @NonNull
    public String getChannel() {
        return KApplication.m13442ib();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3789vm
    public int getProductId() {
        return KApplication.m13445hY();
    }

    @Override // com.kingroot.kinguser.AbstractC3789vm
    /* renamed from: lL */
    public int[] mo1720lL() {
        return aef;
    }

    @Override // com.kingroot.kinguser.AbstractC3789vm
    /* renamed from: lM */
    public int[] mo1719lM() {
        return aee;
    }

    @Override // com.kingroot.kinguser.AbstractC3789vm
    /* renamed from: lN */
    public int[] mo1718lN() {
        return aed;
    }

    /* renamed from: tU */
    public int[] m12298tU() {
        return aeg;
    }
}
