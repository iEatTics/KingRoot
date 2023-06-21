.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;
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
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mContent:Ljava/lang/String;

.field public mCount:I

.field public mDescript:Ljava/lang/String;

.field public mID:I

.field public mIconUrl:Ljava/lang/String;

.field public mRank:I

.field public mSign:I

.field public mState:I

.field public mTime:J

.field public mTitle:Ljava/lang/String;

.field public mType:I

.field public pushType:I

.field public updateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mID:I

    .line 23
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mCount:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mContent:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mDescript:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mSign:I

    .line 27
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mState:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mID:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mTitle:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mIconUrl:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mCount:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mContent:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mDescript:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mSign:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mState:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mType:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mTime:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->updateTime:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->pushType:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mRank:I

    .line 71
    return-void
.end method

.method protected constructor <init>(Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mID:I

    .line 23
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mCount:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mContent:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mDescript:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mSign:I

    .line 27
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mState:I

    .line 38
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->aii()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mID:I

    .line 39
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mTitle:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->aih()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mIconUrl:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->getCount()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mCount:I

    .line 42
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->aij()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mContent:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->aik()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mDescript:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->getSign()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mSign:I

    .line 45
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->getState()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mState:I

    .line 46
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mType:I

    .line 47
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mTime:J

    .line 48
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->ail()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->updateTime:J

    .line 49
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->aim()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->pushType:I

    .line 50
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->getRank()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mRank:I

    .line 51
    return-void
.end method

.method public static a(Ljava/util/List;J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
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

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;

    .line 105
    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;-><init>(Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mDescript:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mSign:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->updateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->pushType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return-void
.end method
