package qqpimaccount;
/* loaded from: classes.dex */
public enum GenderTypeEnum {
    UNKNOWN(0),
    MALE(1),
    FEMALE(2);
    
    final int flag;

    GenderTypeEnum(int i) {
        this.flag = i;
    }

    public static GenderTypeEnum fromInt(int i) {
        switch (i) {
            case 0:
                return UNKNOWN;
            case 1:
                return MALE;
            case 2:
                return FEMALE;
            default:
                return UNKNOWN;
        }
    }

    public int toInt() {
        return this.flag;
    }
}
