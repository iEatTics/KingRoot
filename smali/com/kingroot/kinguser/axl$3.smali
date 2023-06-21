.class Lcom/kingroot/kinguser/axl$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axl;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/kingroot/kinguser/axl$3;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 221
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 222
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 224
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 225
    const-string v0, "MM-dd HH:mm:ss"

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 227
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbo;->getLogs()Ljava/util/List;

    move-result-object v8

    .line 228
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 230
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 232
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_5

    .line 233
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    .line 236
    const/4 v3, 0x0

    .line 239
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/axl$3;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-static {v1}, Lcom/kingroot/kinguser/axl;->f(Lcom/kingroot/kinguser/axl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 240
    iget-object v1, p0, Lcom/kingroot/kinguser/axl$3;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-static {v1}, Lcom/kingroot/kinguser/axl;->f(Lcom/kingroot/kinguser/axl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/aub;

    .line 241
    iget-object v1, v1, Lcom/kingroot/kinguser/aub;->appName:Ljava/lang/String;

    iget-object v10, v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    const/4 v1, 0x1

    .line 248
    :goto_2
    if-nez v1, :cond_0

    .line 249
    new-instance v2, Lcom/kingroot/kinguser/aub;

    invoke-direct {v2}, Lcom/kingroot/kinguser/aub;-><init>()V

    .line 251
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    iget-object v3, v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->adZ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zh;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/aub;->amD:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_3
    iget-object v1, v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mAppName:Ljava/lang/String;

    iput-object v1, v2, Lcom/kingroot/kinguser/aub;->appName:Ljava/lang/String;

    .line 256
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v3, 0x7f070201

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/aub;->action:Ljava/lang/String;

    .line 257
    const/16 v1, 0x41

    iput v1, v2, Lcom/kingroot/kinguser/aub;->visible:I

    .line 258
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/kingroot/kinguser/aub;->aQT:Z

    .line 260
    const-string v1, ""

    iput-object v1, v2, Lcom/kingroot/kinguser/aub;->alY:Ljava/lang/String;

    .line 261
    const-string v1, ""

    iput-object v1, v2, Lcom/kingroot/kinguser/aub;->time:Ljava/lang/String;

    .line 262
    const/4 v1, 0x0

    iput v1, v2, Lcom/kingroot/kinguser/aub;->aQU:I

    .line 263
    const/4 v1, 0x0

    iput v1, v2, Lcom/kingroot/kinguser/aub;->aQV:I

    .line 264
    iget-object v1, p0, Lcom/kingroot/kinguser/axl$3;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-static {v1}, Lcom/kingroot/kinguser/axl;->f(Lcom/kingroot/kinguser/axl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    new-instance v2, Lcom/kingroot/kinguser/aub;

    invoke-direct {v2}, Lcom/kingroot/kinguser/aub;-><init>()V

    .line 270
    iget-object v1, v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mAppName:Ljava/lang/String;

    iput-object v1, v2, Lcom/kingroot/kinguser/aub;->appName:Ljava/lang/String;

    .line 271
    iget v1, v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 272
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v3, 0x7f0701ff

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v2, Lcom/kingroot/kinguser/aub;->action:Ljava/lang/String;

    .line 273
    iget v1, v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 274
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v3, 0x7f0701ff

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/aub;->action:Ljava/lang/String;

    .line 275
    const/4 v1, 0x1

    iput v1, v2, Lcom/kingroot/kinguser/aub;->aQU:I

    .line 276
    const/4 v1, 0x0

    iput v1, v2, Lcom/kingroot/kinguser/aub;->aQV:I

    .line 282
    :goto_5
    const/4 v1, 0x4

    iput v1, v2, Lcom/kingroot/kinguser/aub;->visible:I

    .line 283
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/kingroot/kinguser/aub;->aQT:Z

    .line 285
    new-instance v1, Ljava/util/Date;

    iget-wide v10, v0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mTime:J

    invoke-direct {v1, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 286
    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/kingroot/kinguser/axl$3;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-static {v1, v0, v7}, Lcom/kingroot/kinguser/axl;->a(Lcom/kingroot/kinguser/axl;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/aub;->alY:Ljava/lang/String;

    .line 288
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingroot/kinguser/aub;->time:Ljava/lang/String;

    .line 290
    iget-object v0, v2, Lcom/kingroot/kinguser/aub;->appName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 291
    if-eqz v0, :cond_4

    .line 292
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lcom/kingroot/kinguser/aub;->index:I

    .line 232
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto/16 :goto_0

    .line 239
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 252
    :catch_0
    move-exception v1

    .line 253
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 272
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v3, 0x7f070200

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 278
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v3, 0x7f070200

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/kingroot/kinguser/aub;->action:Ljava/lang/String;

    .line 279
    const/4 v1, 0x0

    iput v1, v2, Lcom/kingroot/kinguser/aub;->aQU:I

    .line 280
    const/4 v1, 0x1

    iput v1, v2, Lcom/kingroot/kinguser/aub;->aQV:I

    goto :goto_5

    .line 294
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v1, v2, Lcom/kingroot/kinguser/aub;->appName:Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 301
    :cond_5
    const/4 v0, 0x0

    move v2, v0

    :goto_7
    iget-object v0, p0, Lcom/kingroot/kinguser/axl$3;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-static {v0}, Lcom/kingroot/kinguser/axl;->f(Lcom/kingroot/kinguser/axl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 302
    iget-object v0, p0, Lcom/kingroot/kinguser/axl$3;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-static {v0}, Lcom/kingroot/kinguser/axl;->f(Lcom/kingroot/kinguser/axl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aub;

    .line 303
    iget-object v1, v0, Lcom/kingroot/kinguser/aub;->appName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 304
    if-eqz v1, :cond_6

    .line 305
    iget-object v3, p0, Lcom/kingroot/kinguser/axl$3;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-static {v3, v2, v1, v0}, Lcom/kingroot/kinguser/axl;->a(Lcom/kingroot/kinguser/axl;ILjava/util/List;Lcom/kingroot/kinguser/aub;)V

    .line 306
    new-instance v3, Lcom/kingroot/kinguser/yn$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct {v3, v0, v4, v6}, Lcom/kingroot/kinguser/yn$b;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget v0, v0, Lcom/kingroot/kinguser/aub;->visible:I

    and-int/lit8 v0, v0, 0x40

    .line 310
    if-gtz v0, :cond_6

    .line 311
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aub;

    .line 312
    new-instance v3, Lcom/kingroot/kinguser/yn$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/kingroot/kinguser/yn$b;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 301
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 319
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/axl$3;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/axl;->j(Ljava/lang/Object;)V

    .line 320
    return-void

    :cond_8
    move v1, v3

    goto/16 :goto_2
.end method
