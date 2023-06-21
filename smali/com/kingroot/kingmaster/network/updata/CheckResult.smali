.class public Lcom/kingroot/kingmaster/network/updata/CheckResult;
.super Lcom/kingroot/common/entity/BaseEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kingmaster/network/updata/CheckResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final aeM:Lcom/kingroot/kingmaster/network/updata/CheckResult;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public err:I

.field public mCheckTime:J

.field public mIsSilentDownload:Z

.field public mMessage:Ljava/lang/String;

.field public mNoticeInterval:I

.field public mSizeInfo:Ljava/lang/String;

.field public mTaskId:J

.field public mUpdateInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/network/download/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mValidTime:I

.field public mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    new-instance v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;

    invoke-direct {v0}, Lcom/kingroot/kingmaster/network/updata/CheckResult;-><init>()V

    sput-object v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->aeM:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    .line 44
    sget-object v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->aeM:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mCheckTime:J

    .line 45
    sget-object v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->aeM:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    const-string v1, ""

    iput-object v1, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mMessage:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->aeM:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    iput v4, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->err:I

    .line 47
    sget-object v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->aeM:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 126
    new-instance v0, Lcom/kingroot/kingmaster/network/updata/CheckResult$1;

    invoke-direct {v0}, Lcom/kingroot/kingmaster/network/updata/CheckResult$1;-><init>()V

    sput-object v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lcom/kingroot/common/entity/BaseEntity;-><init>()V

    .line 30
    iput v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->err:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 36
    iput v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mNoticeInterval:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mIsSilentDownload:Z

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mTaskId:J

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lcom/kingroot/common/entity/BaseEntity;-><init>()V

    .line 30
    iput v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->err:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 36
    iput v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mNoticeInterval:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mIsSilentDownload:Z

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mTaskId:J

    .line 123
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/network/updata/CheckResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 124
    return-void
.end method


# virtual methods
.method public au(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703bb

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703bc

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :goto_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703ba

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mSizeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public av(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703bb

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703bc

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    :goto_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703ba

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mSizeInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mCheckTime:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mVersion:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mSizeInfo:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mMessage:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->err:I

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 115
    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const-class v2, Lcom/kingroot/common/network/download/UpdateInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mValidTime:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mNoticeInterval:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mIsSilentDownload:Z

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mTaskId:J

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mCheckTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mSizeInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->err:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 99
    iget v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mValidTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mNoticeInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mIsSilentDownload:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-wide v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mTaskId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
