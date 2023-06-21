.class final Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;
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
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ah(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;
    .locals 1

    .prologue
    .line 70
    invoke-static {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->ag(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel$1;->ah(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v0

    return-object v0
.end method

.method public fu(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;
    .locals 1

    .prologue
    .line 74
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel$1;->fu(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v0

    return-object v0
.end method
