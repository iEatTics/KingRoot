.class final Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;
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
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public an(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState$1;->an(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;

    move-result-object v0

    return-object v0
.end method

.method public fA(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;
    .locals 1

    .prologue
    .line 62
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState$1;->fA(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;

    move-result-object v0

    return-object v0
.end method
