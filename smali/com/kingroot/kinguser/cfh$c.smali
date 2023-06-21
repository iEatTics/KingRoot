.class Lcom/kingroot/kinguser/cfh$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public bZA:I

.field public bux:I

.field public caS:J

.field public cbA:Lcom/kingroot/kinguser/cci;

.field final synthetic cbV:Lcom/kingroot/kinguser/cfh;

.field public cbu:I

.field public cbx:J

.field public cby:Lcom/qq/taf/jce/JceStruct;

.field public cbz:Lcom/qq/taf/jce/JceStruct;

.field public cch:[B

.field public cci:[B

.field public ccj:Lcom/kingroot/kinguser/ccj;

.field public cck:I

.field public ccl:Lcom/kingroot/kinguser/ccn;

.field public ccm:J

.field public ccn:J

.field public jW:J

.field public mCmdId:I

.field public mFlag:I

.field public retCode:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfh;IIJILcom/qq/taf/jce/JceStruct;[BLcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;Lcom/kingroot/kinguser/ccj;)V
    .locals 2

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh$c;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/cfh$c;->ccm:J

    .line 1126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cfh$c;->ccn:J

    .line 1128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cfh$c;->caS:J

    .line 1132
    iput p2, p0, Lcom/kingroot/kinguser/cfh$c;->bux:I

    .line 1133
    iput p3, p0, Lcom/kingroot/kinguser/cfh$c;->cbu:I

    .line 1134
    iput-wide p4, p0, Lcom/kingroot/kinguser/cfh$c;->cbx:J

    .line 1135
    iput p6, p0, Lcom/kingroot/kinguser/cfh$c;->mCmdId:I

    .line 1136
    iput-object p7, p0, Lcom/kingroot/kinguser/cfh$c;->cby:Lcom/qq/taf/jce/JceStruct;

    .line 1137
    iput-object p8, p0, Lcom/kingroot/kinguser/cfh$c;->cch:[B

    .line 1138
    iput-object p9, p0, Lcom/kingroot/kinguser/cfh$c;->cbz:Lcom/qq/taf/jce/JceStruct;

    .line 1139
    iput p10, p0, Lcom/kingroot/kinguser/cfh$c;->mFlag:I

    .line 1140
    iput-object p11, p0, Lcom/kingroot/kinguser/cfh$c;->cbA:Lcom/kingroot/kinguser/cci;

    .line 1141
    iput-object p12, p0, Lcom/kingroot/kinguser/cfh$c;->ccj:Lcom/kingroot/kinguser/ccj;

    .line 1142
    new-instance v0, Lcom/kingroot/kinguser/ccn;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ccn;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh$c;->ccl:Lcom/kingroot/kinguser/ccn;

    .line 1143
    return-void
.end method


# virtual methods
.method public alO()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/cfh$c;->caS:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 1147
    iget-wide v0, p0, Lcom/kingroot/kinguser/cfh$c;->ccm:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/kingroot/kinguser/cfh$c;->ccm:J

    .line 1148
    :goto_0
    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    .line 1150
    :goto_1
    if-eqz v0, :cond_0

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1152
    const-string v4, "cmdId|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/kingroot/kinguser/cfh$c;->mCmdId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1153
    const-string v4, "|mIpcSeqNo|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/kingroot/kinguser/cfh$c;->cbu:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1154
    const-string v4, "|mSeqNo|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1155
    const-string v4, "|pushId|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/kingroot/kinguser/cfh$c;->jW:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1156
    const-string v4, "|mCallerIdent|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/kingroot/kinguser/cfh$c;->cbx:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1157
    const-string v4, "|callBackTimeout|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/kingroot/kinguser/cfh$c;->ccm:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1158
    const-string v4, "|time(s)|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1160
    const-string v2, "ocean"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ocean][time_out]SharkProtocolQueue.SharkSendTask.isTimeOut(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v8, v8}, Lcom/kingroot/kinguser/cfe;->c(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/az;Lcom/kingroot/kinguser/bg;)V

    .line 1162
    :cond_0
    return v0

    .line 1147
    :cond_1
    const-wide/32 v0, 0x2bf20

    goto :goto_0

    .line 1148
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
