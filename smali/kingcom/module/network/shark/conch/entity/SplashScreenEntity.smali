.class public Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/caq;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public beginTime:J

.field public clickJumpUrl:Ljava/lang/String;

.field public conchSeqno:I

.field public endTime:J

.field public expirationTime:J

.field public extrasParam:Ljava/lang/String;

.field public language:I

.field public picDownloadUrl:Ljava/lang/String;

.field public priority:I

.field public showDuration:I

.field public taskID:J

.field public timeInterval:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->language:I

    .line 60
    iput-wide v2, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->beginTime:J

    .line 62
    iput-wide v2, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->endTime:J

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->picDownloadUrl:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->clickJumpUrl:Ljava/lang/String;

    .line 68
    iput v1, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->showDuration:I

    .line 70
    iput v1, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->timeInterval:I

    .line 72
    iput-wide v2, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->expirationTime:J

    .line 74
    iput v1, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->priority:I

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->extrasParam:Ljava/lang/String;

    .line 79
    iput-wide v2, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    .line 81
    iput v1, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "language:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->language:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nbeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->beginTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nendTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->endTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\npicDownloadUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->picDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nclickJumpUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->clickJumpUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nshowDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->showDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntimeInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->timeInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nexpirationTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->expirationTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\npriority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nextrasParam:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->extrasParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntaskID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nconchSeqno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
