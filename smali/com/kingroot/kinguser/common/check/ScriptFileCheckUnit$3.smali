.class final Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;
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
        "Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;
    .locals 1

    .prologue
    .line 721
    new-instance v0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;-><init>()V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 712
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit$3;->T(Landroid/os/Parcel;)Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;

    move-result-object v0

    return-object v0
.end method

.method public dS(I)[Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;
    .locals 1

    .prologue
    .line 716
    new-array v0, p1, [Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 712
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit$3;->dS(I)[Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;

    move-result-object v0

    return-object v0
.end method
