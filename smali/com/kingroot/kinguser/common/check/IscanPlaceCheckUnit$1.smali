.class final Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit;
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
        "Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public S(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit;
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit;-><init>()V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit$1;->S(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit;

    move-result-object v0

    return-object v0
.end method

.method public dQ(I)[Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit;
    .locals 1

    .prologue
    .line 221
    new-array v0, p1, [Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit$1;->dQ(I)[Lcom/kingroot/kinguser/common/check/IscanPlaceCheckUnit;

    move-result-object v0

    return-object v0
.end method
