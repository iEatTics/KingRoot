.class final Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;
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
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ak(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo$1;->ak(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public fx(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;
    .locals 1

    .prologue
    .line 177
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo$1;->fx(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    move-result-object v0

    return-object v0
.end method
