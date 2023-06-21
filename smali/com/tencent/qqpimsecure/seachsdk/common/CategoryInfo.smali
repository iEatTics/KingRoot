.class public Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mContent:Ljava/lang/String;

.field private mCount:I

.field private mDescript:Ljava/lang/String;

.field private mID:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconUrl:Ljava/lang/String;

.field private mRank:I

.field private mSign:I

.field private mState:I

.field private mTime:J

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private pushType:I

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mID:I

    .line 24
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mCount:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mContent:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mDescript:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mSign:I

    .line 32
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mState:I

    .line 12
    return-void
.end method


# virtual methods
.method public aih()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public aii()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mID:I

    return v0
.end method

.method public aij()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public aik()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mDescript:Ljava/lang/String;

    return-object v0
.end method

.method public ail()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->updateTime:J

    return-wide v0
.end method

.method public aim()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->pushType:I

    return v0
.end method

.method public cI(J)V
    .locals 1

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->updateTime:J

    .line 138
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mCount:I

    return v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mRank:I

    return v0
.end method

.method public getSign()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mSign:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mState:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mType:I

    return v0
.end method

.method public kn(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mID:I

    .line 58
    return-void
.end method

.method public ko(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mCount:I

    .line 82
    return-void
.end method

.method public kp(I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->pushType:I

    .line 146
    return-void
.end method

.method public ni(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mIconUrl:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public nj(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mContent:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->mTitle:Ljava/lang/String;

    .line 66
    return-void
.end method
