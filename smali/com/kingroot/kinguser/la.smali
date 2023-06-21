.class public Lcom/kingroot/kinguser/la;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/hm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/la$a;
    }
.end annotation


# static fields
.field private static final uB:Lcom/kingroot/kinguser/la;

.field private static uE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/daemon/RunningAppProcessInfoLite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private uC:Ljava/lang/String;

.field private uD:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uF:Landroid/os/IBinder;

.field private uG:Lcom/kingroot/kinguser/la$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/kingroot/kinguser/la;

    invoke-direct {v0}, Lcom/kingroot/kinguser/la;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/la;->uB:Lcom/kingroot/kinguser/la;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/la;->uE:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/la;->uD:Ljava/util/Set;

    .line 77
    return-void
.end method

.method private a(Lcom/kingroot/kinguser/ns;)I
    .locals 2

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 430
    if-nez v0, :cond_0

    .line 431
    const v0, 0x4000002

    .line 440
    :goto_0
    return v0

    .line 436
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/oa;->b(Lcom/kingroot/kinguser/ns;)Landroid/os/Bundle;

    move-result-object v1

    .line 438
    invoke-interface {v0, v1}, Lcom/king/uranus/daemon/IDaemonService;->setCrashReportStrategy(Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    const v0, 0x4000003

    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/nv;)I
    .locals 2

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 399
    if-nez v0, :cond_0

    .line 400
    const v0, 0x4000002

    .line 409
    :goto_0
    return v0

    .line 405
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/oa;->b(Lcom/kingroot/kinguser/nv;)Landroid/os/Bundle;

    move-result-object v1

    .line 407
    invoke-interface {v0, v1}, Lcom/king/uranus/daemon/IDaemonService;->setStatisticReportStrategy(Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    const v0, 0x4000003

    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/it;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Lcom/kingroot/kinguser/jw;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/jw;-><init>(Lcom/kingroot/kinguser/it;)V

    .line 146
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v1

    .line 149
    :try_start_0
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/jw;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 152
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Lcom/king/uranus/daemon/IDaemonService;)V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Lcom/king/uranus/daemon/IDaemonService;->close(Z)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 6

    .prologue
    .line 264
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bF()Ljava/lang/String;

    move-result-object v0

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/.uranusDaemon/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "statistic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/.uranusDaemon/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "crash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/.uranusDaemon/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "dropbox"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    sget-object v4, Lcom/king/uranus/cg;->wC:Lcom/king/uranus/cg;

    iget v4, v4, Lcom/king/uranus/cg;->id:I

    invoke-direct {p0, v2, v4}, Lcom/kingroot/kinguser/la;->e(Ljava/lang/String;I)I

    .line 273
    new-instance v4, Lcom/kingroot/kinguser/le;

    invoke-direct {v4, v2}, Lcom/kingroot/kinguser/le;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/kingroot/kinguser/la;->a(Lcom/kingroot/kinguser/nv;)I

    .line 274
    new-instance v2, Lcom/kingroot/kinguser/ld;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/ld;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/la;->a(Lcom/kingroot/kinguser/ns;)I

    .line 276
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dt()I

    .line 277
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->du()I

    .line 278
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/la;->setDropboxMonitorStrategy(Ljava/lang/String;)I

    .line 284
    const v0, 0x4000009

    .line 285
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bU()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/la;->d(Lcom/kingroot/kinguser/if;)I

    move-result v0

    move v1, v0

    .line 290
    :goto_0
    if-eqz p2, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/kingroot/kinguser/la;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 293
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/mz;->eS()Lcom/kingroot/kinguser/mz;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Lcom/kingroot/kinguser/mz;->a(IZI)V

    .line 295
    :cond_0
    return-void

    .line 292
    :cond_1
    const v0, 0x4000006

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private aZ(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 239
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/oa;->getVersion()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v1}, Lcom/kingroot/kinguser/nf;->bH(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_0

    .line 243
    invoke-static {v1}, Lcom/king/uranus/daemon/IDaemonService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v1

    .line 244
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/la;->a(Lcom/king/uranus/daemon/IDaemonService;)V

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 328
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/la;->l(Z)I

    move-result v0

    .line 329
    const/high16 v1, 0x4000000

    if-eq v0, v1, :cond_1

    .line 331
    const v0, 0x4010004

    .line 351
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/kingroot/kinguser/nz;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 338
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 339
    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 340
    const v0, 0x4000001

    goto :goto_0

    .line 342
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    .line 345
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/la;->loadDexMod(Landroid/os/Bundle;)I

    move-result v0

    .line 346
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private c(Lcom/kingroot/kinguser/if;)V
    .locals 3

    .prologue
    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kingroot/kinguser/if;->bF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/if;->bH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    invoke-virtual {p1}, Lcom/kingroot/kinguser/if;->bJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/oa;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/la;->uC:Ljava/lang/String;

    .line 537
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v1

    .line 538
    if-nez v1, :cond_1

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kingroot/kinguser/if;->bF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/if;->bH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 541
    invoke-virtual {p1}, Lcom/kingroot/kinguser/if;->bJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/la;->aZ(Ljava/lang/String;)V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    const/4 v0, -0x1

    .line 548
    :try_start_0
    invoke-interface {v1}, Lcom/king/uranus/daemon/IDaemonService;->getVersion()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 553
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/oa;->getVersion()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 555
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/la;->a(Lcom/king/uranus/daemon/IDaemonService;)V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kingroot/kinguser/if;->bF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/if;->bH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 558
    invoke-virtual {p1}, Lcom/kingroot/kinguser/if;->bJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/oa;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/la;->uC:Ljava/lang/String;

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/la;->uF:Landroid/os/IBinder;

    goto :goto_0

    .line 549
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private d(Lcom/kingroot/kinguser/if;)I
    .locals 4

    .prologue
    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/.uranusDaemon/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/if;->bF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cloud"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-virtual {p1}, Lcom/kingroot/kinguser/if;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/ku;->aS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 722
    invoke-static {}, Lcom/kingroot/kinguser/nx;->fp()Lcom/kingroot/kinguser/nx$a;

    move-result-object v2

    const/16 v3, 0x28

    .line 723
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/nx$a;->aw(I)Lcom/kingroot/kinguser/nx$a;

    move-result-object v2

    const-string v3, "096CE82CAD7A6725"

    .line 724
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/nx$a;->bT(Ljava/lang/String;)Lcom/kingroot/kinguser/nx$a;

    move-result-object v2

    .line 725
    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/nx$a;->bS(Ljava/lang/String;)Lcom/kingroot/kinguser/nx$a;

    move-result-object v1

    .line 726
    invoke-virtual {p1}, Lcom/kingroot/kinguser/if;->bO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/nx$a;->bU(Ljava/lang/String;)Lcom/kingroot/kinguser/nx$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 727
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/nx$a;->o(Z)Lcom/kingroot/kinguser/nx$a;

    move-result-object v1

    const/16 v2, 0x2c

    .line 728
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/nx$a;->av(I)Lcom/kingroot/kinguser/nx$a;

    move-result-object v1

    const-string v2, "1.6.1"

    .line 729
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/nx$a;->bR(Ljava/lang/String;)Lcom/kingroot/kinguser/nx$a;

    move-result-object v1

    .line 730
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/nx$a;->bV(Ljava/lang/String;)Lcom/kingroot/kinguser/nx$a;

    move-result-object v0

    .line 731
    invoke-virtual {v0}, Lcom/kingroot/kinguser/nx$a;->fq()Lcom/kingroot/kinguser/nx;

    move-result-object v0

    .line 733
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v1

    .line 735
    if-nez v1, :cond_0

    .line 736
    const v0, 0x4000007

    .line 746
    :goto_0
    return v0

    .line 741
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/kingroot/kinguser/nx;->fo()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/king/uranus/daemon/IDaemonService;->initShark(Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 746
    const v0, 0x4000008

    goto :goto_0
.end method

.method public static dp()Lcom/kingroot/kinguser/la;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/kingroot/kinguser/la;->uB:Lcom/kingroot/kinguser/la;

    return-object v0
.end method

.method private dq()Lcom/king/uranus/daemon/IDaemonService;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/la;->uF:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/la;->uF:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/la;->uF:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/la;->uC:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 94
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    .line 95
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/la;->c(Lcom/kingroot/kinguser/if;)V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/la;->uC:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/nf;->bH(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/la;->uF:Landroid/os/IBinder;

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/la;->uF:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/king/uranus/daemon/IDaemonService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    goto :goto_0
.end method

.method private dr()V
    .locals 4

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 252
    :try_start_0
    invoke-interface {v0}, Lcom/king/uranus/daemon/IDaemonService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/la;->uG:Lcom/kingroot/kinguser/la$a;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    :goto_0
    :try_start_1
    new-instance v1, Lcom/kingroot/kinguser/la$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kingroot/kinguser/la$a;-><init>(Lcom/kingroot/kinguser/la;Lcom/kingroot/kinguser/lb;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/la;->uG:Lcom/kingroot/kinguser/la$a;

    .line 258
    invoke-interface {v0}, Lcom/king/uranus/daemon/IDaemonService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/la;->uG:Lcom/kingroot/kinguser/la$a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    :goto_1
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_1

    .line 253
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private ds()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 298
    move v1, v0

    .line 299
    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/kingroot/kinguser/la;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    const/4 v0, 0x1

    .line 310
    :cond_0
    return v0

    .line 306
    :cond_1
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private dt()I
    .locals 5

    .prologue
    .line 445
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bz()Ljava/lang/String;

    move-result-object v2

    .line 450
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bB()Ljava/lang/String;

    move-result-object v0

    .line 454
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    const-string v0, "com.king.uranus.zgo"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 462
    if-nez v0, :cond_0

    .line 463
    const v0, 0x4000002

    .line 470
    :goto_0
    return v0

    .line 467
    :cond_0
    :try_start_0
    invoke-interface {v0, v1}, Lcom/king/uranus/daemon/IDaemonService;->addFrameworkCrashKeywords(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    const/4 v0, 0x0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    const v0, 0x4000003

    goto :goto_0
.end method

.method private du()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 477
    iget-object v1, p0, Lcom/kingroot/kinguser/la;->uD:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 492
    :goto_0
    return v0

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v1

    .line 483
    if-nez v1, :cond_1

    .line 484
    const v0, 0x4000002

    goto :goto_0

    .line 488
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/kingroot/kinguser/la;->uD:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 489
    invoke-interface {v1, v2}, Lcom/king/uranus/daemon/IDaemonService;->addDeveloperCrashKeywords(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    const v0, 0x4000003

    goto :goto_0
.end method

.method private e(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 384
    if-nez v0, :cond_0

    .line 385
    const v0, 0x4000002

    .line 392
    :goto_0
    return v0

    .line 390
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/king/uranus/daemon/IDaemonService;->setSpecialStatisticStrategy(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    const v0, 0x4000003

    goto :goto_0
.end method

.method private k(Z)I
    .locals 6

    .prologue
    const v0, 0x4010006

    const v1, 0x4010005

    .line 121
    invoke-static {}, Lcom/kingroot/kinguser/lz;->eq()I

    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/mz;->eS()Lcom/kingroot/kinguser/mz;

    move-result-object v2

    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Lcom/kingroot/kinguser/if;->bD()Ljava/lang/String;

    move-result-object v4

    .line 128
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    invoke-virtual {v2, v0, p1}, Lcom/kingroot/kinguser/mz;->j(IZ)V

    .line 140
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-virtual {v3}, Lcom/kingroot/kinguser/if;->bx()Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {v2, v1, p1}, Lcom/kingroot/kinguser/mz;->j(IZ)V

    move v0, v1

    .line 137
    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDropboxMonitorStrategy(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 416
    if-nez v0, :cond_0

    .line 417
    const v0, 0x4000002

    .line 423
    :goto_0
    return v0

    .line 421
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/king/uranus/daemon/IDaemonService;->setDropboxMonitorStrategy(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    const v0, 0x4000003

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 3

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/mz;->eS()Lcom/kingroot/kinguser/mz;

    move-result-object v0

    .line 317
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/mz;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/la;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 319
    invoke-virtual {v0, v1, p1, v2}, Lcom/kingroot/kinguser/mz;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return v2

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/la;->uC:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/Throwable;)I
    .locals 6

    .prologue
    .line 671
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 672
    const-string v0, "FATAL EXCEPTION: "

    invoke-virtual {v2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 673
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 674
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 676
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 679
    const-string v1, "unknow"

    .line 681
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 682
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 683
    if-eqz v0, :cond_2

    .line 684
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 685
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 686
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :goto_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v1

    .line 696
    if-nez v1, :cond_1

    .line 697
    const v0, 0x4000002

    .line 706
    :goto_1
    return v0

    .line 691
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 701
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/king/uranus/daemon/IDaemonService;->reportCatchedCrash(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 706
    const/4 v0, 0x0

    goto :goto_1

    .line 702
    :catch_1
    move-exception v0

    .line 703
    const v0, 0x4000003

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getDaemonService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 607
    :try_start_0
    invoke-interface {v0, p1}, Lcom/king/uranus/daemon/IDaemonService;->getDaemonService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 609
    :goto_0
    return-object v0

    .line 608
    :catch_0
    move-exception v0

    .line 609
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/daemon/RunningAppProcessInfoLite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 637
    if-nez v0, :cond_0

    .line 638
    sget-object v0, Lcom/kingroot/kinguser/la;->uE:Ljava/util/List;

    .line 644
    :goto_0
    return-object v0

    .line 642
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/king/uranus/daemon/IDaemonService;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    sget-object v0, Lcom/kingroot/kinguser/la;->uE:Ljava/util/List;

    goto :goto_0
.end method

.method public h(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 500
    const/4 v2, 0x1

    .line 501
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 502
    iget-object v4, p0, Lcom/kingroot/kinguser/la;->uD:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 508
    :goto_0
    if-nez v0, :cond_3

    .line 510
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 512
    if-nez v0, :cond_1

    .line 513
    const v0, 0x4000002

    .line 529
    :goto_1
    return v0

    .line 518
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/king/uranus/daemon/IDaemonService;->addDeveloperCrashKeywords(Ljava/util/List;)I

    move-result v0

    .line 521
    if-nez v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/kingroot/kinguser/la;->uD:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v1

    .line 524
    goto :goto_1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    const v0, 0x4000003

    goto :goto_1

    :cond_3
    move v0, v1

    .line 529
    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/king/uranus/daemon/IDaemonService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized l(Z)I
    .locals 8

    .prologue
    const v4, 0x4000005

    const v3, 0x4000004

    const v2, 0x4000001

    const/high16 v1, 0x4000000

    .line 156
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/la;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/la;->a(ZZ)V

    .line 159
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 227
    :goto_0
    monitor-exit p0

    return v0

    .line 163
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/mz;->eS()Lcom/kingroot/kinguser/mz;

    move-result-object v5

    .line 166
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/la;->k(Z)I

    move-result v0

    .line 167
    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v5, v0, p1}, Lcom/kingroot/kinguser/mz;->j(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 173
    :cond_1
    :try_start_2
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 174
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 175
    const v0, 0x4000001

    invoke-virtual {v5, v0, p1}, Lcom/kingroot/kinguser/mz;->j(IZ)V

    move v0, v2

    .line 176
    goto :goto_0

    .line 180
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lcom/kingroot/kinguser/if;->bx()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/kingroot/kinguser/la;->a(Lcom/kingroot/kinguser/it;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 184
    const v0, 0x4000004

    invoke-virtual {v5, v0, p1}, Lcom/kingroot/kinguser/mz;->j(IZ)V

    move v0, v3

    .line 185
    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual {v2}, Lcom/kingroot/kinguser/if;->bD()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/kingroot/kinguser/la;->a(Lcom/kingroot/kinguser/it;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 190
    const v0, 0x4000005

    invoke-virtual {v5, v0, p1}, Lcom/kingroot/kinguser/mz;->j(IZ)V

    move v0, v4

    .line 191
    goto :goto_0

    .line 195
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/kingroot/kinguser/if;->bF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/kingroot/kinguser/if;->bI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    new-instance v4, Lcom/kingroot/kinguser/ky$a;

    invoke-direct {v4, v6}, Lcom/kingroot/kinguser/ky$a;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v4, v3}, Lcom/kingroot/kinguser/ky$a;->aV(Ljava/lang/String;)Lcom/kingroot/kinguser/ky$a;

    move-result-object v3

    .line 200
    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/ky$a;->aW(Ljava/lang/String;)Lcom/kingroot/kinguser/ky$a;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/la;->uC:Ljava/lang/String;

    .line 201
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/ky$a;->aX(Ljava/lang/String;)Lcom/kingroot/kinguser/ky$a;

    move-result-object v2

    .line 202
    invoke-static {}, Lcom/kingroot/kinguser/lh;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/ky$a;->aY(Ljava/lang/String;)Lcom/kingroot/kinguser/ky$a;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Lcom/kingroot/kinguser/ky$a;->do()Lcom/kingroot/kinguser/ky;

    move-result-object v2

    .line 206
    new-instance v3, Lcom/kingroot/kinguser/lb;

    invoke-direct {v3, p0, v0}, Lcom/kingroot/kinguser/lb;-><init>(Lcom/kingroot/kinguser/la;Lcom/kingroot/kinguser/it;)V

    invoke-static {v3, v2}, Lcom/kingroot/kinguser/oa;->a(Lcom/kingroot/kinguser/nu;Lcom/kingroot/kinguser/nt;)V

    .line 215
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->ds()Z

    move-result v0

    .line 218
    if-eqz v0, :cond_5

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/la;->a(ZZ)V

    .line 222
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dr()V

    move v0, v1

    .line 223
    goto/16 :goto_0

    .line 226
    :cond_5
    const v0, 0x4010003

    invoke-virtual {v5, v0, p1}, Lcom/kingroot/kinguser/mz;->j(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    const v0, 0x4010003

    goto/16 :goto_0
.end method

.method public loadDexMod(Landroid/os/Bundle;)I
    .locals 2

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 651
    if-nez v0, :cond_1

    .line 652
    const v0, 0x4000002

    .line 666
    :cond_0
    :goto_0
    return v0

    .line 656
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/king/uranus/daemon/IDaemonService;->loadDexMod(Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 658
    if-eqz v0, :cond_0

    .line 659
    const/high16 v1, 0x4010000

    add-int/2addr v0, v1

    goto :goto_0

    .line 662
    :catch_0
    move-exception v0

    .line 665
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/la;->c(Ljava/lang/Throwable;)I

    .line 666
    const v0, 0x4000003

    goto :goto_0
.end method

.method public queryProcessCrashType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 374
    :try_start_0
    invoke-interface {v0, p1}, Lcom/king/uranus/daemon/IDaemonService;->queryProcessCrashType(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 378
    :goto_0
    return v0

    .line 375
    :catch_0
    move-exception v0

    .line 378
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runCommands(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/hd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/kingroot/kinguser/la;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/la;->l(Z)I

    .line 620
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 621
    if-nez v0, :cond_1

    .line 622
    new-instance v0, Lcom/king/uranus/UranusException;

    const v1, 0x4000002

    const-string v2, "start daemon failed"

    invoke-direct {v0, v1, v2}, Lcom/king/uranus/UranusException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 626
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/king/uranus/daemon/IDaemonService;->runCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 627
    invoke-static {v0}, Lcom/kingroot/kinguser/kx;->o(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    new-instance v0, Lcom/king/uranus/UranusException;

    const v1, 0x4000003

    const-string v2, "remote service exception"

    invoke-direct {v0, v1, v2}, Lcom/king/uranus/UranusException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public setSpecialProcessCrashStrategy(Ljava/lang/String;J)I
    .locals 2

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/kingroot/kinguser/la;->dq()Lcom/king/uranus/daemon/IDaemonService;

    move-result-object v0

    .line 357
    if-nez v0, :cond_0

    .line 358
    const v0, 0x4000002

    .line 367
    :goto_0
    return v0

    .line 362
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/king/uranus/daemon/IDaemonService;->setSpecialProcessCrashStrategy(Ljava/lang/String;J)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    const/4 v0, 0x0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    const v0, 0x4000003

    goto :goto_0
.end method
