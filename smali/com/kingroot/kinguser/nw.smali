.class public final Lcom/kingroot/kinguser/nw;
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
        "Lcom/king/uranus/daemon/RunningAppProcessInfoLite;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public au(I)[Lcom/king/uranus/daemon/RunningAppProcessInfoLite;
    .locals 1

    .prologue
    .line 57
    new-array v0, p1, [Lcom/king/uranus/daemon/RunningAppProcessInfoLite;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/nw;->h(Landroid/os/Parcel;)Lcom/king/uranus/daemon/RunningAppProcessInfoLite;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/os/Parcel;)Lcom/king/uranus/daemon/RunningAppProcessInfoLite;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;-><init>(Landroid/os/Parcel;Lcom/kingroot/kinguser/nw;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/nw;->au(I)[Lcom/king/uranus/daemon/RunningAppProcessInfoLite;

    move-result-object v0

    return-object v0
.end method
