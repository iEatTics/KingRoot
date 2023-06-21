.class public final Lcom/kingroot/kinguser/aif;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;Ljava/io/File;Lcom/kingroot/kinguser/cx;)Z
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 218
    .line 219
    invoke-static {p0}, Lcom/kingroot/kinguser/aif;->fV(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    .line 227
    :goto_0
    if-eqz v3, :cond_7

    .line 228
    const-string v0, ""

    .line 230
    invoke-static {}, Lcom/kingroot/kinguser/ajj;->zl()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-static {v4}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v3

    .line 242
    if-nez v3, :cond_1

    .line 244
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v3

    .line 248
    :cond_1
    if-eqz v3, :cond_4

    .line 250
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aif;->c(Lcom/kingroot/kinguser/abc;)V

    .line 273
    :goto_1
    iput-object v4, p2, Lcom/kingroot/kinguser/cx;->mK:Ljava/lang/String;

    .line 274
    iput v1, p2, Lcom/kingroot/kinguser/cx;->mF:I

    .line 278
    :goto_2
    return v2

    .line 223
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 224
    :catch_0
    move-exception v3

    move v3, v0

    goto :goto_0

    .line 256
    :cond_3
    const/4 v1, 0x4

    goto :goto_1

    .line 260
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    const/4 v0, 0x2

    .line 262
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v3

    .line 263
    if-eqz v3, :cond_5

    .line 265
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aif;->c(Lcom/kingroot/kinguser/abc;)V

    move v0, v1

    :cond_5
    move v1, v0

    .line 269
    goto :goto_1

    :cond_6
    move v1, v2

    .line 270
    goto :goto_1

    :cond_7
    move v2, v0

    .line 278
    goto :goto_2
.end method

.method private static c(Lcom/kingroot/kinguser/abc;)V
    .locals 3

    .prologue
    .line 282
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cq()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cq()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->ei(I)V

    .line 287
    invoke-static {p0}, Lcom/kingroot/kinguser/aio;->d(Lcom/kingroot/kinguser/abc;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Co()V

    .line 291
    :cond_0
    return-void
.end method

.method public static dx(I)Lcom/kingroot/kinguser/cd;
    .locals 4

    .prologue
    .line 125
    new-instance v0, Lcom/kingroot/kinguser/cd;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cd;-><init>()V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/cd;->time:J

    .line 127
    invoke-static {p0}, Lcom/kingroot/kinguser/aif;->dy(I)Lcom/kingroot/kinguser/cx;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/cd;->ly:Lcom/kingroot/kinguser/cx;

    .line 128
    invoke-static {}, Lcom/kingroot/kinguser/aif;->xz()Lcom/kingroot/kinguser/ce;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/cd;->lz:Lcom/kingroot/kinguser/ce;

    .line 129
    return-object v0
.end method

.method private static dy(I)Lcom/kingroot/kinguser/cx;
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    new-instance v4, Lcom/kingroot/kinguser/cx;

    invoke-direct {v4}, Lcom/kingroot/kinguser/cx;-><init>()V

    .line 150
    iput p0, v4, Lcom/kingroot/kinguser/cx;->lP:I

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/wb;->ne()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iput v0, v4, Lcom/kingroot/kinguser/cx;->mE:I

    .line 154
    iput v2, v4, Lcom/kingroot/kinguser/cx;->mF:I

    .line 155
    iput v2, v4, Lcom/kingroot/kinguser/cx;->mH:I

    .line 156
    const-string v0, ""

    iput-object v0, v4, Lcom/kingroot/kinguser/cx;->mI:Ljava/lang/String;

    .line 157
    const-string v0, ""

    iput-object v0, v4, Lcom/kingroot/kinguser/cx;->mJ:Ljava/lang/String;

    .line 158
    const-string v0, ""

    iput-object v0, v4, Lcom/kingroot/kinguser/cx;->mK:Ljava/lang/String;

    .line 160
    const-wide/16 v6, 0xbb8

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v3

    const/16 v5, 0xe

    if-lt v3, v5, :cond_0

    .line 165
    new-instance v3, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v5, "sud"

    const-string v8, "ku.sud --ping"

    invoke-direct {v3, v5, v8, v6, v7}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    new-instance v5, Ljava/io/File;

    sget-object v3, Lcom/kingroot/kinguser/bha;->bpu:Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    new-instance v3, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v8, "bin"

    const-string v9, "ls -l %s"

    new-array v10, v1, [Ljava/lang/Object;

    sget-object v11, Lcom/kingroot/kinguser/bha;->bpu:Ljava/lang/String;

    aput-object v11, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9, v6, v7}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    new-instance v8, Ljava/io/File;

    sget-object v3, Lcom/kingroot/kinguser/bha;->bpv:Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    new-instance v3, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v9, "xbin"

    const-string v10, "ls -l %s"

    new-array v11, v1, [Ljava/lang/Object;

    sget-object v12, Lcom/kingroot/kinguser/bha;->bpv:Ljava/lang/String;

    aput-object v12, v11, v2

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v9, v10, v6, v7}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 179
    :cond_3
    new-instance v3, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v9, "v"

    const-string v10, "su -v"

    invoke-direct {v3, v9, v10, v6, v7}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v3, Lcom/kingroot/common/utils/system/VTCommand;

    const-string v9, "V"

    const-string v10, "su -V"

    invoke-direct {v3, v9, v10, v6, v7}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_4
    const-string v3, "sh"

    invoke-static {v3, v0}, Lcom/kingroot/kinguser/abj;->b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move v3, v2

    .line 186
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 187
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 188
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    if-nez v7, :cond_6

    move v0, v3

    .line 186
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    move v0, v2

    .line 153
    goto/16 :goto_0

    .line 192
    :cond_6
    iget-object v7, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    const-string v9, "bin"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 193
    if-nez v3, :cond_b

    .line 194
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-static {v0, v5, v4}, Lcom/kingroot/kinguser/aif;->a(Ljava/lang/String;Ljava/io/File;Lcom/kingroot/kinguser/cx;)Z

    move-result v3

    move v0, v3

    goto :goto_2

    .line 196
    :cond_7
    iget-object v7, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    const-string v9, "xbin"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 197
    if-nez v3, :cond_b

    .line 198
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-static {v0, v8, v4}, Lcom/kingroot/kinguser/aif;->a(Ljava/lang/String;Ljava/io/File;Lcom/kingroot/kinguser/cx;)Z

    move-result v3

    move v0, v3

    goto :goto_2

    .line 200
    :cond_8
    iget-object v7, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    const-string v9, "v"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 201
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v7, "\n"

    const-string v9, ""

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/kingroot/kinguser/cx;->mI:Ljava/lang/String;

    move v0, v3

    goto :goto_2

    .line 202
    :cond_9
    iget-object v7, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    const-string v9, "V"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 203
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v7, "\n"

    const-string v9, ""

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/kingroot/kinguser/cx;->mJ:Ljava/lang/String;

    move v0, v3

    goto :goto_2

    .line 205
    :cond_a
    iget-object v7, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    const-string v9, "sud"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 206
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v7, "kinguser_su"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 207
    iput v1, v4, Lcom/kingroot/kinguser/cx;->mH:I

    :cond_b
    move v0, v3

    goto/16 :goto_2

    .line 212
    :cond_c
    return-object v4
.end method

.method private static fV(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 294
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 295
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 297
    :cond_0
    return v0
.end method

.method public static m(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/cd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0}, Lcom/kingroot/kinguser/aif;->n(Ljava/util/ArrayList;)V

    .line 56
    invoke-static {p0}, Lcom/kingroot/kinguser/aif;->o(Ljava/util/ArrayList;)V

    .line 57
    return-void
.end method

.method private static n(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/cd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cd;

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v3, v0, Lcom/kingroot/kinguser/cd;->ly:Lcom/kingroot/kinguser/cx;

    .line 75
    iget-object v4, v0, Lcom/kingroot/kinguser/cd;->lz:Lcom/kingroot/kinguser/ce;

    .line 76
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 77
    iget-wide v6, v0, Lcom/kingroot/kinguser/cd;->time:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget v0, v4, Lcom/kingroot/kinguser/ce;->lC:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget v0, v3, Lcom/kingroot/kinguser/cx;->lP:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget v0, v3, Lcom/kingroot/kinguser/cx;->mE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget v0, v3, Lcom/kingroot/kinguser/cx;->mF:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget v0, v3, Lcom/kingroot/kinguser/cx;->mH:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, v3, Lcom/kingroot/kinguser/cx;->mI:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, v3, Lcom/kingroot/kinguser/cx;->mJ:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, v3, Lcom/kingroot/kinguser/cx;->mK:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->W(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static o(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/cd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ih()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    return-void

    .line 98
    :cond_1
    const-string v0, "KuStatus"

    .line 100
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cs()I

    .line 102
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 103
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cd;

    .line 104
    iget-wide v2, v0, Lcom/kingroot/kinguser/cd;->time:J

    .line 106
    iget-object v2, v0, Lcom/kingroot/kinguser/cd;->ly:Lcom/kingroot/kinguser/cx;

    .line 114
    iget-object v0, v0, Lcom/kingroot/kinguser/cd;->lz:Lcom/kingroot/kinguser/ce;

    .line 102
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static xz()Lcom/kingroot/kinguser/ce;
    .locals 4

    .prologue
    .line 134
    new-instance v1, Lcom/kingroot/kinguser/ce;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ce;-><init>()V

    .line 135
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cm()I

    move-result v0

    .line 138
    const-string v2, "/system"

    invoke-static {v2}, Lcom/kingroot/kinguser/aaw;->dU(Ljava/lang/String;)I

    move-result v2

    .line 139
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 141
    or-int/lit8 v0, v0, 0x4

    .line 144
    :cond_0
    iput v0, v1, Lcom/kingroot/kinguser/ce;->lC:I

    .line 145
    return-object v1
.end method
