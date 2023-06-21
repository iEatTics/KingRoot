.class final Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;
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
        "Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Q(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$2;->Q(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;

    move-result-object v0

    return-object v0
.end method

.method public dO(I)[Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;
    .locals 1

    .prologue
    .line 107
    new-array v0, p1, [Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit$2;->dO(I)[Lcom/kingroot/kinguser/common/check/DummyAttrCheckUnit;

    move-result-object v0

    return-object v0
.end method
