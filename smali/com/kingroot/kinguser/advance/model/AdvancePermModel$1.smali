.class final Lcom/kingroot/kinguser/advance/model/AdvancePermModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/advance/model/AdvancePermModel;
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
        "Lcom/kingroot/kinguser/advance/model/AdvancePermModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public E(Landroid/os/Parcel;)Lcom/kingroot/kinguser/advance/model/AdvancePermModel;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/advance/model/AdvancePermModel$1;->E(Landroid/os/Parcel;)Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    move-result-object v0

    return-object v0
.end method

.method public dn(I)[Lcom/kingroot/kinguser/advance/model/AdvancePermModel;
    .locals 1

    .prologue
    .line 85
    new-array v0, p1, [Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/advance/model/AdvancePermModel$1;->dn(I)[Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    move-result-object v0

    return-object v0
.end method
