.class final Lcom/kingroot/kingmaster/network/updata/CheckResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kingmaster/network/updata/CheckResult;
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
        "Lcom/kingroot/kingmaster/network/updata/CheckResult;",
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
.method public A(Landroid/os/Parcel;)Lcom/kingroot/kingmaster/network/updata/CheckResult;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;

    invoke-direct {v0, p1}, Lcom/kingroot/kingmaster/network/updata/CheckResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public cJ(I)[Lcom/kingroot/kingmaster/network/updata/CheckResult;
    .locals 1

    .prologue
    .line 132
    new-array v0, p1, [Lcom/kingroot/kingmaster/network/updata/CheckResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/network/updata/CheckResult$1;->A(Landroid/os/Parcel;)Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/network/updata/CheckResult$1;->cJ(I)[Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    return-object v0
.end method
