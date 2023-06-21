.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;
.super Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
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
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public description:Ljava/lang/String;

.field public official:I

.field public picurls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public plugintype:I

.field public publishTime:Ljava/lang/String;

.field public score:I

.field public sign:I

.field public srcpicurls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public suser:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->publishTime:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    .line 31
    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->srcpicurls:Ljava/util/ArrayList;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->description:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->score:I

    .line 48
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->sign:I

    .line 52
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->plugintype:I

    .line 57
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->suser:I

    .line 61
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Landroid/os/Parcel;)V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->publishTime:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    .line 31
    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->srcpicurls:Ljava/util/ArrayList;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->description:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->score:I

    .line 48
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->sign:I

    .line 52
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->plugintype:I

    .line 57
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->suser:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->publishTime:Ljava/lang/String;

    .line 66
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    .line 67
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->srcpicurls:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->description:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->score:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->official:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->sign:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->plugintype:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->suser:I

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;J)V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->publishTime:Ljava/lang/String;

    .line 27
    iput-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    .line 31
    iput-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->srcpicurls:Ljava/util/ArrayList;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->description:Ljava/lang/String;

    .line 40
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->score:I

    .line 48
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->sign:I

    .line 52
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->plugintype:I

    .line 57
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->suser:I

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mPublishTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->publishTime:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picurls:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    .line 97
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->srcpicurls:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->srcpicurls:Ljava/util/ArrayList;

    .line 98
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->description:Ljava/lang/String;

    .line 99
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->score:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->score:I

    .line 100
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->official:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->official:I

    .line 101
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->sign:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->sign:I

    .line 102
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->plugintype:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->plugintype:I

    .line 103
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->suser:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->suser:I

    .line 106
    :cond_0
    return-void
.end method

.method public static Y(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->publishTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->srcpicurls:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->official:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->sign:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->plugintype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->suser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
