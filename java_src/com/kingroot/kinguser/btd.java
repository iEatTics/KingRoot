package com.kingroot.kinguser;
/* loaded from: classes.dex */
public enum btd {
    NO_ERROR,
    VIEW_NULL,
    PARENT_NULL,
    WINDOW_NOT_VISIBLE,
    VIEW_NOT_VISIBLE,
    VIEW_INVISIBLE_DIMENSIONS,
    VIEW_TOO_TRANSPARENT,
    BE_OBSURED,
    CAN_NOT_GET_LOCATION,
    TOP_INVISIBLE,
    BOTTOM_INVISIBLE,
    LEFT_INVISIBLE,
    RIGHT_INVISIBLE,
    UN_LAYOUT,
    VIEW_DISMISS;

    /* renamed from: values  reason: to resolve conflict with enum method */
    public static btd[] valuesCustom() {
        btd[] valuesCustom = values();
        int length = valuesCustom.length;
        btd[] btdVarArr = new btd[length];
        System.arraycopy(valuesCustom, 0, btdVarArr, 0, length);
        return btdVarArr;
    }
}
