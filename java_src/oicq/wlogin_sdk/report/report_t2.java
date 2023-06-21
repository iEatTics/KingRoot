package oicq.wlogin_sdk.report;

import com.kingroot.loader.common.KlConst;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.TreeMap;
import oicq.wlogin_sdk.tools.C4393util;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class report_t2 extends report_t {
    private static final long serialVersionUID = 1;
    public long _app;
    public long[] _app_list;
    public String _oper;
    public long _start;
    public long _sub_app;
    public String _type;
    public int attr;
    public int _used = 0;
    public long _uin = 0;
    public String _name = new String("");
    public int _rst1 = 0;
    public int _rst2 = 0;
    public int _rlen = 0;
    public int _slen = 0;
    public TreeMap<Integer, report_t3> _log = new TreeMap<>();

    public report_t2(int i) {
        this._type = new String("");
        this._oper = new String("");
        this._start = 0L;
        this._app = 0L;
        this._sub_app = 0L;
        this._app_list = null;
        this._type = "login";
        this._oper = "null";
        this._start = System.currentTimeMillis();
        this._app = 0L;
        this._sub_app = 0L;
        this._app_list = null;
        this.attr = i;
    }

    public report_t2(String str, String str2, long j, long j2, long j3, long[] jArr) {
        this._type = new String("");
        this._oper = new String("");
        this._start = 0L;
        this._app = 0L;
        this._sub_app = 0L;
        this._app_list = null;
        this._type = str;
        this._oper = str2;
        this._start = j;
        this._app = j2;
        this._sub_app = j3;
        this._app_list = jArr;
    }

    public void add_t3(report_t3 report_t3Var) {
        this._rlen += report_t3Var._rlen;
        this._slen += report_t3Var._slen;
        this._log.put(Integer.valueOf(this._log.size()), report_t3Var);
    }

    public void clear_t3() {
        this._log.clear();
    }

    public void commit(long j, String str, int i, int i2) {
        this._uin = j;
        this._name = str;
        this._rst1 = i;
        this._rst2 = i2;
        this._used = (int) (System.currentTimeMillis() - this._start);
    }

    public JSONObject toJasonObj() {
        Exception exc;
        JSONObject jSONObject;
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("type", this._type);
                jSONObject2.put("oper", this._oper);
                jSONObject2.put("start", String.format("%d", Long.valueOf((this._start / 1000) & 4294967295L)));
                jSONObject2.put("used", String.format("%d", Long.valueOf(this._used & 4294967295L)));
                jSONObject2.put("uin", String.format("%d", Long.valueOf(this._uin & 4294967295L)));
                jSONObject2.put(KlConst.PLUGIN_APP_DIR_NAME, String.format("%d", Long.valueOf(this._app & 4294967295L)));
                jSONObject2.put("subapp", String.format("%d", Long.valueOf(this._sub_app & 4294967295L)));
                jSONObject2.put("email", this._name);
                jSONObject2.put("attr", this.attr);
                String str = "";
                if (this._app_list != null) {
                    int i = 0;
                    while (i < this._app_list.length) {
                        str = i == this._app_list.length + (-1) ? str + String.format("%d", Long.valueOf(this._app_list[i] & 4294967295L)) : str + String.format("%d,", Long.valueOf(this._app_list[i] & 4294967295L));
                        i++;
                    }
                }
                jSONObject2.put("applist", str);
                jSONObject2.put("rst1", String.format("%d", Long.valueOf(this._rst1 & 4294967295L)));
                jSONObject2.put("rst2", String.format("%d", Long.valueOf(this._rst2 & 4294967295L)));
                JSONArray jSONArray = new JSONArray();
                int i2 = 0;
                for (Integer num : this._log.keySet()) {
                    jSONArray.put(i2, this._log.get(num).toJasonObj());
                    i2++;
                }
                jSONObject2.put("log", jSONArray);
                return jSONObject2;
            } catch (Exception e) {
                jSONObject = jSONObject2;
                exc = e;
                StringWriter stringWriter = new StringWriter();
                PrintWriter printWriter = new PrintWriter((Writer) stringWriter, true);
                exc.printStackTrace(printWriter);
                printWriter.flush();
                stringWriter.flush();
                C4393util.LOGD("exception", stringWriter.toString());
                return jSONObject;
            }
        } catch (Exception e2) {
            exc = e2;
            jSONObject = null;
        }
    }
}
