.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kingroot/kinguser/rr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public activityID:Ljava/lang/String;

.field public apkMd5:Ljava/lang/String;

.field public apkUrl:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public bannerId:J

.field public bgPicUrl:Ljava/lang/String;

.field public bottomPics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;",
            ">;"
        }
    .end annotation
.end field

.field public btnPicUrl:Ljava/lang/String;

.field public categoryId:I

.field public channelId:Ljava/lang/String;

.field public describe:Ljava/lang/String;

.field public destCategoryId:I

.field public downloadCount:I

.field public endTime:J

.field public fileSize:J

.field public groupId:J

.field public iconUrl:Ljava/lang/String;

.field public ifSelected:Z

.field public isDiff:Z

.field public isUpdate:Z

.field public jumpUrl4App:Ljava/lang/String;

.field public jumpUrl4Banner:Ljava/lang/String;

.field public jumptype:I

.field public pkgName:Ljava/lang/String;

.field public position:I

.field public reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

.field public reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

.field public version:Ljava/lang/String;

.field public versioncode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->describe:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkUrl:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    .line 61
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    .line 65
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->downloadCount:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->version:Ljava/lang/String;

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->groupId:J

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->channelId:Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->versioncode:I

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->btnPicUrl:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bottomPics:Ljava/util/ArrayList;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->activityID:Ljava/lang/String;

    .line 123
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->ifSelected:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4App:Ljava/lang/String;

    .line 130
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isUpdate:Z

    .line 134
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isDiff:Z

    .line 141
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->describe:Ljava/lang/String;

    .line 45
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkUrl:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    .line 61
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    .line 65
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->downloadCount:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->version:Ljava/lang/String;

    .line 74
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->groupId:J

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->channelId:Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->versioncode:I

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->btnPicUrl:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bottomPics:Ljava/util/ArrayList;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->activityID:Ljava/lang/String;

    .line 123
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->ifSelected:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4App:Ljava/lang/String;

    .line 130
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isUpdate:Z

    .line 134
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isDiff:Z

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->describe:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkUrl:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->downloadCount:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->version:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->groupId:J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->channelId:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->versioncode:I

    .line 158
    const-class v0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->position:I

    .line 160
    const-class v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bottomPics:Ljava/util/ArrayList;

    const-class v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->btnPicUrl:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->endTime:J

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->activityID:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->destCategoryId:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bannerId:J

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isUpdate:Z

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isDiff:Z

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->ifSelected:Z

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4App:Ljava/lang/String;

    .line 173
    return-void

    :cond_0
    move v0, v2

    .line 169
    goto :goto_0

    :cond_1
    move v0, v2

    .line 170
    goto :goto_1

    :cond_2
    move v1, v2

    .line 171
    goto :goto_2
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->describe:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkUrl:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    .line 61
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    .line 65
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->downloadCount:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->version:Ljava/lang/String;

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->groupId:J

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->channelId:Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->versioncode:I

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->btnPicUrl:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bottomPics:Ljava/util/ArrayList;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->activityID:Ljava/lang/String;

    .line 123
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->ifSelected:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4App:Ljava/lang/String;

    .line 130
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isUpdate:Z

    .line 134
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isDiff:Z

    .line 215
    if-eqz p1, :cond_1

    .line 216
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->describe:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->describe:Ljava/lang/String;

    .line 218
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    .line 219
    iget-wide v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    .line 220
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    .line 221
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkUrl:Ljava/lang/String;

    .line 222
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    .line 223
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    .line 224
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    .line 225
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->downloadCount:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->downloadCount:I

    .line 226
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->version:Ljava/lang/String;

    .line 227
    iget-wide v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->groupId:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->groupId:J

    .line 228
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->channelId:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->channelId:Ljava/lang/String;

    .line 229
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->versioncode:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->versioncode:I

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 233
    :cond_0
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->position:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->position:I

    .line 234
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    .line 235
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bottomPics:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bottomPics:Ljava/util/ArrayList;

    .line 236
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    .line 237
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->btnPicUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->btnPicUrl:Ljava/lang/String;

    .line 238
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    .line 239
    iget-wide v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->endTime:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->endTime:J

    .line 240
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->activityID:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->activityID:Ljava/lang/String;

    .line 241
    iget v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->destCategoryId:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->destCategoryId:I

    .line 242
    iget-wide v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bannerId:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bannerId:J

    .line 243
    iget-boolean v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isUpdate:Z

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isUpdate:Z

    .line 244
    iget-boolean v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isDiff:Z

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isDiff:Z

    .line 245
    iget-boolean v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->ifSelected:Z

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->ifSelected:Z

    .line 246
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4App:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4App:Ljava/lang/String;

    .line 248
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;J)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->describe:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkUrl:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    .line 61
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    .line 65
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->downloadCount:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->version:Ljava/lang/String;

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->groupId:J

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->channelId:Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->versioncode:I

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->btnPicUrl:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bottomPics:Ljava/util/ArrayList;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->activityID:Ljava/lang/String;

    .line 123
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->ifSelected:Z

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4App:Ljava/lang/String;

    .line 130
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isUpdate:Z

    .line 134
    iput-boolean v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isDiff:Z

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->describe:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->describe:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->logoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    .line 180
    iget-wide v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    .line 181
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->apkFileMd5:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    .line 182
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->jumptype:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    .line 183
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->categoryid:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    .line 184
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->downloadCount:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->downloadCount:I

    .line 185
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->version:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->fileUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkUrl:Ljava/lang/String;

    .line 187
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    .line 188
    iput-wide p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->groupId:J

    .line 189
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->channelId:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->channelId:Ljava/lang/String;

    .line 190
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->versioncode:I

    .line 191
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;-><init>(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 192
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mPos:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->position:I

    .line 193
    invoke-static {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->b(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    .line 194
    invoke-static {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->a(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bottomPics:Ljava/util/ArrayList;

    .line 195
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->logoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    .line 196
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picBtnUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->btnPicUrl:Ljava/lang/String;

    .line 197
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->browserUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    .line 199
    :try_start_0
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->expirationTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->endTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->activityID:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->activityID:Ljava/lang/String;

    .line 204
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mDestCategoryId:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->destCategoryId:I

    .line 205
    iget-wide v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->bannerId:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bannerId:J

    .line 207
    iget-boolean v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->ifSelected:Z

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->ifSelected:Z

    .line 208
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->jumpUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4App:Ljava/lang/String;

    .line 212
    :cond_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->endTime:J

    goto :goto_0
.end method

.method public static V(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;-><init>(Landroid/os/Parcel;)V

    .line 263
    return-object v0
.end method

.method public static a(Ljava/util/List;J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-static {p0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    .line 254
    if-eqz v0, :cond_0

    .line 255
    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-direct {v3, v0, p1, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;-><init>(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_1
    return-object v1
.end method


# virtual methods
.method public If()Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;
    .locals 2

    .prologue
    .line 316
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->packageName:Ljava/lang/String;

    .line 318
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->channelId:Ljava/lang/String;

    .line 319
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->categoryid:I

    .line 320
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->appName:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->apkFileMd5:Ljava/lang/String;

    .line 322
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->version:Ljava/lang/String;

    .line 323
    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->versioncode:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->versionCode:I

    .line 324
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->describe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 278
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->downloadCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->groupId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->versioncode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 289
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bottomPics:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->btnPicUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->endTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->activityID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->destCategoryId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-wide v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bannerId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 299
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isUpdate:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->isDiff:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->ifSelected:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4App:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    return-void

    :cond_0
    move v0, v2

    .line 299
    goto :goto_0

    :cond_1
    move v0, v2

    .line 300
    goto :goto_1

    :cond_2
    move v1, v2

    .line 301
    goto :goto_2
.end method
