.class final Lcom/kingroot/common/ipc/IpcResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/ipc/IpcResult;
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
        "Lcom/kingroot/common/ipc/IpcResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bb(I)[Lcom/kingroot/common/ipc/IpcResult;
    .locals 1

    .prologue
    .line 464
    new-array v0, p1, [Lcom/kingroot/common/ipc/IpcResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0, p1}, Lcom/kingroot/common/ipc/IpcResult$1;->n(Landroid/os/Parcel;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    return-object v0
.end method

.method public n(Landroid/os/Parcel;)Lcom/kingroot/common/ipc/IpcResult;
    .locals 1

    .prologue
    .line 461
    invoke-static {p1}, Lcom/kingroot/common/ipc/IpcResult;->m(Landroid/os/Parcel;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0, p1}, Lcom/kingroot/common/ipc/IpcResult$1;->bb(I)[Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    return-object v0
.end method
