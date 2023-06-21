.class final Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;
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
        "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aH(Landroid/os/Parcel;)Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$1;->aH(Landroid/os/Parcel;)Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    move-result-object v0

    return-object v0
.end method

.method public hl(I)[Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;
    .locals 1

    .prologue
    .line 40
    new-array v0, p1, [Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$1;->hl(I)[Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    move-result-object v0

    return-object v0
.end method
