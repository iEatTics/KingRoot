.class final Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;
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
        "Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aG(Landroid/os/Parcel;)Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;-><init>(Landroid/os/Parcel;Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity$1;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity$1;->aG(Landroid/os/Parcel;)Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    move-result-object v0

    return-object v0
.end method

.method public gY(I)[Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;
    .locals 1

    .prologue
    .line 116
    new-array v0, p1, [Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity$1;->gY(I)[Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    move-result-object v0

    return-object v0
.end method
