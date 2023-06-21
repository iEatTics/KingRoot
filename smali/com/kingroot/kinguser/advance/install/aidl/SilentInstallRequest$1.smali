.class final Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;
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
        "Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public D(Landroid/os/Parcel;)Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest$1;->D(Landroid/os/Parcel;)Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;

    move-result-object v0

    return-object v0
.end method

.method public df(I)[Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;
    .locals 1

    .prologue
    .line 71
    new-array v0, p1, [Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest$1;->df(I)[Lcom/kingroot/kinguser/advance/install/aidl/SilentInstallRequest;

    move-result-object v0

    return-object v0
.end method
