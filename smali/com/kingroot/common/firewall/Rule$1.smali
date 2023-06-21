.class final Lcom/kingroot/common/firewall/Rule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/firewall/Rule;
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
        "Lcom/kingroot/common/firewall/Rule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aT(I)[Lcom/kingroot/common/firewall/Rule;
    .locals 1

    .prologue
    .line 135
    new-array v0, p1, [Lcom/kingroot/common/firewall/Rule;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/kingroot/common/firewall/Rule$1;->j(Landroid/os/Parcel;)Lcom/kingroot/common/firewall/Rule;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/os/Parcel;)Lcom/kingroot/common/firewall/Rule;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/kingroot/common/firewall/Rule;

    invoke-direct {v0, p1}, Lcom/kingroot/common/firewall/Rule;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/kingroot/common/firewall/Rule$1;->aT(I)[Lcom/kingroot/common/firewall/Rule;

    move-result-object v0

    return-object v0
.end method
