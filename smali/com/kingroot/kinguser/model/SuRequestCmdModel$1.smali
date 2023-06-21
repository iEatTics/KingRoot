.class final Lcom/kingroot/kinguser/model/SuRequestCmdModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/model/SuRequestCmdModel;
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
        "Lcom/kingroot/kinguser/model/SuRequestCmdModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aF(Landroid/os/Parcel;)Lcom/kingroot/kinguser/model/SuRequestCmdModel;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    invoke-direct {v0}, Lcom/kingroot/kinguser/model/SuRequestCmdModel;-><init>()V

    .line 134
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->readFromParcel(Landroid/os/Parcel;)V

    .line 135
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/model/SuRequestCmdModel$1;->aF(Landroid/os/Parcel;)Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    move-result-object v0

    return-object v0
.end method

.method public gI(I)[Lcom/kingroot/kinguser/model/SuRequestCmdModel;
    .locals 1

    .prologue
    .line 128
    new-array v0, p1, [Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/model/SuRequestCmdModel$1;->gI(I)[Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    move-result-object v0

    return-object v0
.end method
