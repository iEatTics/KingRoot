.class public Lcom/kingroot/kinguser/un;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IO:Ljava/lang/String;

.field private static final IP:Ljava/lang/String;

.field private static final IQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const-string v0, "ipme_44"

    :goto_0
    sput-object v0, Lcom/kingroot/kinguser/un;->IO:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qO()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "solo64"

    :goto_1
    sput-object v0, Lcom/kingroot/kinguser/un;->IP:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data-lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/un;->IQ:Ljava/lang/String;

    .line 52
    return-void

    .line 49
    :cond_0
    const-string v0, "ipme"

    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "solo"

    goto :goto_1
.end method

.method public static a(Lcom/kingroot/kinguser/um;)Lcom/kingroot/kinguser/ho;
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 265
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/um;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 312
    :goto_0
    return-object v0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/um;->IN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/um;->IN:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/um;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".so"

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/un;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    invoke-static {}, Lcom/kingroot/kinguser/agm;->vR()Lcom/kingroot/kinguser/agm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/agm;->fw(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/kingroot/kinguser/agm;->vR()Lcom/kingroot/kinguser/agm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agm;->vT()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/um;->IM:Ljava/lang/String;

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/um;->IH:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/um;->version:Ljava/lang/String;

    const-string v3, ".jar"

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/un;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    const-string v0, "system_server"

    .line 282
    const-string v0, "system_server"

    invoke-static {v0}, Lcom/kingroot/common/utils/system/ProcessUtils;->ej(Ljava/lang/String;)I

    move-result v0

    .line 284
    const-string v3, "system_server"

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/hv;->d(ILjava/lang/String;)Lcom/kingroot/kinguser/hh;

    move-result-object v3

    .line 285
    const-class v0, Lcom/kingroot/kinguser/hq;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hq;

    .line 287
    invoke-interface {v0, v5}, Lcom/kingroot/kinguser/hq;->K(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 288
    invoke-interface {v0, v5}, Lcom/kingroot/kinguser/hq;->start(I)I

    move-result v4

    .line 289
    if-eqz v4, :cond_3

    move-object v0, v1

    .line 290
    goto :goto_0

    .line 295
    :cond_3
    const-class v1, Lcom/kingroot/kinguser/hm;

    invoke-static {v1}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/hm;

    .line 296
    iget-object v4, p0, Lcom/kingroot/kinguser/um;->pkgName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 297
    new-instance v4, Lcom/kingroot/kinguser/un$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/un$1;-><init>(Lcom/kingroot/kinguser/um;)V

    invoke-interface {v1, v4}, Lcom/kingroot/kinguser/hm;->h(Ljava/util/List;)I

    .line 302
    :cond_4
    new-instance v1, Lcom/kingroot/kinguser/hw$a;

    invoke-direct {v1}, Lcom/kingroot/kinguser/hw$a;-><init>()V

    const-string v4, "v3"

    .line 303
    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/hw$a;->an(Ljava/lang/String;)Lcom/kingroot/kinguser/hw$a;

    move-result-object v1

    .line 304
    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/hw$a;->f(Z)Lcom/kingroot/kinguser/hw$a;

    move-result-object v1

    .line 305
    invoke-virtual {v1, v2, v5}, Lcom/kingroot/kinguser/hw$a;->b(Ljava/lang/String;I)Lcom/kingroot/kinguser/hw$a;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/um;->II:Ljava/lang/String;

    .line 306
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/hw$a;->ao(Ljava/lang/String;)Lcom/kingroot/kinguser/hw$a;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/um;->IJ:Ljava/lang/String;

    .line 307
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/hw$a;->ap(Ljava/lang/String;)Lcom/kingroot/kinguser/hw$a;

    move-result-object v1

    .line 308
    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/hw$a;->a(Lcom/kingroot/kinguser/hh;)Lcom/kingroot/kinguser/hw$a;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/um;->IM:Ljava/lang/String;

    .line 309
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/hw$a;->aq(Ljava/lang/String;)Lcom/kingroot/kinguser/hw$a;

    move-result-object v1

    .line 310
    invoke-virtual {v1}, Lcom/kingroot/kinguser/hw$a;->bg()Lcom/kingroot/kinguser/hi;

    move-result-object v1

    .line 311
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/hq;->a(Lcom/kingroot/kinguser/hi;)Lcom/kingroot/kinguser/ho;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, ""

    .line 111
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kingroot/kinguser/un;->IQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 80
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 89
    :cond_2
    :try_start_0
    invoke-static {p0, v2}, Lcom/kingroot/kinguser/rs;->e(Ljava/lang/String;Ljava/io/File;)V

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/kingroot/kinguser/un;->IQ:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/kingroot/kinguser/aas;->XY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_3
    const-string v3, "cat %s > %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v1, "chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 107
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 68
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method
