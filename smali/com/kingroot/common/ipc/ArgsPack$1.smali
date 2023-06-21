.class final Lcom/kingroot/common/ipc/ArgsPack$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/ipc/ArgsPack;
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
        "Lcom/kingroot/common/ipc/ArgsPack;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aZ(I)[Lcom/kingroot/common/ipc/ArgsPack;
    .locals 1

    .prologue
    .line 135
    new-array v0, p1, [Lcom/kingroot/common/ipc/ArgsPack;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/kingroot/common/ipc/ArgsPack$1;->k(Landroid/os/Parcel;)Lcom/kingroot/common/ipc/ArgsPack;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/os/Parcel;)Lcom/kingroot/common/ipc/ArgsPack;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>(Landroid/os/Parcel;Lcom/kingroot/common/ipc/ArgsPack$1;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/kingroot/common/ipc/ArgsPack$1;->aZ(I)[Lcom/kingroot/common/ipc/ArgsPack;

    move-result-object v0

    return-object v0
.end method
