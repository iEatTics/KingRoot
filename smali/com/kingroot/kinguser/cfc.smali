.class public Lcom/kingroot/kinguser/cfc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cfc$a;
    }
.end annotation


# static fields
.field private static bZD:Lcom/kingroot/kinguser/cfc;


# instance fields
.field private bYt:Lcom/kingroot/kinguser/ceu;

.field private bZC:Lcom/kingroot/kinguser/cge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cge",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingroot/kinguser/cfc$a;",
            ">;"
        }
    .end annotation
.end field

.field private bZE:Landroid/os/PowerManager;

.field public bZF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/cfc;->bZD:Lcom/kingroot/kinguser/cfc;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/kingroot/kinguser/cge;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/cge;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfc;->bZC:Lcom/kingroot/kinguser/cge;

    .line 64
    iput-object v2, p0, Lcom/kingroot/kinguser/cfc;->bYt:Lcom/kingroot/kinguser/ceu;

    .line 65
    iput-object v2, p0, Lcom/kingroot/kinguser/cfc;->bZE:Landroid/os/PowerManager;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfc;->bZF:Ljava/util/Map;

    .line 339
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfc;)Lcom/kingroot/kinguser/cge;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/cfc;->bZC:Lcom/kingroot/kinguser/cge;

    return-object v0
.end method

.method public static alC()Lcom/kingroot/kinguser/cfc;
    .locals 2

    .prologue
    .line 56
    const-class v1, Lcom/kingroot/kinguser/cfc;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/cfc;->bZD:Lcom/kingroot/kinguser/cfc;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/kingroot/kinguser/cfc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cfc;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cfc;->bZD:Lcom/kingroot/kinguser/cfc;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-object v0, Lcom/kingroot/kinguser/cfc;->bZD:Lcom/kingroot/kinguser/cfc;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized K(IZ)Z
    .locals 10

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfc;->bZC:Lcom/kingroot/kinguser/cge;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cge;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cfc$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 307
    :goto_0
    monitor-exit p0

    return v0

    .line 216
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bZC:Lcom/kingroot/kinguser/cge;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/cge;->z(Ljava/lang/Object;)V

    .line 217
    iget-object v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZH:Ljava/util/BitSet;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    .line 220
    iget v4, v0, Lcom/kingroot/kinguser/cfc$a;->retCode:I

    .line 221
    if-eqz v4, :cond_e

    .line 222
    invoke-static {v4}, Lcom/kingroot/kinguser/cen;->kI(I)I

    move-result v2

    .line 223
    iget v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZJ:I

    .line 224
    const/4 v5, -0x2

    if-ne v1, v5, :cond_3

    .line 225
    sub-int v1, v4, v2

    const v2, -0x27100

    add-int/2addr v1, v2

    move v2, v1

    .line 242
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    const-string v1, "|cmd|cmd_"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget v1, v0, Lcom/kingroot/kinguser/cfc$a;->cmd:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, "|seqNo|seq_"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    iget-object v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    const-string v1, "|reason|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZI:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_1
    const-string v1, "|channel|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    if-eqz v3, :cond_7

    const-string v1, "http"

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, "|step|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZH:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, "|netState|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZJ:I

    invoke-static {v1}, Lcom/kingroot/kinguser/cey;->ld(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, "|isScreenOn|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-boolean v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZK:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 259
    const-string v1, "|isNetworkChanged|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-boolean v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZL:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, "|tcpRetCode|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZN:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "|httpRecCode|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZO:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, "|retCode|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget v1, v0, Lcom/kingroot/kinguser/cfc$a;->retCode:I

    if-ne v2, v1, :cond_8

    .line 267
    iget v1, v0, Lcom/kingroot/kinguser/cfc$a;->retCode:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    :goto_3
    const-string v1, "|timeOut|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-wide v6, v0, Lcom/kingroot/kinguser/cfc$a;->bZM:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, "|totalTime|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/kingroot/kinguser/cfc$a;->bZP:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, "|sendFlow|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZR:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, "|recFlow|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZS:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget v1, v0, Lcom/kingroot/kinguser/cfc$a;->retCode:I

    if-nez v1, :cond_9

    .line 280
    const-string v1, "SharkFunnelModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[shark_funnel]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/kingroot/kinguser/cfe;->bj(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_4
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bYt:Lcom/kingroot/kinguser/ceu;

    if-eqz v1, :cond_2

    .line 291
    iget v1, v0, Lcom/kingroot/kinguser/cfc$a;->cmd:I

    const/16 v4, 0x2710

    if-le v1, v4, :cond_b

    iget v0, v0, Lcom/kingroot/kinguser/cfc$a;->cmd:I

    add-int/lit16 v0, v0, -0x2710

    .line 292
    :goto_5
    const/16 v1, 0x3e7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x31a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x31d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30e

    if-eq v0, v1, :cond_2

    .line 296
    if-nez v2, :cond_c

    .line 297
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bYt:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/ceu;->i(II)V

    :cond_2
    :goto_6
    move v0, v3

    .line 307
    goto/16 :goto_0

    .line 226
    :cond_3
    const v5, -0xc350

    if-ne v2, v5, :cond_e

    .line 228
    iget-boolean v5, v0, Lcom/kingroot/kinguser/cfc$a;->bZL:Z

    if-eqz v5, :cond_4

    .line 230
    const v1, -0x86470

    .line 238
    :goto_7
    sub-int v2, v4, v2

    add-int/2addr v1, v2

    move v2, v1

    goto/16 :goto_1

    .line 231
    :cond_4
    const/4 v5, -0x4

    if-ne v1, v5, :cond_5

    .line 232
    const v1, -0x81650

    goto :goto_7

    .line 233
    :cond_5
    const/4 v5, -0x1

    if-ne v1, v5, :cond_6

    .line 234
    const v1, -0x35b60

    goto :goto_7

    .line 235
    :cond_6
    const/4 v5, -0x3

    if-ne v1, v5, :cond_d

    .line 236
    const v1, -0x83d60

    goto :goto_7

    .line 252
    :cond_7
    const-string v1, "tcp"

    goto/16 :goto_2

    .line 269
    :cond_8
    iget v1, v0, Lcom/kingroot/kinguser/cfc$a;->retCode:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "->"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 282
    :cond_9
    if-eqz p2, :cond_a

    .line 283
    :try_start_2
    const-string v1, "SharkFunnelModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xxxxxxxxxxxx [shark_funnel]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/kingroot/kinguser/cfe;->bk(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 285
    :cond_a
    const-string v1, "SharkFunnelModel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tttt [shark_funnel]"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/kingroot/kinguser/cfe;->bk(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 291
    :cond_b
    iget v0, v0, Lcom/kingroot/kinguser/cfc$a;->cmd:I

    goto/16 :goto_5

    .line 300
    :cond_c
    if-eqz p2, :cond_2

    .line 301
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bYt:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/ceu;->i(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    :cond_d
    move v1, v2

    goto :goto_7

    :cond_e
    move v2, v4

    goto/16 :goto_1
.end method

.method public declared-synchronized a(Ljava/lang/String;IILcom/kingroot/kinguser/az;I)V
    .locals 8

    .prologue
    .line 194
    monitor-enter p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;IILcom/kingroot/kinguser/az;IILjava/lang/String;)V
    .locals 8

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfc;->bZC:Lcom/kingroot/kinguser/cge;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cge;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cfc$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    if-nez v0, :cond_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ocean][shark_funnel]|seqNo|seq_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|step|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|cmdId|cmd_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|stepTime|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/kingroot/kinguser/cfc$a;->bZQ:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|retCode|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|flow|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cfe;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/16 v1, 0x15

    if-ne p2, v1, :cond_1

    .line 134
    const v1, 0x10006

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "|step|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|cmdId|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|retCode|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cgl;->a(I[Ljava/lang/Object;)V

    .line 137
    :cond_1
    iput p2, v0, Lcom/kingroot/kinguser/cfc$a;->cmd:I

    .line 138
    iget-object v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZH:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, p5, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 139
    if-eqz p7, :cond_2

    .line 140
    iput-object p7, v0, Lcom/kingroot/kinguser/cfc$a;->bZR:Ljava/lang/String;

    .line 142
    :cond_2
    const/16 v1, 0xe

    if-eq p5, v1, :cond_3

    const/16 v1, 0x9

    if-eq p5, v1, :cond_3

    const/16 v1, 0xa

    if-ne p5, v1, :cond_5

    .line 144
    :cond_3
    iput p6, v0, Lcom/kingroot/kinguser/cfc$a;->bZN:I

    .line 147
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bYt:Lcom/kingroot/kinguser/ceu;

    if-eqz v1, :cond_4

    .line 148
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bYt:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v1, p2, p6}, Lcom/kingroot/kinguser/ceu;->j(II)V

    .line 160
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/cfc$a;->bZQ:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 150
    :cond_5
    const/16 v1, 0x10

    if-ne p5, v1, :cond_6

    .line 151
    :try_start_2
    iput p6, v0, Lcom/kingroot/kinguser/cfc$a;->bZO:I

    .line 154
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bYt:Lcom/kingroot/kinguser/ceu;

    if-eqz v1, :cond_4

    .line 155
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bYt:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v1, p2, p6}, Lcom/kingroot/kinguser/ceu;->k(II)V

    goto :goto_1

    .line 158
    :cond_6
    iput p6, v0, Lcom/kingroot/kinguser/cfc$a;->retCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;II)V
    .locals 8

    .prologue
    .line 164
    monitor-enter p0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;IILjava/lang/String;)V
    .locals 8

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfc;->bZC:Lcom/kingroot/kinguser/cge;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cge;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cfc$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-nez v0, :cond_0

    .line 191
    :goto_0
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ocean][shark_funnel]|seqNo|seq_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|step|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|cmdId|cmd_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|stepTime|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/kingroot/kinguser/cfc$a;->bZQ:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|retCode|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|flow|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cfe;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/16 v1, 0x2725

    if-ne p2, v1, :cond_1

    .line 175
    const v1, 0x10006

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "|step|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|cmdId|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|retCode|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cgl;->a(I[Ljava/lang/Object;)V

    .line 178
    :cond_1
    iput p2, v0, Lcom/kingroot/kinguser/cfc$a;->cmd:I

    .line 179
    if-eqz p7, :cond_2

    .line 180
    iput-object p7, v0, Lcom/kingroot/kinguser/cfc$a;->bZS:Ljava/lang/String;

    .line 182
    :cond_2
    iget-object v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZH:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, p5, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 183
    const/16 v1, 0xe

    if-ne p5, v1, :cond_3

    .line 184
    iput p6, v0, Lcom/kingroot/kinguser/cfc$a;->bZN:I

    .line 190
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/cfc$a;->bZQ:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :cond_3
    const/16 v1, 0x10

    if-ne p5, v1, :cond_4

    .line 186
    :try_start_2
    iput p6, v0, Lcom/kingroot/kinguser/cfc$a;->bZO:I

    goto :goto_1

    .line 188
    :cond_4
    iput p6, v0, Lcom/kingroot/kinguser/cfc$a;->retCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized b(IJLjava/lang/String;)V
    .locals 4

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/cfc$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cfc$a;-><init>()V

    .line 109
    iput-object p4, v0, Lcom/kingroot/kinguser/cfc$a;->bZI:Ljava/lang/String;

    .line 110
    iput-wide p2, v0, Lcom/kingroot/kinguser/cfc$a;->bZM:J

    .line 111
    invoke-static {}, Lcom/kingroot/kinguser/cey;->alt()Lcom/kingroot/kinguser/cey;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/cey;->k(ZZ)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZJ:I

    .line 112
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bZE:Landroid/os/PowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 114
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bZE:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/cfc$a;->bZK:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bZC:Lcom/kingroot/kinguser/cge;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/cge;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized b(Lcom/kingroot/kinguser/ceu;)V
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/kingroot/kinguser/cfc;->bYt:Lcom/kingroot/kinguser/ceu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/kingroot/kinguser/cfc;->bZE:Landroid/os/PowerManager;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :goto_0
    :try_start_2
    invoke-static {}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->alR()Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/cfc$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/cfc$1;-><init>(Lcom/kingroot/kinguser/cfc;)V

    invoke-virtual {v0, v1}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->a(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(B)V
    .locals 3

    .prologue
    .line 312
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bZF:Ljava/util/Map;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfc;->bZF:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public c(BI)V
    .locals 4

    .prologue
    .line 318
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bZF:Ljava/util/Map;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfc;->bZF:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public d(B)I
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc;->bZF:Ljava/util/Map;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfc;->bZF:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 331
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized hF(I)V
    .locals 2

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfc;->bZC:Lcom/kingroot/kinguser/cge;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cge;->z(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lf(I)Z
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/cfc;->K(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
