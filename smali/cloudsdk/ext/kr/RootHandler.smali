.class public Lcloudsdk/ext/kr/RootHandler;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcloudsdk/ext/kr/RootConst;


# instance fields
.field private D:Lcloudsdk/ext/kr/ProgressHandler;

.field private E:Lcloudsdk/ext/kr/UiHandler;

.field private F:I

.field private G:Lcloudsdk/ext/kr/KrRootCallback;

.field private H:Landroid/os/Handler$Callback;

.field private mContext:Landroid/content/Context;

.field private s:Lcloudsdk/ext/kr/RootExtInfo;

.field private t:Lcloudsdk/ext/kr/RootExtInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcloudsdk/ext/kr/RootHandler;->F:I

    .line 248
    new-instance v0, Lcloudsdk/ext/kr/RootHandler$6;

    invoke-direct {v0, p0}, Lcloudsdk/ext/kr/RootHandler$6;-><init>(Lcloudsdk/ext/kr/RootHandler;)V

    iput-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->H:Landroid/os/Handler$Callback;

    .line 42
    iput-object p1, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcloudsdk/ext/kr/UiHandler;

    invoke-direct {v0, p1, p4}, Lcloudsdk/ext/kr/UiHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->E:Lcloudsdk/ext/kr/UiHandler;

    .line 44
    new-instance v0, Lcloudsdk/ext/kr/ProgressHandler;

    iget-object v1, p0, Lcloudsdk/ext/kr/RootHandler;->E:Lcloudsdk/ext/kr/UiHandler;

    invoke-direct {v0, p1, p3, v1}, Lcloudsdk/ext/kr/ProgressHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    .line 45
    return-void
.end method

.method private a(IZ)I
    .locals 6

    .prologue
    const v4, 0x13888

    const/4 v3, 0x1

    .line 164
    if-eqz p2, :cond_0

    .line 165
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->E:Lcloudsdk/ext/kr/UiHandler;

    const v1, 0x1388b

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/UiHandler;->sendEmptyMessage(I)Z

    .line 167
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string v1, "options"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcloudsdk/ext/kr/RootSdk;->c()Lcloudsdk/IModule;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcloudsdk/IModule;->execute(ILandroid/os/Bundle;)Lcloudsdk/IActionResult;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Lcloudsdk/IActionResult;->success()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    invoke-interface {v0}, Lcloudsdk/IActionResult;->getReply()Landroid/os/Bundle;

    move-result-object v3

    .line 173
    const-string v0, "mobileRootInfo"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcloudsdk/ext/kr/RootExtInfo;->valueOf(Landroid/os/Bundle;)Lcloudsdk/ext/kr/RootExtInfo;

    move-result-object v0

    iput-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    .line 174
    const-string v0, "pcRootInfo"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcloudsdk/ext/kr/RootExtInfo;->valueOf(Landroid/os/Bundle;)Lcloudsdk/ext/kr/RootExtInfo;

    move-result-object v0

    iput-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->t:Lcloudsdk/ext/kr/RootExtInfo;

    .line 175
    const-string v0, "solutionCount"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 178
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    iget-object v1, p0, Lcloudsdk/ext/kr/RootHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    iget-object v4, p0, Lcloudsdk/ext/kr/RootHandler;->t:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v0, v1, v4}, Lcloudsdk/ext/kr/ProgressHandler;->setRootInfo(Lcloudsdk/ext/kr/RootExtInfo;Lcloudsdk/ext/kr/RootExtInfo;)V

    .line 181
    const-wide/16 v0, 0x0

    .line 182
    iget-object v4, p0, Lcloudsdk/ext/kr/RootHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    if-eqz v4, :cond_1

    .line 183
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    iget v0, v0, Lcloudsdk/ext/kr/RootExtInfo;->useTime:I

    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    .line 185
    :cond_1
    iget-object v4, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v4, v0, v1}, Lcloudsdk/ext/kr/ProgressHandler;->setAvgTime(J)V

    .line 187
    if-eqz p2, :cond_2

    .line 188
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 189
    const v1, 0x1388c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 190
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 191
    iget-object v1, p0, Lcloudsdk/ext/kr/RootHandler;->E:Lcloudsdk/ext/kr/UiHandler;

    invoke-virtual {v1, v0}, Lcloudsdk/ext/kr/UiHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move v0, v2

    .line 207
    :goto_0
    return v0

    .line 197
    :cond_3
    invoke-interface {v0}, Lcloudsdk/IActionResult;->getErrorCode()I

    move-result v0

    .line 198
    const/16 v1, 0xfa4

    if-ne v0, v1, :cond_4

    .line 200
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcloudsdk/ext/kr/RootDao;->setToSettingNetwork(Z)V

    .line 201
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->E:Lcloudsdk/ext/kr/UiHandler;

    invoke-virtual {v0, v4}, Lcloudsdk/ext/kr/UiHandler;->sendEmptyMessage(I)Z

    .line 207
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 204
    :cond_4
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcloudsdk/ext/kr/RootDao;->setToSettingNetwork(Z)V

    .line 205
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->E:Lcloudsdk/ext/kr/UiHandler;

    invoke-virtual {v0, v4}, Lcloudsdk/ext/kr/UiHandler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method static synthetic a(Lcloudsdk/ext/kr/RootHandler;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcloudsdk/ext/kr/RootHandler;->F:I

    return p1
.end method

.method static synthetic a(Lcloudsdk/ext/kr/RootHandler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const v6, 0x13886

    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 314
    new-instance v0, Lcloudsdk/ext/kr/RootHandler$7;

    invoke-direct {v0, p0}, Lcloudsdk/ext/kr/RootHandler$7;-><init>(Lcloudsdk/ext/kr/RootHandler;)V

    .line 330
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcloudsdk/ext/kr/RootSdk;->c()Lcloudsdk/IModule;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v0}, Lcloudsdk/IModule;->execute(ILandroid/os/Bundle;Landroid/os/Handler$Callback;)Lcloudsdk/IActionResult;

    move-result-object v2

    .line 331
    invoke-interface {v2}, Lcloudsdk/IActionResult;->success()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 333
    invoke-interface {v2}, Lcloudsdk/IActionResult;->getReply()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "solutionCount"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 334
    iget-object v3, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v3, v2}, Lcloudsdk/ext/kr/ProgressHandler;->setSolutionCount(I)V

    .line 335
    if-lez v2, :cond_2

    .line 338
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 339
    const-string v3, "rmode"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v3

    invoke-virtual {v3}, Lcloudsdk/ext/kr/RootSdk;->c()Lcloudsdk/IModule;

    move-result-object v3

    const/16 v4, 0x8

    invoke-interface {v3, v4, v2, v0}, Lcloudsdk/IModule;->execute(ILandroid/os/Bundle;Landroid/os/Handler$Callback;)Lcloudsdk/IActionResult;

    move-result-object v2

    .line 341
    invoke-interface {v2}, Lcloudsdk/IActionResult;->getReply()Landroid/os/Bundle;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eqz v3, :cond_7

    .line 345
    const-string v3, "rootState"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 348
    :goto_0
    invoke-interface {v2}, Lcloudsdk/IActionResult;->success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->G:Lcloudsdk/ext/kr/KrRootCallback;

    invoke-interface {v2, v0}, Lcloudsdk/ext/kr/KrRootCallback;->verifyClientRootSuc(I)Z

    .line 353
    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v2, v0}, Lcloudsdk/ext/kr/ProgressHandler;->setRootState(I)V

    .line 354
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    sget-object v2, Lcloudsdk/ext/kr/ProgressHandler$a;->w:Lcloudsdk/ext/kr/ProgressHandler$a;

    invoke-virtual {v0, v2}, Lcloudsdk/ext/kr/ProgressHandler;->setIntervalMode(Lcloudsdk/ext/kr/ProgressHandler$a;)V

    .line 389
    :goto_1
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Lcloudsdk/ext/kr/RootDao;->setCurrStatus(II)V

    .line 411
    :goto_2
    return-void

    .line 358
    :cond_0
    if-ne v0, v7, :cond_1

    .line 360
    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->G:Lcloudsdk/ext/kr/KrRootCallback;

    invoke-interface {v2, v0}, Lcloudsdk/ext/kr/KrRootCallback;->verifyClientRootSuc(I)Z

    .line 361
    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v2, v0}, Lcloudsdk/ext/kr/ProgressHandler;->setRootState(I)V

    .line 362
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    sget-object v2, Lcloudsdk/ext/kr/ProgressHandler$a;->w:Lcloudsdk/ext/kr/ProgressHandler$a;

    invoke-virtual {v0, v2}, Lcloudsdk/ext/kr/ProgressHandler;->setIntervalMode(Lcloudsdk/ext/kr/ProgressHandler$a;)V

    goto :goto_1

    .line 364
    :cond_1
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0}, Lcloudsdk/ext/kr/ProgressHandler;->dismiss()V

    .line 365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 366
    const-string v2, "mobileRootInfo"

    iget-object v3, p0, Lcloudsdk/ext/kr/RootHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v3}, Lcloudsdk/ext/kr/RootExtInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 367
    const-string v2, "pcRootInfo"

    iget-object v3, p0, Lcloudsdk/ext/kr/RootHandler;->t:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v3}, Lcloudsdk/ext/kr/RootExtInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 368
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 369
    iput v6, v2, Landroid/os/Message;->what:I

    .line 370
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 371
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->E:Lcloudsdk/ext/kr/UiHandler;

    invoke-virtual {v0, v2}, Lcloudsdk/ext/kr/UiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 376
    :cond_2
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0}, Lcloudsdk/ext/kr/ProgressHandler;->dismiss()V

    .line 377
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 378
    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    if-eqz v2, :cond_3

    .line 379
    const-string v2, "mobileRootInfo"

    iget-object v3, p0, Lcloudsdk/ext/kr/RootHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v3}, Lcloudsdk/ext/kr/RootExtInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 381
    :cond_3
    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->t:Lcloudsdk/ext/kr/RootExtInfo;

    if-eqz v2, :cond_4

    .line 382
    const-string v2, "pcRootInfo"

    iget-object v3, p0, Lcloudsdk/ext/kr/RootHandler;->t:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v3}, Lcloudsdk/ext/kr/RootExtInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 384
    :cond_4
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 385
    iput v6, v2, Landroid/os/Message;->what:I

    .line 386
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 387
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->E:Lcloudsdk/ext/kr/UiHandler;

    invoke-virtual {v0, v2}, Lcloudsdk/ext/kr/UiHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 393
    :cond_5
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0}, Lcloudsdk/ext/kr/ProgressHandler;->dismiss()V

    .line 394
    invoke-interface {v2}, Lcloudsdk/IActionResult;->getErrorCode()I

    move-result v0

    .line 395
    const/16 v2, 0xfa4

    if-ne v0, v2, :cond_6

    .line 397
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcloudsdk/ext/kr/RootDao;->setToSettingNetwork(Z)V

    .line 398
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->E:Lcloudsdk/ext/kr/UiHandler;

    const v1, 0x13888

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/UiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 401
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 402
    const-string v2, "mobileRootInfo"

    iget-object v3, p0, Lcloudsdk/ext/kr/RootHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v3}, Lcloudsdk/ext/kr/RootExtInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 403
    const-string v2, "pcRootInfo"

    iget-object v3, p0, Lcloudsdk/ext/kr/RootHandler;->t:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v3}, Lcloudsdk/ext/kr/RootExtInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 404
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 405
    iput v6, v2, Landroid/os/Message;->what:I

    .line 406
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 407
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->E:Lcloudsdk/ext/kr/UiHandler;

    invoke-virtual {v0, v2}, Lcloudsdk/ext/kr/UiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Lcloudsdk/ext/kr/RootDao;->setCurrStatus(II)V

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcloudsdk/ext/kr/RootHandler;Lcloudsdk/ext/kr/ProgressHandler$a;I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 22
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/ProgressHandler;->resetData(Z)V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0, p1}, Lcloudsdk/ext/kr/ProgressHandler;->setIntervalMode(Lcloudsdk/ext/kr/ProgressHandler$a;)V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0}, Lcloudsdk/ext/kr/ProgressHandler;->notifyProgressUpdate()V

    if-ne p2, v5, :cond_1

    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootSdk;->c()Lcloudsdk/IModule;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcloudsdk/IModule;->execute(ILandroid/os/Bundle;)Lcloudsdk/IActionResult;

    move-result-object v0

    invoke-interface {v0}, Lcloudsdk/IActionResult;->success()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Lcloudsdk/IActionResult;->getReply()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "clientRootSuc"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->G:Lcloudsdk/ext/kr/KrRootCallback;

    invoke-interface {v0, v1}, Lcloudsdk/ext/kr/KrRootCallback;->verifyClientRootSuc(I)Z

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/ProgressHandler;->setRootState(I)V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    sget-object v2, Lcloudsdk/ext/kr/ProgressHandler$a;->w:Lcloudsdk/ext/kr/ProgressHandler$a;

    invoke-virtual {v0, v2}, Lcloudsdk/ext/kr/ProgressHandler;->setIntervalMode(Lcloudsdk/ext/kr/ProgressHandler$a;)V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcloudsdk/ext/kr/RootDao;->setCurrStatus(II)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, p2, v1}, Lcloudsdk/ext/kr/RootHandler;->a(IZ)I

    move-result v0

    if-ne p2, v5, :cond_2

    if-gtz v0, :cond_2

    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->t:Lcloudsdk/ext/kr/RootExtInfo;

    if-nez v2, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcloudsdk/ext/kr/RootHandler;->a(IZ)I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    invoke-direct {p0}, Lcloudsdk/ext/kr/RootHandler;->a()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v2}, Lcloudsdk/ext/kr/ProgressHandler;->dismiss()V

    if-eq v0, v4, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    if-eqz v2, :cond_4

    const-string v2, "mobileRootInfo"

    iget-object v3, p0, Lcloudsdk/ext/kr/RootHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v3}, Lcloudsdk/ext/kr/RootExtInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->t:Lcloudsdk/ext/kr/RootExtInfo;

    if-eqz v2, :cond_5

    const-string v2, "pcRootInfo"

    iget-object v3, p0, Lcloudsdk/ext/kr/RootHandler;->t:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v3}, Lcloudsdk/ext/kr/RootExtInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const v3, 0x13886

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->E:Lcloudsdk/ext/kr/UiHandler;

    invoke-virtual {v0, v2}, Lcloudsdk/ext/kr/UiHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcloudsdk/ext/kr/RootDao;->setCurrStatus(II)V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->G:Lcloudsdk/ext/kr/KrRootCallback;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->G:Lcloudsdk/ext/kr/KrRootCallback;

    const/4 v1, 0x1

    const-wide/32 v2, 0x57e40

    invoke-interface {v0, v1, v2, v3}, Lcloudsdk/ext/kr/KrRootCallback;->lockMainLifeLock(ZJ)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/WakeLockMgr;->lock(Landroid/content/Context;)V

    .line 297
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-static {}, Lcloudsdk/ext/kr/WakeLockMgr;->release()V

    .line 302
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->G:Lcloudsdk/ext/kr/KrRootCallback;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->G:Lcloudsdk/ext/kr/KrRootCallback;

    invoke-interface {v0, v4, v6, v7}, Lcloudsdk/ext/kr/KrRootCallback;->lockMainLifeLock(ZJ)V

    .line 306
    :cond_1
    return-void

    .line 299
    :catchall_0
    move-exception v0

    .line 300
    invoke-static {}, Lcloudsdk/ext/kr/WakeLockMgr;->release()V

    .line 302
    iget-object v1, p0, Lcloudsdk/ext/kr/RootHandler;->G:Lcloudsdk/ext/kr/KrRootCallback;

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcloudsdk/ext/kr/RootHandler;->G:Lcloudsdk/ext/kr/KrRootCallback;

    invoke-interface {v1, v4, v6, v7}, Lcloudsdk/ext/kr/KrRootCallback;->lockMainLifeLock(ZJ)V

    :cond_2
    throw v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 482
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0, v5}, Lcloudsdk/ext/kr/ProgressHandler;->resetData(Z)V

    .line 483
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    sget-object v1, Lcloudsdk/ext/kr/ProgressHandler$a;->v:Lcloudsdk/ext/kr/ProgressHandler$a;

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/ProgressHandler;->setIntervalMode(Lcloudsdk/ext/kr/ProgressHandler$a;)V

    .line 484
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0}, Lcloudsdk/ext/kr/ProgressHandler;->notifyProgressUpdate()V

    .line 486
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0, v4}, Lcloudsdk/ext/kr/ProgressHandler;->setRootStep(I)V

    .line 489
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootSdk;->getConfig()Lcloudsdk/ext/kr/RootInitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootInitConfig;->getKdPath()Ljava/lang/String;

    move-result-object v0

    .line 490
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 491
    const-string v2, "rmode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 492
    const-string v2, "backupRootPaths"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootSdk;->c()Lcloudsdk/IModule;

    move-result-object v0

    const/16 v2, 0x80

    iget-object v3, p0, Lcloudsdk/ext/kr/RootHandler;->H:Landroid/os/Handler$Callback;

    invoke-interface {v0, v2, v1, v3}, Lcloudsdk/IModule;->execute(ILandroid/os/Bundle;Landroid/os/Handler$Callback;)Lcloudsdk/IActionResult;

    move-result-object v0

    .line 494
    invoke-interface {v0}, Lcloudsdk/IActionResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->G:Lcloudsdk/ext/kr/KrRootCallback;

    invoke-interface {v0, v4}, Lcloudsdk/ext/kr/KrRootCallback;->verifyClientRootSuc(I)Z

    .line 498
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0, v4}, Lcloudsdk/ext/kr/ProgressHandler;->setRootState(I)V

    .line 499
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    sget-object v1, Lcloudsdk/ext/kr/ProgressHandler$a;->w:Lcloudsdk/ext/kr/ProgressHandler$a;

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/ProgressHandler;->setIntervalMode(Lcloudsdk/ext/kr/ProgressHandler$a;)V

    .line 501
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Lcloudsdk/ext/kr/RootDao;->setCurrStatus(II)V

    .line 509
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-direct {p0, v5, v4}, Lcloudsdk/ext/kr/RootHandler;->a(IZ)I

    move-result v0

    .line 506
    invoke-direct {p0, v0}, Lcloudsdk/ext/kr/RootHandler;->b(I)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 542
    if-lez p1, :cond_0

    .line 544
    invoke-direct {p0}, Lcloudsdk/ext/kr/RootHandler;->a()V

    .line 562
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0}, Lcloudsdk/ext/kr/ProgressHandler;->dismiss()V

    .line 548
    if-eq p1, v3, :cond_1

    .line 550
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 551
    const-string v1, "mobileRootInfo"

    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v2}, Lcloudsdk/ext/kr/RootExtInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 552
    const-string v1, "pcRootInfo"

    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->t:Lcloudsdk/ext/kr/RootExtInfo;

    invoke-virtual {v2}, Lcloudsdk/ext/kr/RootExtInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 553
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 554
    const v2, 0x13886

    iput v2, v1, Landroid/os/Message;->what:I

    .line 555
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 556
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->E:Lcloudsdk/ext/kr/UiHandler;

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/UiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 560
    :cond_1
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcloudsdk/ext/kr/RootDao;->setCurrStatus(II)V

    goto :goto_0
.end method

.method static synthetic b(Lcloudsdk/ext/kr/RootHandler;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0, v5}, Lcloudsdk/ext/kr/ProgressHandler;->resetData(Z)V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    sget-object v1, Lcloudsdk/ext/kr/ProgressHandler$a;->u:Lcloudsdk/ext/kr/ProgressHandler$a;

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/ProgressHandler;->setIntervalMode(Lcloudsdk/ext/kr/ProgressHandler$a;)V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0}, Lcloudsdk/ext/kr/ProgressHandler;->notifyProgressUpdate()V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0, v4}, Lcloudsdk/ext/kr/ProgressHandler;->setRootStep(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcloudsdk/ext/kr/RootSdk;->getConfig()Lcloudsdk/ext/kr/RootInitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcloudsdk/ext/kr/RootInitConfig;->getKdPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backupRootPaths"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rmode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcloudsdk/ext/kr/RootSdk;->c()Lcloudsdk/IModule;

    move-result-object v1

    const/16 v2, 0x80

    iget-object v3, p0, Lcloudsdk/ext/kr/RootHandler;->H:Landroid/os/Handler$Callback;

    invoke-interface {v1, v2, v0, v3}, Lcloudsdk/IModule;->execute(ILandroid/os/Bundle;Landroid/os/Handler$Callback;)Lcloudsdk/IActionResult;

    move-result-object v0

    invoke-interface {v0}, Lcloudsdk/IActionResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->G:Lcloudsdk/ext/kr/KrRootCallback;

    invoke-interface {v0, v4}, Lcloudsdk/ext/kr/KrRootCallback;->verifyClientRootSuc(I)Z

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0, v4}, Lcloudsdk/ext/kr/ProgressHandler;->setRootState(I)V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    sget-object v1, Lcloudsdk/ext/kr/ProgressHandler$a;->w:Lcloudsdk/ext/kr/ProgressHandler$a;

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/ProgressHandler;->setIntervalMode(Lcloudsdk/ext/kr/ProgressHandler$a;)V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Lcloudsdk/ext/kr/RootDao;->setCurrStatus(II)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v5, v4}, Lcloudsdk/ext/kr/RootHandler;->a(IZ)I

    move-result v0

    invoke-direct {p0, v0}, Lcloudsdk/ext/kr/RootHandler;->b(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcloudsdk/ext/kr/RootHandler;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcloudsdk/ext/kr/RootHandler;->b()V

    return-void
.end method

.method static synthetic d(Lcloudsdk/ext/kr/RootHandler;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 22
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootDao;->getPrevStatus()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0, v2}, Lcloudsdk/ext/kr/ProgressHandler;->resetData(Z)V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    sget-object v1, Lcloudsdk/ext/kr/ProgressHandler$a;->u:Lcloudsdk/ext/kr/ProgressHandler$a;

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/ProgressHandler;->setIntervalMode(Lcloudsdk/ext/kr/ProgressHandler$a;)V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0}, Lcloudsdk/ext/kr/ProgressHandler;->notifyProgressUpdate()V

    iput v3, p0, Lcloudsdk/ext/kr/RootHandler;->F:I

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcloudsdk/ext/kr/RootDao;->setCurrStatus(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcloudsdk/ext/kr/RootHandler;->a(IZ)I

    move-result v0

    invoke-direct {p0, v0}, Lcloudsdk/ext/kr/RootHandler;->b(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0, v2}, Lcloudsdk/ext/kr/ProgressHandler;->resetData(Z)V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    sget-object v1, Lcloudsdk/ext/kr/ProgressHandler$a;->v:Lcloudsdk/ext/kr/ProgressHandler$a;

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/ProgressHandler;->setIntervalMode(Lcloudsdk/ext/kr/ProgressHandler$a;)V

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    invoke-virtual {v0}, Lcloudsdk/ext/kr/ProgressHandler;->notifyProgressUpdate()V

    iput v4, p0, Lcloudsdk/ext/kr/RootHandler;->F:I

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcloudsdk/ext/kr/RootDao;->setCurrStatus(I)V

    invoke-direct {p0}, Lcloudsdk/ext/kr/RootHandler;->b()V

    goto :goto_0
.end method

.method static synthetic e(Lcloudsdk/ext/kr/RootHandler;)Lcloudsdk/ext/kr/ProgressHandler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->D:Lcloudsdk/ext/kr/ProgressHandler;

    return-object v0
.end method


# virtual methods
.method public getCurrStatusForKr()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcloudsdk/ext/kr/RootHandler;->F:I

    return v0
.end method

.method public getMobileRootInfo()Lcloudsdk/ext/kr/RootExtInfo;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->s:Lcloudsdk/ext/kr/RootExtInfo;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 57
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v1, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v1

    invoke-virtual {v1}, Lcloudsdk/ext/kr/RootDao;->getCurrStatus()I

    move-result v1

    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v2

    invoke-virtual {v2}, Lcloudsdk/ext/kr/RootDao;->getSolutionIndex()I

    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v2

    invoke-virtual {v2}, Lcloudsdk/ext/kr/RootDao;->getToSettingNetwork()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    iget-object v2, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcloudsdk/ext/kr/RootDao;->setToSettingNetwork(Z)V

    packed-switch v1, :pswitch_data_1

    const/4 v0, 0x3

    iput v0, p0, Lcloudsdk/ext/kr/RootHandler;->F:I

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcloudsdk/ext/kr/RootDao;->setCurrStatus(II)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcloudsdk/ext/kr/RootHandler;->a(IZ)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcloudsdk/ext/kr/RootHandler;->F:I

    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcloudsdk/ext/kr/RootDao;->setCurrStatus(II)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcloudsdk/ext/kr/RootHandler;->a(IZ)I

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcloudsdk/ext/kr/RootHandler$4;

    invoke-direct {v1, p0, v0}, Lcloudsdk/ext/kr/RootHandler$4;-><init>(Lcloudsdk/ext/kr/RootHandler;I)V

    invoke-direct {p0, v1}, Lcloudsdk/ext/kr/RootHandler;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcloudsdk/ext/kr/RootHandler$5;

    invoke-direct {v1, p0, v0}, Lcloudsdk/ext/kr/RootHandler$5;-><init>(Lcloudsdk/ext/kr/RootHandler;I)V

    invoke-direct {p0, v1}, Lcloudsdk/ext/kr/RootHandler;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 62
    :pswitch_4
    new-instance v0, Lcloudsdk/ext/kr/RootHandler$1;

    invoke-direct {v0, p0}, Lcloudsdk/ext/kr/RootHandler$1;-><init>(Lcloudsdk/ext/kr/RootHandler;)V

    invoke-direct {p0, v0}, Lcloudsdk/ext/kr/RootHandler;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 72
    :pswitch_5
    new-instance v0, Lcloudsdk/ext/kr/RootHandler$2;

    invoke-direct {v0, p0}, Lcloudsdk/ext/kr/RootHandler$2;-><init>(Lcloudsdk/ext/kr/RootHandler;)V

    invoke-direct {p0, v0}, Lcloudsdk/ext/kr/RootHandler;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 82
    :pswitch_6
    new-instance v0, Lcloudsdk/ext/kr/RootHandler$3;

    invoke-direct {v0, p0}, Lcloudsdk/ext/kr/RootHandler$3;-><init>(Lcloudsdk/ext/kr/RootHandler;)V

    invoke-direct {p0, v0}, Lcloudsdk/ext/kr/RootHandler;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 59
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setCurrStatusForKr(I)V
    .locals 0

    .prologue
    .line 565
    iput p1, p0, Lcloudsdk/ext/kr/RootHandler;->F:I

    .line 566
    return-void
.end method

.method public setOnRootListener(Lcloudsdk/ext/kr/OnRootListener;Lcloudsdk/ext/kr/KrRootCallback;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler;->E:Lcloudsdk/ext/kr/UiHandler;

    invoke-virtual {v0, p1}, Lcloudsdk/ext/kr/UiHandler;->setOnRootListener(Lcloudsdk/ext/kr/OnRootListener;)V

    .line 49
    iput-object p2, p0, Lcloudsdk/ext/kr/RootHandler;->G:Lcloudsdk/ext/kr/KrRootCallback;

    .line 50
    return-void
.end method
