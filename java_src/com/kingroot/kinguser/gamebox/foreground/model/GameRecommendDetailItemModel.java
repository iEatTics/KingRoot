package com.kingroot.kinguser.gamebox.foreground.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.C2858de;
import com.kingroot.kinguser.aom;
import com.kingroot.kinguser.distribution.base.RecommendAppDetailInfo;
/* loaded from: classes.dex */
public class GameRecommendDetailItemModel extends RecommendAppDetailInfo {
    public static final Parcelable.Creator<GameRecommendDetailItemModel> CREATOR = new Parcelable.Creator<GameRecommendDetailItemModel>() { // from class: com.kingroot.kinguser.gamebox.foreground.model.GameRecommendDetailItemModel.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aA */
        public GameRecommendDetailItemModel createFromParcel(Parcel parcel) {
            return new GameRecommendDetailItemModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: gB */
        public GameRecommendDetailItemModel[] newArray(int i) {
            return new GameRecommendDetailItemModel[i];
        }
    };
    public static final aom.InterfaceC1387a<GameRecommendDetailItemModel, C2858de> aGp = new aom.InterfaceC1387a<GameRecommendDetailItemModel, C2858de>() { // from class: com.kingroot.kinguser.gamebox.foreground.model.GameRecommendDetailItemModel.2
        @Override // com.kingroot.kinguser.aom.InterfaceC1387a
        /* renamed from: b */
        public GameRecommendDetailItemModel mo3755p(@NonNull C2858de c2858de) {
            return new GameRecommendDetailItemModel(c2858de);
        }
    };

    protected GameRecommendDetailItemModel(Parcel parcel) {
        super(parcel);
    }

    public GameRecommendDetailItemModel(C2858de c2858de) {
        super(c2858de);
    }
}
