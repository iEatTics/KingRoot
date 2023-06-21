.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
.super Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kingroot/kinguser/ame;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appStatus:I

.field private transient azF:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingcore/uilib/TextRoundCornerProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private transient azG:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private transient azH:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field public isExpand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;J)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;-><init>(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;J)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 64
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->apkMd5:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->apkUrl:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appName:Ljava/lang/String;

    .line 49
    iget-wide v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->fileSize:J

    iput-wide v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    .line 50
    iget v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->downloadCount:I

    iput v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->downloadCount:I

    .line 51
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->iconUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->describe:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->describe:Ljava/lang/String;

    .line 53
    iget v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    iput v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 54
    iget-boolean v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    iput-boolean v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isUpdate:Z

    .line 55
    iget-boolean v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isDiff:Z

    iput-boolean v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isDiff:Z

    .line 56
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 57
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->version:Ljava/lang/String;

    .line 58
    iget v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->versionCode:I

    iput v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->versioncode:I

    .line 59
    return-object v0
.end method

.method public static ac(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static az(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-static {p0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 79
    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    return-object v1
.end method


# virtual methods
.method public Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->azF:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->azF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 118
    :goto_0
    return-object v0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->azF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->azF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 118
    goto :goto_0
.end method

.method public Ii()Z
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 123
    :cond_1
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ij()Z
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Ik()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->azG:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->azG:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->azG:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public Il()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->azH:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->azH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->azH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public Im()Z
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 180
    :cond_0
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public In()Z
    .locals 1

    .prologue
    .line 188
    instance-of v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->Ip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->azG:Ljava/lang/ref/WeakReference;

    .line 155
    return-void
.end method

.method public a(Landroid/widget/LinearLayout;)V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->azH:Ljava/lang/ref/WeakReference;

    .line 166
    return-void
.end method

.method public a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->azF:Ljava/lang/ref/WeakReference;

    .line 108
    invoke-virtual {p1, p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setTag(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->apkMd5:Ljava/lang/String;

    .line 139
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->apkUrl:Ljava/lang/String;

    .line 141
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appName:Ljava/lang/String;

    .line 142
    iget-wide v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->fileSize:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    .line 143
    iget v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->downloadCount:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->downloadCount:I

    .line 144
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->iconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->describe:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->describe:Ljava/lang/String;

    .line 146
    iget v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 147
    iget v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->versionCode:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->versioncode:I

    .line 148
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->version:Ljava/lang/String;

    .line 149
    iget-boolean v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isUpdate:Z

    .line 150
    iget-boolean v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isDiff:Z

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isDiff:Z

    .line 151
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return-void
.end method
