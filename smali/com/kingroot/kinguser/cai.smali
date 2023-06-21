.class public final Lcom/kingroot/kinguser/cai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lkingcom/core/network/download/UpdateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public be(Landroid/os/Parcel;)Lkingcom/core/network/download/UpdateInfo;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lkingcom/core/network/download/UpdateInfo;

    invoke-direct {v0, p1}, Lkingcom/core/network/download/UpdateInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/cai;->be(Landroid/os/Parcel;)Lkingcom/core/network/download/UpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public kR(I)[Lkingcom/core/network/download/UpdateInfo;
    .locals 1

    .prologue
    .line 156
    new-array v0, p1, [Lkingcom/core/network/download/UpdateInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/cai;->kR(I)[Lkingcom/core/network/download/UpdateInfo;

    move-result-object v0

    return-object v0
.end method
