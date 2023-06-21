.class public Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;
.super Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;

.field public static final aGp:Lcom/kingroot/kinguser/aom$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/aom$a",
            "<",
            "Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;",
            "Lcom/kingroot/kinguser/di;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bigIconUrl:Ljava/lang/String;

.field public detailDescribe:Ljava/lang/String;

.field public functionDesc:Ljava/lang/String;

.field public ignoreCount:I

.field public lastIgnoreTime:J

.field public picUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ExamRecommendAppInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->TAG:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 186
    new-instance v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo$2;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->aGp:Lcom/kingroot/kinguser/aom$a;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;-><init>(Landroid/os/Parcel;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->picUrls:Ljava/util/List;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->detailDescribe:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->ignoreCount:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->lastIgnoreTime:J

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->bigIconUrl:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->functionDesc:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->picUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->detailDescribe:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->ignoreCount:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->lastIgnoreTime:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->bigIconUrl:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->functionDesc:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/di;)V
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;-><init>(Lcom/kingroot/kinguser/di;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->picUrls:Ljava/util/List;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->detailDescribe:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->ignoreCount:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->lastIgnoreTime:J

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->bigIconUrl:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->functionDesc:Ljava/lang/String;

    .line 174
    return-void
.end method


# virtual methods
.method public Kk()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->picUrls:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->iconUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->bigIconUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-object v0
.end method

.method public Kl()V
    .locals 3

    .prologue
    .line 93
    invoke-static {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->a(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 101
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/apv;->d(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 103
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->hk(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public Km()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 118
    iget v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->ignoreCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    move v6, v7

    .line 119
    :goto_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->lastIgnoreTime:J

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    .line 119
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/apv;->c(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)Z

    move-result v1

    .line 124
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v2

    .line 131
    if-nez v6, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    :goto_1
    return v7

    :cond_0
    move v6, v8

    .line 118
    goto :goto_0

    :cond_1
    move v7, v8

    .line 131
    goto :goto_1
.end method

.method public Kn()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 138
    iget v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->ignoreCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    move v6, v7

    .line 139
    :goto_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->lastIgnoreTime:J

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    .line 139
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/apv;->c(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)Z

    move-result v1

    .line 149
    if-nez v6, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    :goto_1
    return v7

    :cond_0
    move v6, v8

    .line 138
    goto :goto_0

    :cond_1
    move v7, v8

    .line 149
    goto :goto_1
.end method

.method public b(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)V
    .locals 2

    .prologue
    .line 70
    iget v0, p1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->ignoreCount:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->ignoreCount:I

    .line 71
    iget-wide v0, p1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->lastIgnoreTime:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->lastIgnoreTime:J

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->picUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->detailDescribe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->ignoreCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->lastIgnoreTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->bigIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->functionDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public yf()Z
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    .line 158
    return v0
.end method
