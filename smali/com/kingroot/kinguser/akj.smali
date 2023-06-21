.class public final Lcom/kingroot/kinguser/akj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static avw:Lcom/kingroot/kinguser/akj;


# instance fields
.field private avq:Lcom/kingroot/kinguser/bk;

.field private avr:Lcom/kingroot/kinguser/db;

.field private avs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bi;",
            ">;"
        }
    .end annotation
.end field

.field private avt:Lcom/kingroot/kinguser/bi;

.field private avu:I

.field private avv:J

.field private avx:Lcom/kingroot/kinguser/bed;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/akj;->avu:I

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/akj;->avv:J

    .line 268
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/akj$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/akj$1;-><init>(Lcom/kingroot/kinguser/akj;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/akj;->avx:Lcom/kingroot/kinguser/bed;

    .line 52
    iput-object p1, p0, Lcom/kingroot/kinguser/akj;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akj;->AK()Z

    .line 54
    return-void
.end method

.method private AD()J
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->mContext:Landroid/content/Context;

    const-string v1, "key_adapt_req_commit_timestamp"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bbl;->y(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static aT(Landroid/content/Context;)Lcom/kingroot/kinguser/akj;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/kingroot/kinguser/akj;->avw:Lcom/kingroot/kinguser/akj;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lcom/kingroot/kinguser/akj;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/akj;->avw:Lcom/kingroot/kinguser/akj;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/kingroot/kinguser/akj;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/akj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/kinguser/akj;->avw:Lcom/kingroot/kinguser/akj;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/akj;->avw:Lcom/kingroot/kinguser/akj;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public AA()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avq:Lcom/kingroot/kinguser/bk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avq:Lcom/kingroot/kinguser/bk;

    iget-object v0, v0, Lcom/kingroot/kinguser/bk;->kx:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avq:Lcom/kingroot/kinguser/bk;

    iget-object v0, v0, Lcom/kingroot/kinguser/bk;->kx:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public AB()J
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->mContext:Landroid/content/Context;

    const-string v1, "key_old_commit_count"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bbl;->y(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public AC()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 75
    .line 77
    iget-wide v0, p0, Lcom/kingroot/kinguser/akj;->avv:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 78
    iget-wide v0, p0, Lcom/kingroot/kinguser/akj;->avv:J

    .line 94
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/kingroot/kinguser/akj;->AD()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akj;->AB()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akj;->AB()J

    move-result-wide v0

    .line 99
    :cond_1
    return-wide v0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    iget-object v0, v0, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    iget-object v0, v0, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    iget-wide v0, v0, Lcom/kingroot/kinguser/bi;->kq:J

    .line 85
    :goto_1
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 88
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootSdk;->getSubmitUserCount()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method public AE()J
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->mContext:Landroid/content/Context;

    const-string v1, "key_old_my_ranking"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bbl;->y(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public AF()J
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    iget-object v0, v0, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    if-nez v0, :cond_1

    .line 126
    :cond_0
    const-wide/16 v0, 0x0

    .line 128
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    iget-object v0, v0, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    iget-wide v0, v0, Lcom/kingroot/kinguser/bi;->kr:J

    goto :goto_0
.end method

.method public AG()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    iget-object v0, v0, Lcom/kingroot/kinguser/db;->mT:Lcom/kingroot/kinguser/cc;

    if-nez v0, :cond_1

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    iget-object v0, v0, Lcom/kingroot/kinguser/db;->mT:Lcom/kingroot/kinguser/cc;

    iget v0, v0, Lcom/kingroot/kinguser/cc;->lx:I

    goto :goto_0
.end method

.method public AH()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    iget-object v2, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    iget-object v2, v2, Lcom/kingroot/kinguser/db;->mT:Lcom/kingroot/kinguser/cc;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 142
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    iget-object v2, v2, Lcom/kingroot/kinguser/db;->mT:Lcom/kingroot/kinguser/cc;

    iget v2, v2, Lcom/kingroot/kinguser/cc;->iI:I

    if-ne v2, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public AI()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->mContext:Landroid/content/Context;

    const-string v1, "kingroot_android_adapt_request_received"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bbl;->z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public AJ()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->mContext:Landroid/content/Context;

    const-string v1, "kingroot_android_adapt_request_received"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bbl;->e(Landroid/content/Context;Ljava/lang/String;I)V

    .line 160
    return-void
.end method

.method public AK()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 169
    iget-object v1, p0, Lcom/kingroot/kinguser/akj;->avq:Lcom/kingroot/kinguser/bk;

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/kingroot/kinguser/akj;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/aju;->g(Landroid/content/Context;Z)Lcom/kingroot/kinguser/bk;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/akj;->avq:Lcom/kingroot/kinguser/bk;

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/akj;->avq:Lcom/kingroot/kinguser/bk;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingroot/kinguser/akj;->avq:Lcom/kingroot/kinguser/bk;

    iget-object v1, v1, Lcom/kingroot/kinguser/bk;->kw:Lcom/kingroot/kinguser/db;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingroot/kinguser/akj;->avq:Lcom/kingroot/kinguser/bk;

    iget-object v1, v1, Lcom/kingroot/kinguser/bk;->kx:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 176
    :cond_1
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/akj;->avq:Lcom/kingroot/kinguser/bk;

    iget-object v1, v1, Lcom/kingroot/kinguser/bk;->kw:Lcom/kingroot/kinguser/db;

    iput-object v1, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    .line 179
    iget-object v1, p0, Lcom/kingroot/kinguser/akj;->avq:Lcom/kingroot/kinguser/bk;

    iget-object v1, v1, Lcom/kingroot/kinguser/bk;->kx:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    .line 180
    iget-object v1, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/akj;->avu:I

    goto :goto_0
.end method

.method public AL()J
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    iget-object v0, v0, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    if-nez v0, :cond_1

    .line 192
    :cond_0
    const-wide/16 v0, 0x0

    .line 194
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    iget-object v0, v0, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    iget-wide v0, v0, Lcom/kingroot/kinguser/bi;->kr:J

    goto :goto_0
.end method

.method public AM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    iget-object v0, v0, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avr:Lcom/kingroot/kinguser/db;

    iget-object v0, v0, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    iget-object v0, v0, Lcom/kingroot/kinguser/bi;->ko:Ljava/lang/String;

    goto :goto_0
.end method

.method public AN()V
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/akj;->avx:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 266
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bk;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/kingroot/kinguser/akj;->avq:Lcom/kingroot/kinguser/bk;

    .line 258
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akj;->AK()Z

    .line 259
    return-void
.end method

.method public ak(J)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->mContext:Landroid/content/Context;

    const-string v1, "key_old_commit_count"

    invoke-static {v0, v1, p1, p2}, Lcom/kingroot/kinguser/bbl;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 71
    return-void
.end method

.method public al(J)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->mContext:Landroid/content/Context;

    const-string v1, "key_adapt_req_commit_timestamp"

    invoke-static {v0, v1, p1, p2}, Lcom/kingroot/kinguser/bbl;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 106
    return-void
.end method

.method public am(J)V
    .locals 1

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/kingroot/kinguser/akj;->avv:J

    .line 114
    return-void
.end method

.method public an(J)V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->mContext:Landroid/content/Context;

    const-string v1, "key_old_my_ranking"

    invoke-static {v0, v1, p1, p2}, Lcom/kingroot/kinguser/bbl;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 122
    return-void
.end method

.method public dV(I)J
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    .line 230
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    const-wide/16 v0, 0x0

    .line 234
    :goto_0
    return-wide v0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bi;

    iput-object v0, p0, Lcom/kingroot/kinguser/akj;->avt:Lcom/kingroot/kinguser/bi;

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avt:Lcom/kingroot/kinguser/bi;

    iget-wide v0, v0, Lcom/kingroot/kinguser/bi;->kq:J

    goto :goto_0
.end method

.method public dW(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    .line 239
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 240
    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bi;

    iput-object v0, p0, Lcom/kingroot/kinguser/akj;->avt:Lcom/kingroot/kinguser/bi;

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avt:Lcom/kingroot/kinguser/bi;

    iget-object v0, v0, Lcom/kingroot/kinguser/bi;->kp:Ljava/lang/String;

    goto :goto_0
.end method

.method public dX(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    .line 248
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bi;

    iput-object v0, p0, Lcom/kingroot/kinguser/akj;->avt:Lcom/kingroot/kinguser/bi;

    .line 252
    iget-object v0, p0, Lcom/kingroot/kinguser/akj;->avt:Lcom/kingroot/kinguser/bi;

    iget-object v0, v0, Lcom/kingroot/kinguser/bi;->ko:Ljava/lang/String;

    goto :goto_0
.end method
