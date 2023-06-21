.class public final Lcom/kingroot/kinguser/if$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private rF:Lcom/kingroot/kinguser/hg;

.field private rG:Lcom/kingroot/kinguser/hr;

.field private rH:Lcom/kingroot/kinguser/he;

.field private rI:Lcom/kingroot/kinguser/hz;

.field private rJ:Lcom/kingroot/kinguser/hp;

.field private rM:Ljava/lang/String;

.field private rN:Z

.field private rO:Z

.field private rP:Ljava/lang/String;

.field private rQ:Ljava/lang/String;

.field private rR:Ljava/lang/String;

.field private rT:Ljava/lang/String;

.field private rU:Ljava/lang/String;

.field private rV:Lcom/kingroot/kinguser/hj;

.field private rs:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-boolean v0, p0, Lcom/kingroot/kinguser/if$a;->rN:Z

    .line 319
    iput-boolean v0, p0, Lcom/kingroot/kinguser/if$a;->rO:Z

    .line 331
    const-string v0, "input context was null"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/if$a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iput-object p1, p0, Lcom/kingroot/kinguser/if$a;->mContext:Landroid/content/Context;

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/ig;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/if$a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/if$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rs:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 430
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rU:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 424
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such file or directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/if$a;)Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/kingroot/kinguser/if$a;->rN:Z

    return v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/if$a;)Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/kingroot/kinguser/if$a;->rO:Z

    return v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/if$a;)Lcom/kingroot/kinguser/hg;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rF:Lcom/kingroot/kinguser/hg;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/if$a;)Lcom/kingroot/kinguser/hz;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rI:Lcom/kingroot/kinguser/hz;

    return-object v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/if$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/if$a;)Lcom/kingroot/kinguser/hp;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rJ:Lcom/kingroot/kinguser/hp;

    return-object v0
.end method

.method static synthetic o(Lcom/kingroot/kinguser/if$a;)Lcom/kingroot/kinguser/hj;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rV:Lcom/kingroot/kinguser/hj;

    return-object v0
.end method

.method static synthetic p(Lcom/kingroot/kinguser/if$a;)Lcom/kingroot/kinguser/hr;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rG:Lcom/kingroot/kinguser/hr;

    return-object v0
.end method

.method static synthetic q(Lcom/kingroot/kinguser/if$a;)Lcom/kingroot/kinguser/he;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rH:Lcom/kingroot/kinguser/he;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/he;)Lcom/kingroot/kinguser/if$a;
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/kingroot/kinguser/if$a;->rH:Lcom/kingroot/kinguser/he;

    .line 379
    return-object p0
.end method

.method public a(Lcom/kingroot/kinguser/hj;)Lcom/kingroot/kinguser/if$a;
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/kingroot/kinguser/if$a;->rV:Lcom/kingroot/kinguser/hj;

    .line 415
    return-object p0
.end method

.method public a(Lcom/kingroot/kinguser/hz;)Lcom/kingroot/kinguser/if$a;
    .locals 1

    .prologue
    .line 362
    const-string v0, "preload library was null"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/if$a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iput-object p1, p0, Lcom/kingroot/kinguser/if$a;->rI:Lcom/kingroot/kinguser/hz;

    .line 364
    return-object p0
.end method

.method public ay(Ljava/lang/String;)Lcom/kingroot/kinguser/if$a;
    .locals 1

    .prologue
    .line 344
    const-string v0, "Client Identity not set"

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/if$a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iput-object p1, p0, Lcom/kingroot/kinguser/if$a;->rT:Ljava/lang/String;

    .line 346
    return-object p0
.end method

.method public az(Ljava/lang/String;)Lcom/kingroot/kinguser/if$a;
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/kingroot/kinguser/if$a;->rP:Ljava/lang/String;

    .line 394
    return-object p0
.end method

.method public bV()Lcom/kingroot/kinguser/if;
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if$a;->mPackageName:Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rs:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rs:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/kingroot/kinguser/if$a;->rs:Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rM:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->rM:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/kingroot/kinguser/if$a;->rM:Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/kingroot/kinguser/if$a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uranus"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 444
    invoke-static {v0}, Lcom/kingroot/kinguser/if$a;->e(Ljava/io/File;)V

    .line 445
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/if$a;->rU:Ljava/lang/String;

    .line 447
    new-instance v0, Lcom/kingroot/kinguser/if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/if;-><init>(Lcom/kingroot/kinguser/if$a;Lcom/kingroot/kinguser/ig;)V

    return-object v0

    .line 438
    :cond_0
    const-string v0, "uranus.zip"

    goto :goto_0

    .line 439
    :cond_1
    const-string v0, "uranus.cert"

    goto :goto_1
.end method

.method public g(Z)Lcom/kingroot/kinguser/if$a;
    .locals 0

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/kingroot/kinguser/if$a;->rO:Z

    .line 420
    return-object p0
.end method
