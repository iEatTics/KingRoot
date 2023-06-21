.class public Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;
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
            "Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allRetryUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public appName:Ljava/lang/String;

.field public businessStream:Ljava/lang/String;

.field public channelId:Ljava/lang/String;

.field public cmsCategoryId:Ljava/lang/String;

.field public currentSize:J

.field public errorCode:I

.field public exception:Ljava/lang/String;

.field public fileMd5:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public fileSize:J

.field public orignalUrl:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public progress:I

.field public savePath:Ljava/lang/String;

.field public state:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

.field public uniqueKey:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask$1;

    invoke-direct {v0}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask$1;-><init>()V

    sput-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->packageName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->appName:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->versionName:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileMd5:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->uniqueKey:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileName:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->orignalUrl:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->url:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->savePath:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->PENDING:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->state:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->exception:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->cmsCategoryId:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->businessStream:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->channelId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->packageName:Ljava/lang/String;

    .line 16
    const-string v1, ""

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->appName:Ljava/lang/String;

    .line 18
    const-string v1, ""

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->versionName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileMd5:Ljava/lang/String;

    .line 24
    const-string v1, ""

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->uniqueKey:Ljava/lang/String;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileName:Ljava/lang/String;

    .line 28
    const-string v1, ""

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->orignalUrl:Ljava/lang/String;

    .line 30
    const-string v1, ""

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->url:Ljava/lang/String;

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->savePath:Ljava/lang/String;

    .line 40
    sget-object v1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->PENDING:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->state:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->exception:Ljava/lang/String;

    .line 48
    const-string v1, ""

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->cmsCategoryId:Ljava/lang/String;

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->businessStream:Ljava/lang/String;

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->channelId:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->packageName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->appName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->versionName:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->versionCode:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileMd5:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->uniqueKey:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileName:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->orignalUrl:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->url:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->savePath:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileSize:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->currentSize:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->progress:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->state:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->errorCode:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->exception:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->allRetryUrl:Ljava/util/List;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->cmsCategoryId:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->businessStream:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->channelId:Ljava/lang/String;

    .line 108
    return-void

    .line 101
    :cond_0
    invoke-static {}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->values()[Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->uniqueKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->orignalUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->savePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-wide v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->currentSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->state:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->exception:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->allRetryUrl:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 78
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->cmsCategoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->businessStream:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->state:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    invoke-virtual {v0}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->ordinal()I

    move-result v0

    goto :goto_0
.end method
