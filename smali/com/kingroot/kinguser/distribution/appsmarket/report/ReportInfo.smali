.class public Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kingroot/kinguser/rr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public appName:Ljava/lang/String;

.field public businessData:[B

.field public businessType:I

.field public categoryid:I

.field public channelId:Ljava/lang/String;

.field public errorMsg:Ljava/lang/String;

.field public fileUrl:Ljava/lang/String;

.field public hadReportedForExposure:Z

.field public newVersion:Ljava/lang/String;

.field public newVersionCode:I

.field public pkgName:Ljava/lang/String;

.field public size:J

.field public strExtend:Ljava/lang/String;

.field public transData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v2, ""

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->strExtend:Ljava/lang/String;

    .line 29
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    .line 30
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    .line 31
    const-string v2, ""

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->channelId:Ljava/lang/String;

    .line 32
    const-string v2, ""

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->hadReportedForExposure:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->fileUrl:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersion:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersionCode:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->strExtend:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessType:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    .line 44
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->size:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->errorMsg:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->channelId:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    .line 49
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->appName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->categoryid:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->hadReportedForExposure:Z

    .line 55
    return-void

    :cond_0
    move v0, v1

    .line 53
    goto :goto_0
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->strExtend:Ljava/lang/String;

    .line 29
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    .line 30
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->channelId:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->hadReportedForExposure:Z

    .line 76
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->fileUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->fileUrl:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersion:Ljava/lang/String;

    .line 78
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersionCode:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersionCode:I

    .line 79
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->strExtend:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->strExtend:Ljava/lang/String;

    .line 80
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessType:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessType:I

    .line 81
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    .line 84
    :cond_0
    iget-wide v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->size:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->size:J

    .line 85
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->errorMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->errorMsg:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->channelId:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->channelId:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    .line 90
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->appName:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    .line 92
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->categoryid:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->categoryid:I

    .line 93
    iget-boolean v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->hadReportedForExposure:Z

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->hadReportedForExposure:Z

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->strExtend:Ljava/lang/String;

    .line 29
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    .line 30
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->channelId:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->hadReportedForExposure:Z

    .line 58
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->fileUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->fileUrl:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersion:Ljava/lang/String;

    .line 60
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersionCode:I

    .line 61
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->strExtend:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->strExtend:Ljava/lang/String;

    .line 62
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->businessType:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessType:I

    .line 63
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->busiData:[B

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    .line 64
    iget-wide v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->size:J

    .line 65
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->bOs:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->errorMsg:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->channelId:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->channelId:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->transData:[B

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    .line 68
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->appName:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    .line 70
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->categoryid:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->categoryid:I

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 161
    instance-of v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    check-cast p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportInfo{newVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strExtend=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->strExtend:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", businessType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    .line 144
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", businessData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    .line 145
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->categoryid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hadReportedForExposure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->hadReportedForExposure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->fileUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->newVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->strExtend:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    if-nez v0, :cond_2

    new-array v0, v1, [B

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 111
    iget-wide v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->size:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->errorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    if-nez v0, :cond_4

    new-array v0, v1, [B

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->categoryid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->hadReportedForExposure:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 120
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    array-length v0, v0

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->businessData:[B

    goto :goto_1

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    array-length v0, v0

    goto :goto_2

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->transData:[B

    goto :goto_3
.end method
