.class public Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final aUH:Ljava/lang/String;

.field public final aUI:I

.field public final packageName:Ljava/lang/String;

.field public final riskDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->riskDescription:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUI:I

    .line 30
    return-void
.end method

.method private constructor <init>(Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->a(Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->b(Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->c(Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->riskDescription:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->d(Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUI:I

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;-><init>(Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->riskDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget v0, p0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void
.end method
