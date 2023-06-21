package kingcom.module.network.shark.conch.entity;

import com.kingroot.kinguser.caq;
/* loaded from: classes.dex */
public class SplashScreenEntity implements caq {
    private static final long serialVersionUID = 0;
    public int language = 1;
    public long beginTime = 0;
    public long endTime = 0;
    public String picDownloadUrl = "";
    public String clickJumpUrl = "";
    public int showDuration = 0;
    public int timeInterval = 0;
    public long expirationTime = 0;
    public int priority = 0;
    public String extrasParam = "";
    public long taskID = 0;
    public int conchSeqno = 0;

    public String toString() {
        return "language:" + this.language + "\nbeginTime:" + this.beginTime + "\nendTime:" + this.endTime + "\npicDownloadUrl:" + this.picDownloadUrl + "\nclickJumpUrl:" + this.clickJumpUrl + "\nshowDuration:" + this.showDuration + "\ntimeInterval:" + this.timeInterval + "\nexpirationTime:" + this.expirationTime + "\npriority:" + this.priority + "\nextrasParam:" + this.extrasParam + "\ntaskID:" + this.taskID + "\nconchSeqno:" + this.conchSeqno + "\n";
    }
}
