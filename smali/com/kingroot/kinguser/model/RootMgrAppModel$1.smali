.class final Lcom/kingroot/kinguser/model/RootMgrAppModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/model/RootMgrAppModel;
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
        "Lcom/kingroot/kinguser/model/RootMgrAppModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aD(Landroid/os/Parcel;)Lcom/kingroot/kinguser/model/RootMgrAppModel;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/model/RootMgrAppModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/model/RootMgrAppModel$1;->aD(Landroid/os/Parcel;)Lcom/kingroot/kinguser/model/RootMgrAppModel;

    move-result-object v0

    return-object v0
.end method

.method public gG(I)[Lcom/kingroot/kinguser/model/RootMgrAppModel;
    .locals 1

    .prologue
    .line 81
    new-array v0, p1, [Lcom/kingroot/kinguser/model/RootMgrAppModel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/model/RootMgrAppModel$1;->gG(I)[Lcom/kingroot/kinguser/model/RootMgrAppModel;

    move-result-object v0

    return-object v0
.end method
