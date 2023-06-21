.class public Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;
.super Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final aGp:Lcom/kingroot/kinguser/aom$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/aom$a",
            "<",
            "Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;",
            "Lcom/kingroot/kinguser/de;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel$2;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;->aGp:Lcom/kingroot/kinguser/aom$a;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;-><init>(Landroid/os/Parcel;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/de;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;-><init>(Lcom/kingroot/kinguser/de;)V

    .line 25
    return-void
.end method
