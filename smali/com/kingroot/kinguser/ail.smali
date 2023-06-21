.class public Lcom/kingroot/kinguser/ail;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile arG:Lcom/kingroot/kinguser/ail;


# instance fields
.field private arB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private arC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aka;",
            ">;"
        }
    .end annotation
.end field

.field private arD:Ljava/lang/String;

.field private arE:Ljava/lang/String;

.field private arF:Ljava/lang/String;

.field private arH:Ljava/lang/String;

.field private arI:Ljava/lang/String;

.field private arJ:Lcom/kingroot/kinguser/bed;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ail;->arB:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ail;->arC:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/lang/String;

    const-string v1, "2F73797374656D2F62696E2F33363073"

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ail;->arD:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/String;

    const-string v1, "656D6461656D6F6E"

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ail;->arE:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/String;

    const-string v1, "333630736775617264"

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ail;->arF:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ail;->arH:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ail;->arI:Ljava/lang/String;

    .line 320
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ail$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/ail$1;-><init>(Lcom/kingroot/kinguser/ail;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ail;->arJ:Lcom/kingroot/kinguser/bed;

    .line 76
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ail;->init()V

    .line 77
    return-void
.end method

.method private X(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 190
    const/4 v1, 0x0

    .line 191
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 201
    :cond_1
    :goto_0
    return v0

    .line 195
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private a(ILcom/kingroot/kinguser/aka;)V
    .locals 9

    .prologue
    const/16 v7, 0x63

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->zP()I

    move-result v3

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    if-eq v3, v7, :cond_0

    if-nez v3, :cond_4

    .line 230
    :cond_0
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 231
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 232
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->zS()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 233
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->zT()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 234
    const/4 v5, 0x3

    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->zU()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 236
    if-ne v3, v7, :cond_3

    .line 237
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->zR()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->Aa()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    :goto_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v3, p0, Lcom/kingroot/kinguser/ail;->arH:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    if-ne p1, v8, :cond_6

    :goto_2
    invoke-virtual {v3, v2, v0}, Lcom/kingroot/kinguser/ady;->i(Ljava/util/List;Z)V

    .line 263
    :cond_2
    return-void

    .line 239
    :cond_3
    if-nez v3, :cond_1

    .line 240
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->dG()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->lk()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_4
    if-ne v3, v0, :cond_2

    .line 247
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->Ac()Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v3

    .line 248
    if-nez v3, :cond_5

    .line 249
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    :cond_5
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->Ac()Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v3

    iget v3, v3, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->Ac()Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v3

    iget v3, v3, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p2}, Lcom/kingroot/kinguser/aka;->Ac()Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v3

    iget v3, v3, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->ppid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move v0, v1

    .line 261
    goto :goto_2
.end method

.method private a(Lcom/kingroot/kinguser/aka;)V
    .locals 1

    .prologue
    .line 127
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;-><init>()V

    .line 128
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->e(Lcom/kingroot/kinguser/aka;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Lcom/kingroot/kinguser/aka;)V
    .locals 3

    .prologue
    .line 139
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ail;->d(Lcom/kingroot/kinguser/aka;)V

    .line 141
    const-string v0, "sh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/abj;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 142
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 143
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/aka;->gE(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Lcom/kingroot/kinguser/aka;)V
    .locals 1

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ail;->arB:Ljava/util/List;

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Lcom/kingroot/common/utils/system/ProcessUtils;->qJ()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ail;->arB:Ljava/util/List;

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ail;->fZ(Ljava/lang/String;)Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/aka;->a(Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Lcom/kingroot/kinguser/aka;)V
    .locals 7

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v0

    .line 207
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/zn;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/zn$a;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget v1, v0, Lcom/kingroot/kinguser/zn$a;->WN:I

    iget v2, v0, Lcom/kingroot/kinguser/zn$a;->WO:I

    iget v3, v0, Lcom/kingroot/kinguser/zn$a;->mode:I

    iget-wide v4, v0, Lcom/kingroot/kinguser/zn$a;->size:J

    iget-object v6, v0, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;->a(IIIJLjava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method

.method private fZ(Ljava/lang/String;)Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;
    .locals 4

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/ail;->arB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 172
    iget-object v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/kingroot/kinguser/ail;->X(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static xT()Lcom/kingroot/kinguser/ail;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/kingroot/kinguser/ail;->arG:Lcom/kingroot/kinguser/ail;

    if-nez v0, :cond_1

    .line 66
    const-class v1, Lcom/kingroot/kinguser/ail;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ail;->arG:Lcom/kingroot/kinguser/ail;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/kingroot/kinguser/ail;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ail;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ail;->arG:Lcom/kingroot/kinguser/ail;

    .line 70
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ail;->arG:Lcom/kingroot/kinguser/ail;

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public dA(I)V
    .locals 4

    .prologue
    .line 309
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/kinguser/ail;->xT()Lcom/kingroot/kinguser/ail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ail;->xU()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ail;->dz(I)V

    .line 312
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->he(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bn(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected dz(I)V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/ail;->arC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aka;

    .line 104
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aka;->Ab()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aka;->zN()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    :cond_1
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aka;->zP()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_3

    .line 106
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ail;->a(Lcom/kingroot/kinguser/aka;)V

    .line 107
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aka;->zR()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/ail;->arH:Ljava/lang/String;

    .line 115
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aka;->zP()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aka;->zN()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/ail;->a(ILcom/kingroot/kinguser/aka;)V

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aka;->zP()I

    move-result v2

    if-nez v2, :cond_4

    .line 109
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ail;->b(Lcom/kingroot/kinguser/aka;)V

    goto :goto_1

    .line 110
    :cond_4
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aka;->zP()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 111
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ail;->c(Lcom/kingroot/kinguser/aka;)V

    goto :goto_1

    .line 120
    :cond_5
    return-void
.end method

.method protected init()V
    .locals 8

    .prologue
    const/16 v5, 0x1ed

    const/4 v3, 0x0

    .line 81
    iget-object v7, p0, Lcom/kingroot/kinguser/ail;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    invoke-static {}, Lcom/kingroot/kinguser/ajg;->zi()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x63

    const-string v6, "u:object_r:system_file:s0"

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v7, p0, Lcom/kingroot/kinguser/ail;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    iget-object v1, p0, Lcom/kingroot/kinguser/ail;->arD:Ljava/lang/String;

    const-string v6, "u:object_r:system_file:s0"

    move v2, v3

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public p(IZ)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 277
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Eu()Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/kinguser/ail;->xT()Lcom/kingroot/kinguser/ail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ail;->xU()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    if-nez p1, :cond_3

    move p2, v6

    move p1, v6

    .line 287
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 288
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ail;->arJ:Lcom/kingroot/kinguser/bed;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 298
    :cond_1
    :goto_1
    return-void

    .line 290
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 291
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ev()J

    move-result-wide v0

    .line 292
    const-wide/32 v4, 0x5265c00

    .line 293
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ail;->arJ:Lcom/kingroot/kinguser/bed;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move p2, v6

    goto :goto_0
.end method

.method public xU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/ail;->arD:Ljava/lang/String;

    return-object v0
.end method
