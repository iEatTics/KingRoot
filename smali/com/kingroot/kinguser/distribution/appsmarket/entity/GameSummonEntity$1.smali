.class final Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;
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
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ao(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity$1;->ao(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    move-result-object v0

    return-object v0
.end method

.method public fB(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;
    .locals 1

    .prologue
    .line 77
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity$1;->fB(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    move-result-object v0

    return-object v0
.end method
