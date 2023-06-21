.class public Lcom/kingroot/master/app/KUApplication;
.super Lcom/kingroot/common/app/KApplication;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/master/app/KUApplication$b;,
        Lcom/kingroot/master/app/KUApplication$a;
    }
.end annotation


# static fields
.field private static final bzx:Lcom/kingroot/kinguser/bed;

.field private static final bzy:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 190
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/master/app/KUApplication$1;

    invoke-direct {v3}, Lcom/kingroot/master/app/KUApplication$1;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/master/app/KUApplication;->bzx:Lcom/kingroot/kinguser/bed;

    .line 235
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/master/app/KUApplication$2;

    invoke-direct {v3}, Lcom/kingroot/master/app/KUApplication$2;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/master/app/KUApplication;->bzy:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/kingroot/common/app/KApplication;-><init>()V

    return-void
.end method

.method public static aeT()V
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/master/app/KUApplication;->bzy:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 233
    return-void
.end method

.method public static aeU()V
    .locals 5

    .prologue
    .line 252
    :try_start_0
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "databases"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const-string v4, "applib"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 264
    :cond_0
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->aeV()V

    goto :goto_0
.end method

.method public static aeV()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 273
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    .line 274
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 281
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xf

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    new-instance v0, Ljava/lang/String;

    const-string v3, "28726573756C743D607073207C206772657020726F6F74207C206772657020656D6461656D6F6E603B206172723D2824726573756C74293B206B696C6C202D3920247B6172725B315D7D29"

    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 285
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v0, Ljava/lang/String;

    const-string v3, "28726573756C743D607073207C206772657020726F6F74207C206772657020333630736775617264603B206172723D2824726573756C74293B206B696C6C202D3920247B6172725B315D7D3B206B696C6C202D3920247B6172725B31305D7D29"

    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 290
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    new-instance v0, Ljava/lang/String;

    const-string v4, "656D6461656D6F6E"

    invoke-static {v4}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v0, Ljava/lang/String;

    const-string v4, "333630736775617264"

    invoke-static {v4}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Ljava/lang/String;

    const-string v4, "2F73797374656D2F62696E2F33363073"

    invoke-static {v4}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {}, Lcom/kingroot/common/utils/system/ProcessUtils;->qJ()Ljava/util/List;

    move-result-object v0

    .line 297
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 299
    iget v5, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->ppid:I

    if-eq v5, v7, :cond_1

    .line 302
    iget v5, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    if-nez v5, :cond_1

    .line 305
    iget-object v5, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 308
    iget-object v5, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kill -9 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 316
    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v3, "2F73797374656D2F62696E2F33363073"

    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 317
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->canExecute()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 319
    sget-object v3, Lcom/kingroot/kinguser/aas;->XR:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 0644 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_3
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0
.end method

.method public static aeW()Z
    .locals 2

    .prologue
    .line 334
    new-instance v0, Ljava/lang/String;

    const-string v1, "2F73797374656D2F62696E2F33363073"

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 335
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic aeX()Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/kingroot/master/app/KUApplication;->bzx:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method


# virtual methods
.method protected it()Lcom/kingroot/kinguser/ri;
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->aY()Ljava/lang/String;

    move-result-object v1

    .line 94
    const/4 v0, 0x0

    .line 96
    if-eqz v1, :cond_0

    .line 97
    const-string v2, ":service"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    new-instance v0, Lcom/kingroot/kinguser/bld;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bld;-><init>()V

    .line 106
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/kingroot/kinguser/bky;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bky;-><init>()V

    .line 110
    :cond_1
    return-object v0

    .line 99
    :cond_2
    const-string v2, ":task"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    new-instance v0, Lcom/kingroot/kinguser/blf;

    invoke-direct {v0}, Lcom/kingroot/kinguser/blf;-><init>()V

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/kingroot/master/app/KUApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    new-instance v0, Lcom/kingroot/kinguser/blb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/blb;-><init>()V

    goto :goto_0
.end method

.method public iu()Lcom/kingroot/common/app/KApplication$b;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/kingroot/master/app/KUApplication$a;

    invoke-direct {v0, p0}, Lcom/kingroot/master/app/KUApplication$a;-><init>(Lcom/kingroot/master/app/KUApplication;)V

    .line 83
    const/4 v1, 0x2

    const-string v2, "com.kingroot.kingusesr.mpstorage"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/common/app/KApplication$b;->k(ILjava/lang/String;)V

    .line 86
    const-string v1, "com.kingroot.kingusesr.taskprovider"

    invoke-virtual {v0, v1}, Lcom/kingroot/common/app/KApplication$b;->cl(Ljava/lang/String;)V

    .line 87
    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 61
    :try_start_0
    new-instance v0, Lcom/kingroot/master/app/KUApplication$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/master/app/KUApplication$b;-><init>(Lcom/kingroot/master/app/KUApplication$1;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    const-string v0, "191240FCB048127DB9110D1B30537FDE"

    const-string v1, "7CC749CFC0FB5677E6ABA342EDBDBA5A"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/rj;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/apw;->LR()V

    .line 70
    invoke-super {p0}, Lcom/kingroot/common/app/KApplication;->onCreate()V

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/afr;->vq()V

    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/akh;->At()V

    .line 76
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 348
    if-eqz p1, :cond_1

    const-string v1, "com.coloros.safe.service.framework"

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 353
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Lcom/kingroot/common/app/KApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ih()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    throw v1
.end method
