.class Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 208
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 210
    iget-object v2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v2}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->c(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 214
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aps;->LI()Lcom/kingroot/kinguser/aor;

    move-result-object v2

    invoke-interface {v2}, Lcom/kingroot/kinguser/aor;->JY()Ljava/util/List;

    move-result-object v3

    .line 215
    invoke-static {}, Lcom/kingroot/kinguser/als;->Hi()Lcom/kingroot/kinguser/amt;

    move-result-object v2

    invoke-interface {v2}, Lcom/kingroot/kinguser/amt;->Hl()Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v4

    .line 216
    const/4 v2, 0x0

    .line 217
    if-eqz v4, :cond_1

    .line 218
    new-instance v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    invoke-direct {v2}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;-><init>()V

    .line 219
    iput v0, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    .line 220
    iget-object v5, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    iput-object v5, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    .line 221
    iget-object v5, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->describe:Ljava/lang/String;

    iput-object v5, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->softTitle:Ljava/lang/String;

    .line 222
    iget-object v5, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iput-object v5, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->pkgName:Ljava/lang/String;

    .line 223
    iget-object v5, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    iput-object v5, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->iconUrl:Ljava/lang/String;

    .line 224
    iget v5, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    iput v5, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->jumpType:I

    .line 225
    iput-object v4, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 226
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v5

    iget-object v4, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 227
    iput v6, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->aQX:I

    .line 231
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v4

    iget-object v5, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/akl;->gU(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 232
    iput-boolean v0, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmJ:Z

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->d(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->d(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    invoke-static {v3}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 240
    if-eqz v0, :cond_2

    .line 244
    if-eqz v2, :cond_3

    iget-object v5, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    iget-object v6, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->pkgName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 248
    :cond_3
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->Kn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 250
    new-instance v5, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    invoke-direct {v5}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;-><init>()V

    .line 251
    iget-object v6, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->mainTitle:Ljava/lang/String;

    iput-object v6, v5, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    .line 252
    iget-object v6, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->softTitle:Ljava/lang/String;

    iput-object v6, v5, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->softTitle:Ljava/lang/String;

    .line 253
    iget-object v6, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->iconUrl:Ljava/lang/String;

    iput-object v6, v5, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->iconUrl:Ljava/lang/String;

    .line 254
    iget-object v6, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    iput-object v6, v5, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->pkgName:Ljava/lang/String;

    .line 255
    iput-object v0, v5, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmL:Ljava/lang/Object;

    .line 256
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->yf()Z

    move-result v6

    if-nez v6, :cond_6

    .line 258
    const/4 v6, 0x3

    iput v6, v5, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    .line 259
    if-eqz v1, :cond_4

    .line 260
    iget-object v6, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v6}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->e(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v6

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->d(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 229
    :cond_5
    iput v7, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->aQX:I

    goto/16 :goto_0

    .line 265
    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v6}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->e(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v6

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    const/4 v0, 0x4

    iput v0, v5, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    .line 267
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->d(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070361

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->d(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/kingroot/kinguser/anf;->IU()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 277
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->f(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    if-nez v1, :cond_8

    .line 278
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {}, Lcom/kingroot/kinguser/alu;->Ho()Lcom/kingroot/kinguser/alu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/alu;->Hl()Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->a(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 281
    :cond_8
    if-eqz v2, :cond_9

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->f(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iget-object v3, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->pkgName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 282
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->f(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 283
    new-instance v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;-><init>()V

    .line 284
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->f(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->iconUrl:Ljava/lang/String;

    .line 285
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->f(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    .line 286
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->f(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->describe:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->softTitle:Ljava/lang/String;

    .line 287
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->f(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->pkgName:Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->f(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmL:Ljava/lang/Object;

    .line 289
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->f(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 290
    const/4 v1, 0x5

    iput v1, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    .line 291
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->d(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070486

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_9
    new-instance v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;-><init>(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 327
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    return-void
.end method
