.class final Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;
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
        "Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public U(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;
    .locals 1

    .prologue
    .line 465
    new-instance v0, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;-><init>()V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$4;->U(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;

    move-result-object v0

    return-object v0
.end method

.method public dT(I)[Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;
    .locals 1

    .prologue
    .line 460
    new-array v0, p1, [Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit$4;->dT(I)[Lcom/kingroot/kinguser/common/check/SuFilesCheckUnit;

    move-result-object v0

    return-object v0
.end method
