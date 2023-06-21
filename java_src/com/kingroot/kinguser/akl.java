package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class akl extends akm {
    private static cce<akl> sInstance = new cce<akl>() { // from class: com.kingroot.kinguser.akl.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: BH */
        public akl create() {
            return new akl();
        }
    };

    /* renamed from: AS */
    public static akl m11257AS() {
        return sInstance.get();
    }

    private akl() {
        super("AppMarket");
    }

    /* renamed from: AT */
    public ArrayList<String> m11256AT() {
        ArrayList<String> arrayList = new ArrayList<>();
        int i = this.avA.getInt("VER:5.10_20170320_11:30:20.072", 0);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(this.avA.getString("VER:5.10_20170320_11:25:02.781" + i2, null));
        }
        return arrayList;
    }

    /* renamed from: at */
    public void m11203at(List<String> list) {
        this.avB.putInt("VER:5.10_20170320_11:30:20.072", list.size());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                this.avB.remove("VER:5.10_20170320_11:25:02.781" + i2);
                this.avB.putString("VER:5.10_20170320_11:25:02.781" + i2, list.get(i2));
                i = i2 + 1;
            } else {
                this.avB.commit();
                return;
            }
        }
    }

    /* renamed from: au */
    public void m11201au(List<String> list) {
        int min = Math.min(list.size(), 20);
        this.avB.putInt("VER:5.10_20170329_05:15:21.441", min);
        for (int i = 0; i < min; i++) {
            this.avB.remove("VER:5.10_20170329_05:12:44.901" + i);
            this.avB.putString("VER:5.10_20170329_05:12:44.901" + i, list.get(i));
        }
        this.avB.commit();
    }

    /* renamed from: AU */
    public List<String> m11255AU() {
        ArrayList arrayList = new ArrayList();
        int i = this.avA.getInt("VER:5.10_20170329_05:15:21.441", 0);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(this.avA.getString("VER:5.10_20170329_05:12:44.901" + i2, null));
        }
        return arrayList;
    }

    /* renamed from: gK */
    public void m11187gK(String str) {
        if (!TextUtils.isEmpty(str)) {
            List<String> m11255AU = m11255AU();
            if (m11255AU.contains(str)) {
                m11255AU.remove(str);
            }
            m11255AU.add(0, str);
            m11201au(m11255AU);
        }
    }

    /* renamed from: gL */
    public List<String> m11186gL(String str) {
        List<String> m11255AU = m11255AU();
        if (!TextUtils.isEmpty(str) && m11255AU.remove(str)) {
            m11201au(m11255AU);
        }
        return m11255AU;
    }

    /* renamed from: AV */
    public void m11254AV() {
        List<String> m11255AU = m11255AU();
        m11255AU.clear();
        m11201au(m11255AU);
    }

    /* renamed from: AW */
    public void m11253AW() {
        this.avB.putBoolean("VER:5.1.0_20170313_04:51:44.292", true).commit();
    }

    /* renamed from: AX */
    public boolean m11252AX() {
        return this.avA.getBoolean("VER:5.1.0_20170313_04:51:44.292", false);
    }

    /* renamed from: AY */
    public void m11251AY() {
        this.avB.putBoolean("VER:5.10_20170407_09:11:23.093", true).commit();
    }

    /* renamed from: AZ */
    public boolean m11250AZ() {
        return this.avA.getBoolean("VER:5.10_20170407_09:11:23.093", false);
    }

    /* renamed from: ao */
    public void m11209ao(long j) {
        this.avB.putLong("VER:5.1.0_20170401_05:01:57.270", j).commit();
    }

    /* renamed from: Ba */
    public long m11242Ba() {
        return this.avA.getLong("VER:5.1.0_20170401_05:01:57.270", 0L);
    }

    /* renamed from: dY */
    public void m11193dY(int i) {
        this.avB.putInt("VER:5.21_20170613_05:32:16.739", i).commit();
    }

    /* renamed from: Bb */
    public int m11241Bb() {
        return this.avA.getInt("VER:5.21_20170613_05:32:16.739", 0);
    }

    /* renamed from: ap */
    public void m11208ap(long j) {
        this.avB.putLong("VER:5.21_20170613_05:27:28.336", j).commit();
    }

    /* renamed from: Bc */
    public long m11240Bc() {
        return this.avA.getLong("VER:5.21_20170613_05:27:28.336", 0L);
    }

    /* renamed from: aq */
    public void m11207aq(long j) {
        this.avB.putLong("VER:5.21_20170626_03:15:01.822", j).commit();
    }

    /* renamed from: Bd */
    public long m11239Bd() {
        return this.avA.getLong("VER:5.21_20170626_03:15:01.822", 0L);
    }

    /* renamed from: dZ */
    public void m11192dZ(int i) {
        this.avB.putBoolean("VER5.2.2:_20170811_10:49:14.213" + i, true).commit();
    }

    /* renamed from: ea */
    public boolean m11191ea(int i) {
        return this.avA.getBoolean("VER5.2.2:_20170811_10:49:14.213" + i, false);
    }

    /* renamed from: Be */
    public void m11238Be() {
        this.avB.putInt("VER:5.2.2_20170815_05:56:43.977", m11237Bf() + 1).commit();
    }

    /* renamed from: Bf */
    public int m11237Bf() {
        return this.avA.getInt("VER:5.2.2_20170815_05:56:43.977", 0);
    }

    /* renamed from: Bg */
    public void m11236Bg() {
        this.avB.putBoolean("VER:5.2.2_20170815_07:50:02.818", true).commit();
    }

    /* renamed from: Bh */
    public boolean m11235Bh() {
        return this.avA.getBoolean("VER:5.2.2_20170815_07:50:02.818", false);
    }

    /* renamed from: Bi */
    public long m11234Bi() {
        return this.avA.getLong("VER:5.2.2_20170815_08:18:10.618", 0L);
    }

    /* renamed from: ar */
    public void m11206ar(long j) {
        this.avB.putLong("VER:5.2.2_20170815_08:18:10.618", j).commit();
    }

    /* renamed from: Bj */
    public long m11233Bj() {
        return this.avA.getLong("VER:5.2.2_20170821_05:06:06.753", 0L);
    }

    /* renamed from: as */
    public void m11205as(long j) {
        this.avB.putLong("VER:5.2.2_20170821_05:06:06.753", j).commit();
    }

    /* renamed from: Bk */
    public boolean m11232Bk() {
        return this.avA.getBoolean("VER:5.2.2_20170821_07:04:48.845", true);
    }

    /* renamed from: Bl */
    public long m11231Bl() {
        return this.avA.getLong("VER:5.3.0_20170912_04:26:48.433", 0L);
    }

    /* renamed from: at */
    public void m11204at(long j) {
        this.avB.putLong("VER:5.3.0_20170912_04:26:48.433", j).commit();
    }

    /* renamed from: b */
    public void m11195b(AppBaseModel appBaseModel) {
        this.avB.putInt("VER:_20170912_07:47:48.381" + (TextUtils.isEmpty(appBaseModel.pkgName) ? appBaseModel.jumpUrl4Banner : appBaseModel.pkgName), m11194c(appBaseModel) + 1).commit();
    }

    /* renamed from: c */
    public int m11194c(AppBaseModel appBaseModel) {
        return this.avA.getInt("VER:_20170912_07:47:48.381" + (TextUtils.isEmpty(appBaseModel.pkgName) ? appBaseModel.jumpUrl4Banner : appBaseModel.pkgName), 0);
    }

    /* renamed from: Bm */
    public void m11230Bm() {
        this.avB.putBoolean("VER:5.3.0_20170918_05:33:36.605", true).commit();
    }

    /* renamed from: Bn */
    public boolean m11229Bn() {
        return this.avA.getBoolean("VER:5.3.0_20170918_05:33:36.605", false);
    }

    /* renamed from: k */
    public void m11175k(String str, long j) {
        this.avB.putLong("VER:5.3.0_20171009_08:43:30.586" + str, j).commit();
    }

    /* renamed from: gM */
    public long m11185gM(String str) {
        return this.avA.getLong("VER:5.3.0_20171009_08:43:30.586" + str, System.currentTimeMillis());
    }

    /* renamed from: au */
    public void m11202au(long j) {
        this.avB.putLong("VER:5.3.0_20171009_08:52:12.640", j).commit();
    }

    /* renamed from: Bo */
    public long m11228Bo() {
        return this.avA.getLong("VER:5.3.0_20171009_08:52:12.640", 0L);
    }

    /* renamed from: gN */
    public int m11184gN(String str) {
        return this.avA.getInt("VER:5.3.0_20171010_07:41:28.692" + str, 0);
    }

    /* renamed from: gO */
    public void m11183gO(String str) {
        this.avB.putInt("VER:5.3.0_20171010_07:41:28.692" + str, m11184gN(str) + 1).commit();
    }

    /* renamed from: gP */
    public boolean m11182gP(String str) {
        return this.avA.getBoolean("VER5.3.0:_20171010_07:51:09.994" + str, false);
    }

    /* renamed from: gQ */
    public void m11181gQ(String str) {
        this.avB.putBoolean("VER5.3.0:_20171010_07:51:09.994" + str, true).commit();
    }

    /* renamed from: Bp */
    public long m11227Bp() {
        return this.avA.getLong("VER:5.3.2_20171116_04:56:24.983", 0L);
    }

    /* renamed from: Bq */
    public String m11226Bq() {
        return this.avA.getString("VER:5.3.2_20171114_08:38:22.393", "");
    }

    /* renamed from: gR */
    public void m11180gR(String str) {
        this.avB.putString("VER:5.3.2_20171114_08:38:22.393", str).commit();
        this.avB.putLong("VER:5.3.2_20171116_04:56:24.983", System.currentTimeMillis()).commit();
    }

    /* renamed from: Br */
    public void m11225Br() {
        this.avB.remove("VER:5.3.2_20171114_08:38:22.393").commit();
        this.avB.remove("VER:5.3.2_20171116_04:56:24.983").commit();
    }

    /* renamed from: av */
    public void m11200av(long j) {
        this.avB.putLong("VER:5.3.2_20171113_05:24:43.033", j).commit();
    }

    /* renamed from: Bs */
    public long m11224Bs() {
        return this.avA.getLong("VER:5.3.2_20171113_05:24:43.033", 0L);
    }

    /* renamed from: eb */
    public void m11190eb(int i) {
        this.avB.putInt("VER:5.3.2_20171113_05:23:46.542", i).commit();
    }

    /* renamed from: Bt */
    public int m11223Bt() {
        return this.avA.getInt("VER:5.3.2_20171113_05:23:46.542", 0);
    }

    /* renamed from: aw */
    public void m11199aw(long j) {
        this.avB.putLong("VER:5.3.2_20171117_04:21:29.077", j).commit();
    }

    /* renamed from: Bu */
    public long m11222Bu() {
        return this.avA.getLong("VER:5.3.2_20171117_04:21:29.077", 0L);
    }

    /* renamed from: ax */
    public void m11198ax(long j) {
        this.avB.putBoolean("VER:5.3.2_20171120_11:39:05.974" + j, true).commit();
    }

    /* renamed from: ay */
    public boolean m11197ay(long j) {
        return this.avA.getBoolean("VER:5.3.2_20171120_11:39:05.974" + j, false);
    }

    /* renamed from: az */
    public void m11196az(long j) {
        this.avB.putLong("VER:5.3.2_20171120_11:38:00.763", j).commit();
    }

    /* renamed from: Bv */
    public long m11221Bv() {
        return this.avA.getLong("VER:5.3.2_20171120_11:38:00.763", 0L);
    }

    /* renamed from: ec */
    public void m11189ec(int i) {
        this.avB.putInt("VER:5.3.2_20171124_03:56:06.805", i).commit();
    }

    /* renamed from: Bw */
    public int m11220Bw() {
        return this.avA.getInt("VER:5.3.2_20171124_03:56:06.805", 0);
    }

    /* renamed from: aA */
    public void m11216aA(long j) {
        this.avB.putLong("VER:5.3.2_20171124_03:56:40.901", j).commit();
    }

    /* renamed from: Bx */
    public long m11219Bx() {
        return this.avA.getLong("VER:5.3.2_20171124_03:56:40.901", 0L);
    }

    /* renamed from: ed */
    public void m11188ed(int i) {
        this.avB.putInt("VER:5.3.2_20171124_03:57:39.646", i).commit();
    }

    /* renamed from: By */
    public int m11218By() {
        return this.avA.getInt("VER:5.3.2_20171124_03:57:39.646", 0);
    }

    /* renamed from: aB */
    public void m11215aB(long j) {
        this.avB.putLong("VER:5.3.3_20180108_08:09:17.125", j).commit();
    }

    /* renamed from: Bz */
    public long m11217Bz() {
        return this.avA.getLong("VER:5.3.3_20180108_08:09:17.125", 0L);
    }

    /* renamed from: aC */
    public void m11214aC(long j) {
        this.avB.putLong("VER:5.3.3_20180110_09:56:20.637", j).commit();
    }

    /* renamed from: BA */
    public long m11249BA() {
        return this.avA.getLong("VER:5.3.3_20180110_09:56:20.637", 0L);
    }

    /* renamed from: BB */
    public long m11248BB() {
        return this.avA.getLong("VER:5.3.3_20180111_05:13:37.647", 0L);
    }

    /* renamed from: aD */
    public void m11213aD(long j) {
        this.avB.putLong("VER:5.3.3_20180111_05:13:37.647", j).commit();
    }

    /* renamed from: BC */
    public long m11247BC() {
        return this.avA.getLong("VER:5.3.3_20180115_11:03:28.907", 0L);
    }

    /* renamed from: aE */
    public void m11212aE(long j) {
        this.avB.putLong("VER:5.3.3_20180115_11:03:28.907", j).commit();
    }

    /* renamed from: BD */
    public long m11246BD() {
        return this.avA.getLong("VER:5.3.5_20180125_09:53:26.707", 0L);
    }

    /* renamed from: aF */
    public void m11211aF(long j) {
        this.avB.putLong("VER:5.3.5_20180125_09:53:26.707", j).commit();
    }

    /* renamed from: BE */
    public boolean m11245BE() {
        return this.avA.getBoolean("VER:5.35_20180117_04:18:18.050", false);
    }

    /* renamed from: BF */
    public void m11244BF() {
        this.avB.putBoolean("VER:5.35_20180117_04:18:18.050", true).commit();
    }

    /* renamed from: gS */
    public boolean m11179gS(String str) {
        return this.avA.getBoolean("VER:5.3.5_20180124_03:48:46.828" + str, false);
    }

    /* renamed from: gT */
    public void m11178gT(String str) {
        this.avB.putBoolean("VER:5.3.5_20180124_03:48:46.828" + str, true).commit();
    }

    /* renamed from: BG */
    public long m11243BG() {
        return this.avA.getLong("VER:5.3.5_20180124_04:34:22.432", 0L);
    }

    /* renamed from: aG */
    public void m11210aG(long j) {
        this.avB.putLong("VER:5.3.5_20180124_04:34:22.432", j).commit();
    }

    /* renamed from: gU */
    public boolean m11177gU(String str) {
        return this.avA.getBoolean("VER:5.3.5_20180125_04:59:29.080" + str, false);
    }

    /* renamed from: gV */
    public void m11176gV(String str) {
        this.avB.putBoolean("VER:5.3.5_20180125_04:59:29.080" + str, true).commit();
    }
}
