.class final Lcom/kingroot/kinguser/common/check/DataFileCheckUnit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/common/check/DataFileCheckUnit;
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
        "Lcom/kingroot/kinguser/common/check/DataFileCheckUnit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/DataFileCheckUnit;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/kingroot/kinguser/common/check/DataFileCheckUnit;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/DataFileCheckUnit;-><init>()V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/DataFileCheckUnit$1;->P(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/DataFileCheckUnit;

    move-result-object v0

    return-object v0
.end method

.method public dN(I)[Lcom/kingroot/kinguser/common/check/DataFileCheckUnit;
    .locals 1

    .prologue
    .line 186
    new-array v0, p1, [Lcom/kingroot/kinguser/common/check/DataFileCheckUnit;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/DataFileCheckUnit$1;->dN(I)[Lcom/kingroot/kinguser/common/check/DataFileCheckUnit;

    move-result-object v0

    return-object v0
.end method
