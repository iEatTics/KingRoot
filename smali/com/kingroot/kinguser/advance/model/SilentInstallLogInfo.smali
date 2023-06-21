.class public Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;
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
            "Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public anE:Ljava/lang/String;

.field public anH:Ljava/lang/String;

.field public anI:Ljava/lang/String;

.field public anJ:Ljava/lang/String;

.field public anK:Ljava/lang/String;

.field public anL:Ljava/lang/String;

.field public ane:I

.field public apJ:Ljava/lang/String;

.field public apK:Ljava/lang/String;

.field public apL:Ljava/lang/String;

.field public apM:I

.field private mId:J

.field public mState:I

.field public mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anK:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anL:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apL:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anJ:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anI:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apM:I

    .line 56
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anK:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anL:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apL:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anJ:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anI:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apM:I

    .line 44
    iput-wide p1, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mId:J

    .line 45
    iput p3, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->ane:I

    .line 46
    iput-object p4, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apJ:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anH:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apK:Ljava/lang/String;

    .line 50
    iput p8, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    .line 51
    iput-wide p9, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mTime:J

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anK:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anL:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apL:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anJ:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anI:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apM:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mId:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->ane:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apJ:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anH:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apK:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mTime:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anK:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anL:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apL:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anJ:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anI:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apM:I

    .line 75
    return-void
.end method

.method private fP(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->ane:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->fP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apJ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->fP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->fP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apK:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->fP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-wide v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anK:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->fP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->fP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->fP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anJ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->fP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anI:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->fP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apM:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return-void
.end method
