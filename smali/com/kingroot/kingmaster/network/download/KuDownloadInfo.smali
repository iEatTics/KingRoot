.class public Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adW:J

.field public adX:I

.field public adY:Ljava/lang/String;

.field public adZ:Ljava/lang/String;

.field public ads:I

.field public aea:Ljava/lang/String;

.field public mAppName:Ljava/lang/String;

.field public mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adW:J

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adX:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adZ:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->mAppName:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->mVersionName:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->ads:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->aea:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adW:J

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adX:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adZ:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->mAppName:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->mVersionName:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->ads:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->aea:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adW:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adX:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adZ:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->mAppName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->mVersionName:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->ads:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->aea:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adW:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    iget v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->ads:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->aea:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    return-void
.end method
