.class final Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aA(Landroid/os/Parcel;)Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel$1;->aA(Landroid/os/Parcel;)Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;

    move-result-object v0

    return-object v0
.end method

.method public gB(I)[Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;
    .locals 1

    .prologue
    .line 35
    new-array v0, p1, [Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel$1;->gB(I)[Lcom/kingroot/kinguser/gamebox/foreground/model/GameRecommendDetailItemModel;

    move-result-object v0

    return-object v0
.end method