.class Lcom/kingroot/kinguser/bjs$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byE:Lcom/kingroot/kinguser/bjs;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjs;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/kingroot/kinguser/bjs$2;->byE:Lcom/kingroot/kinguser/bjs;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 19
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 205
    invoke-super/range {p0 .. p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 206
    const/4 v3, 0x0

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bjs$2;->byE:Lcom/kingroot/kinguser/bjs;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bjs;->ta()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 208
    invoke-interface/range {p1 .. p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v4

    .line 209
    if-eqz v4, :cond_11

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_11

    .line 210
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingroot/kinguser/adv$a;

    move-object v12, v3

    .line 213
    :goto_0
    if-eqz v2, :cond_e

    .line 214
    const-wide/16 v6, 0x0

    .line 215
    const/4 v5, 0x0

    .line 216
    const/4 v4, 0x0

    .line 217
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingroot/kinguser/aex$a;

    .line 219
    iget-boolean v10, v3, Lcom/kingroot/kinguser/aex$a;->afR:Z

    if-eqz v10, :cond_0

    .line 220
    iget-object v3, v3, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 225
    invoke-static {}, Lcom/kingroot/kinguser/bjs;->YX()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 325
    :cond_2
    :goto_3
    return-void

    .line 230
    :cond_3
    if-eqz v12, :cond_10

    .line 231
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    add-int/lit8 v8, v5, 0x1

    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v5

    const v10, 0x7f070097

    .line 232
    invoke-virtual {v5, v10}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x1

    new-array v11, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v5, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    if-nez v5, :cond_7

    iget-object v5, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    :goto_4
    aput-object v5, v11, v14

    .line 231
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v9, v8, v5}, Lcom/kingroot/kinguser/adv$a;->a(IILjava/lang/CharSequence;)V

    .line 235
    :goto_5
    const-wide/16 v10, 0x0

    .line 236
    new-instance v5, Ljava/io/File;

    iget-object v9, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appSourceDir:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 238
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 242
    :cond_4
    const/4 v5, 0x0

    .line 245
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingroot/kinguser/bjs$2;->byE:Lcom/kingroot/kinguser/bjs;

    invoke-static {v9}, Lcom/kingroot/kinguser/bjs;->a(Lcom/kingroot/kinguser/bjs;)Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

    move-result-object v9

    iget-object v14, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    iget v15, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    iget-object v0, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v14, v15, v0, v1}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Ljava/lang/String;ILjava/lang/String;Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$b;)I

    move-result v14

    .line 247
    if-nez v14, :cond_9

    .line 249
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    .line 250
    const/4 v9, 0x0

    .line 252
    :try_start_2
    iget-object v0, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    .line 254
    :goto_6
    if-eqz v9, :cond_5

    .line 255
    :try_start_3
    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/kingroot/kinguser/aff;->V(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x1

    .line 264
    :cond_5
    :goto_7
    if-eqz v5, :cond_6

    .line 265
    if-nez v14, :cond_b

    .line 266
    const/4 v5, 0x2

    iput v5, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    .line 270
    :goto_8
    add-long/2addr v6, v10

    .line 271
    add-int/lit8 v4, v4, 0x1

    :cond_6
    move v3, v4

    move v4, v8

    :goto_9
    move v5, v4

    move v4, v3

    .line 278
    goto/16 :goto_2

    .line 232
    :cond_7
    iget-object v5, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    goto :goto_4

    .line 255
    :cond_8
    const/4 v5, 0x0

    goto :goto_7

    .line 261
    :cond_9
    iget-object v5, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/kingroot/kinguser/aff;->eZ(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    goto :goto_7

    .line 268
    :cond_b
    const/4 v5, 0x1

    iput v5, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    .line 275
    :catch_0
    move-exception v3

    move v3, v8

    :goto_a
    move/from16 v18, v4

    move v4, v3

    move/from16 v3, v18

    goto :goto_9

    .line 280
    :cond_c
    if-eqz v12, :cond_d

    .line 281
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v8

    const v9, 0x7f07037c

    .line 282
    invoke-virtual {v8, v9}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v10

    .line 281
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-interface {v12, v3, v5, v4}, Lcom/kingroot/kinguser/adv$a;->a(IILjava/lang/CharSequence;)V

    .line 284
    :cond_d
    if-eqz v12, :cond_e

    .line 286
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f070098

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 290
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_f

    .line 292
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingroot/kinguser/bjs$2;->byE:Lcom/kingroot/kinguser/bjs;

    invoke-static {v8, v6, v7}, Lcom/kingroot/kinguser/bjs;->a(Lcom/kingroot/kinguser/bjs;J)Ljava/lang/String;

    move-result-object v6

    .line 294
    new-instance v7, Landroid/text/SpannableString;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 296
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const v9, 0x7f0e0068

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 297
    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x21

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 300
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v9

    const v10, 0x7f0c0002

    invoke-virtual {v9, v10}, Lcom/kingroot/kinguser/zi;->getInteger(I)I

    move-result v9

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 301
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 304
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const v9, 0x7f0e0104

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v8, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 305
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v7, v8, v3, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 307
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v8

    const v9, 0x7f0c0001

    invoke-virtual {v8, v9}, Lcom/kingroot/kinguser/zi;->getInteger(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct {v3, v8, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 308
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0x21

    invoke-virtual {v7, v3, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 310
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v8

    const v9, 0x7f0c0002

    invoke-virtual {v8, v9}, Lcom/kingroot/kinguser/zi;->getInteger(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-direct {v3, v8, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 311
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v8, 0x21

    invoke-virtual {v7, v3, v4, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 316
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v12, v2, v5, v7}, Lcom/kingroot/kinguser/adv$a;->b(IILjava/lang/CharSequence;)V

    .line 322
    :cond_e
    :goto_b
    sget-object v2, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 323
    const/4 v2, 0x0

    sput-object v2, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    goto/16 :goto_3

    .line 318
    :cond_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v12, v2, v5, v3}, Lcom/kingroot/kinguser/adv$a;->b(IILjava/lang/CharSequence;)V

    goto :goto_b

    .line 275
    :catch_1
    move-exception v3

    move v3, v5

    goto/16 :goto_a

    .line 253
    :catch_2
    move-exception v15

    goto/16 :goto_6

    :cond_10
    move v8, v5

    goto/16 :goto_5

    :cond_11
    move-object v12, v3

    goto/16 :goto_0
.end method
