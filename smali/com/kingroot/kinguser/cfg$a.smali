.class public Lcom/kingroot/kinguser/cfg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public bux:I

.field public cbA:Lcom/kingroot/kinguser/cci;

.field public cbB:J

.field public cbC:J

.field final synthetic cbm:Lcom/kingroot/kinguser/cfg;

.field public cbu:I

.field public cbv:I

.field public cbw:J

.field public cbx:J

.field public cby:Lcom/qq/taf/jce/JceStruct;

.field public cbz:Lcom/qq/taf/jce/JceStruct;

.field public mCmdId:I

.field public mFlag:I

.field public mTimeout:J


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfg;IIIJJILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;JJ)V
    .locals 4

    .prologue
    .line 340
    iput-object p1, p0, Lcom/kingroot/kinguser/cfg$a;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/kingroot/kinguser/cfg$a;->mTimeout:J

    .line 336
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/kingroot/kinguser/cfg$a;->cbB:J

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/cfg$a;->cbC:J

    .line 341
    iput p2, p0, Lcom/kingroot/kinguser/cfg$a;->bux:I

    .line 342
    iput p3, p0, Lcom/kingroot/kinguser/cfg$a;->cbu:I

    .line 343
    iput p4, p0, Lcom/kingroot/kinguser/cfg$a;->cbv:I

    .line 344
    iput-wide p5, p0, Lcom/kingroot/kinguser/cfg$a;->cbw:J

    .line 345
    iput p9, p0, Lcom/kingroot/kinguser/cfg$a;->mCmdId:I

    .line 346
    iput-wide p7, p0, Lcom/kingroot/kinguser/cfg$a;->cbx:J

    .line 347
    iput-object p10, p0, Lcom/kingroot/kinguser/cfg$a;->cby:Lcom/qq/taf/jce/JceStruct;

    .line 348
    iput-object p11, p0, Lcom/kingroot/kinguser/cfg$a;->cbz:Lcom/qq/taf/jce/JceStruct;

    .line 349
    move/from16 v0, p12

    iput v0, p0, Lcom/kingroot/kinguser/cfg$a;->mFlag:I

    .line 350
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/kingroot/kinguser/cfg$a;->cbA:Lcom/kingroot/kinguser/cci;

    .line 351
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/kingroot/kinguser/cfg$a;->mTimeout:J

    .line 352
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/kingroot/kinguser/cfg$a;->cbB:J

    .line 353
    return-void
.end method


# virtual methods
.method public alO()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/cfg$a;->cbC:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 357
    iget-wide v0, p0, Lcom/kingroot/kinguser/cfg$a;->mTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/kingroot/kinguser/cfg$a;->mTimeout:J

    .line 358
    :goto_0
    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    .line 360
    :goto_1
    if-eqz v0, :cond_0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    const-string v4, "cmdId|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/kingroot/kinguser/cfg$a;->mCmdId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    const-string v4, "|mIpcSeqNo|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/kingroot/kinguser/cfg$a;->cbu:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    const-string v4, "|mPushSeqNo|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/kingroot/kinguser/cfg$a;->cbv:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    const-string v4, "|mPushId|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/kingroot/kinguser/cfg$a;->cbw:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 366
    const-string v4, "|mCallerIdent|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/kingroot/kinguser/cfg$a;->cbx:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 367
    const-string v4, "|mTimeout|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/kingroot/kinguser/cfg$a;->mTimeout:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 368
    const-string v4, "|time(s)|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 370
    const-string v2, "ocean"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ocean][time_out]SharkProcessProxy.SharkProxyTask.isTimeOut(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v8, v8}, Lcom/kingroot/kinguser/cfe;->c(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/az;Lcom/kingroot/kinguser/bg;)V

    .line 372
    :cond_0
    return v0

    .line 357
    :cond_1
    const-wide/32 v0, 0x2d2a8

    goto :goto_0

    .line 358
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
