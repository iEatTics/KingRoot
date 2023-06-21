.class final Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;
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
        "Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public M(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 442
    new-instance v2, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    const-class v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    .line 443
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-direct {v2, v0, v3, v1}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;-><init>(Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$FileDetailInfo;Landroid/os/IBinder;Z)V

    .line 442
    return-object v2

    .line 444
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$2;->M(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    move-result-object v0

    return-object v0
.end method

.method public dK(I)[Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;
    .locals 1

    .prologue
    .line 449
    new-array v0, p1, [Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit$2;->dK(I)[Lcom/kingroot/kinguser/common/check/CommonFileCheckUnit;

    move-result-object v0

    return-object v0
.end method
