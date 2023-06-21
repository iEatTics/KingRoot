.class final Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;
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
        "Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;-><init>()V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$1;->O(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;

    move-result-object v0

    return-object v0
.end method

.method public dM(I)[Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;
    .locals 1

    .prologue
    .line 96
    new-array v0, p1, [Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$1;->dM(I)[Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;

    move-result-object v0

    return-object v0
.end method
