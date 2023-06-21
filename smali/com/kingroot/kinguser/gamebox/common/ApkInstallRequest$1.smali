.class final Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;
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
        "Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public az(Landroid/os/Parcel;)Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest$1;->az(Landroid/os/Parcel;)Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    move-result-object v0

    return-object v0
.end method

.method public gx(I)[Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;
    .locals 1

    .prologue
    .line 125
    new-array v0, p1, [Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest$1;->gx(I)[Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    move-result-object v0

    return-object v0
.end method
