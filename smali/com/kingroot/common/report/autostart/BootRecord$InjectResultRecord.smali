.class public Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;
.super Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/report/autostart/BootRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InjectResultRecord"
.end annotation


# instance fields
.field public mInjectRanking:I

.field public mInjectResult:Z

.field public mIsKilled:Z

.field public mTargetProc2Inject:Ljava/lang/String;

.field public mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-direct {p0}, Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;-><init>()V

    .line 488
    iput v0, p0, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mInjectRanking:I

    .line 490
    iput-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mInjectResult:Z

    .line 492
    iput-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mIsKilled:Z

    return-void
.end method


# virtual methods
.method public mD()[[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 513
    const/4 v0, 0x7

    new-array v3, v0, [[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mID:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    aput-object v0, v3, v2

    new-array v0, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mPkg:Ljava/lang/String;

    aput-object v4, v0, v2

    aput-object v0, v3, v1

    const/4 v0, 0x2

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mVersionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mTargetProc2Inject:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, v3, v0

    const/4 v0, 0x4

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mInjectRanking:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v4, v3, v0

    const/4 v4, 0x5

    new-array v5, v1, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mInjectResult:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    aput-object v5, v3, v4

    const/4 v0, 0x6

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p0, Lcom/kingroot/common/report/autostart/BootRecord$InjectResultRecord;->mIsKilled:Z

    if-eqz v6, :cond_1

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    aput-object v4, v3, v0

    return-object v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    const-string v0, ""

    return-object v0
.end method
