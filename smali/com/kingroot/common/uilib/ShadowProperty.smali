.class public Lcom/kingroot/common/uilib/ShadowProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;


# instance fields
.field private mBottomEdgeEnable:Z

.field private mLeftEdgeEnable:Z

.field private mRightEdgeEnable:Z

.field private mShadowColor:I

.field private mShadowDx:I

.field private mShadowDy:I

.field private mShadowRadius:I

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mTopEdgeEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v1, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mStrokeWidth:I

    .line 38
    iput v1, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mStrokeColor:I

    .line 39
    iput-boolean v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mLeftEdgeEnable:Z

    .line 40
    iput-boolean v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mTopEdgeEnable:Z

    .line 41
    iput-boolean v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mRightEdgeEnable:Z

    .line 42
    iput-boolean v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mBottomEdgeEnable:Z

    return-void
.end method


# virtual methods
.method public a(ZZZZ)Lcom/kingroot/common/uilib/ShadowProperty;
    .locals 0

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mLeftEdgeEnable:Z

    .line 124
    iput-boolean p2, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mTopEdgeEnable:Z

    .line 125
    iput-boolean p3, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mRightEdgeEnable:Z

    .line 126
    iput-boolean p4, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mBottomEdgeEnable:Z

    .line 127
    return-object p0
.end method

.method public bO(I)Lcom/kingroot/common/uilib/ShadowProperty;
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mShadowColor:I

    .line 74
    return-object p0
.end method

.method public bP(I)Lcom/kingroot/common/uilib/ShadowProperty;
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mShadowRadius:I

    .line 83
    return-object p0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mShadowColor:I

    return v0
.end method

.method public nX()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mLeftEdgeEnable:Z

    return v0
.end method

.method public nY()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mTopEdgeEnable:Z

    return v0
.end method

.method public nZ()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mRightEdgeEnable:Z

    return v0
.end method

.method public oa()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mBottomEdgeEnable:Z

    return v0
.end method

.method public ob()I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/ShadowProperty;->oc()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public oc()I
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mShadowRadius:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mShadowDx:I

    iget v1, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mShadowDy:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mShadowRadius:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public od()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mShadowRadius:I

    return v0
.end method

.method public oe()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mShadowDx:I

    return v0
.end method

.method public of()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mShadowDy:I

    return v0
.end method

.method public og()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mStrokeWidth:I

    return v0
.end method

.method public oh()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/kingroot/common/uilib/ShadowProperty;->mStrokeColor:I

    return v0
.end method
