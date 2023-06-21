.class public Lcom/kingroot/kinguser/cdj;
.super Ljava/lang/Object;


# static fields
.field private static m:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private bXA:Lsm/e;

.field private bXB:Lsm/c;

.field private bXC:Lsm/g;

.field private bXz:Lsm/h;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/cdj;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cdj;->b:Z

    iput-object v3, p0, Lcom/kingroot/kinguser/cdj;->c:Ljava/lang/String;

    iput v1, p0, Lcom/kingroot/kinguser/cdj;->d:I

    iput v1, p0, Lcom/kingroot/kinguser/cdj;->e:I

    iput-object v3, p0, Lcom/kingroot/kinguser/cdj;->f:Ljava/lang/String;

    iput-object v3, p0, Lcom/kingroot/kinguser/cdj;->g:Ljava/lang/String;

    iput-object v3, p0, Lcom/kingroot/kinguser/cdj;->h:Ljava/lang/String;

    iput-object v3, p0, Lcom/kingroot/kinguser/cdj;->i:Ljava/lang/String;

    iput-object v3, p0, Lcom/kingroot/kinguser/cdj;->j:Ljava/lang/String;

    iput-object v3, p0, Lcom/kingroot/kinguser/cdj;->k:Ljava/lang/String;

    iput v1, p0, Lcom/kingroot/kinguser/cdj;->l:I

    iput-object v3, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    iput-object v3, p0, Lcom/kingroot/kinguser/cdj;->bXA:Lsm/e;

    iput-object v3, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    iput-object v3, p0, Lcom/kingroot/kinguser/cdj;->bXC:Lsm/g;

    iput-object p1, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/kingroot/kinguser/cdj;->f:Ljava/lang/String;

    iput p4, p0, Lcom/kingroot/kinguser/cdj;->e:I

    iput p5, p0, Lcom/kingroot/kinguser/cdj;->l:I

    iput-object p6, p0, Lcom/kingroot/kinguser/cdj;->c:Ljava/lang/String;

    iput p7, p0, Lcom/kingroot/kinguser/cdj;->d:I

    iput-object p8, p0, Lcom/kingroot/kinguser/cdj;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/kingroot/kinguser/cdj;->h:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/kingroot/kinguser/cdj;->b:Z

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4010"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/cdj;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/kingroot/kinguser/cde;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/cdj;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/cdm;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/cdp;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cdj;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/cdm;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/cdp;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cdj;->j:Ljava/lang/String;

    return-void
.end method

.method private afr()I
    .locals 3

    sget-object v0, Lcom/kingroot/kinguser/cdj;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/cdj;->m:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/kingroot/kinguser/cdj;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/cdj;->m()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    const-string v1, "2001"

    iget-object v2, p0, Lcom/kingroot/kinguser/cdj;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/cde;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    const-string v1, "2002"

    iget-object v2, p0, Lcom/kingroot/kinguser/cdj;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/cde;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4010"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/cdj;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/cdj;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/cde;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/cdm;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/cdp;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cdj;->k:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->k:Ljava/lang/String;

    return-object v0
.end method

.method private f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private g()I
    .locals 1

    iget v0, p0, Lcom/kingroot/kinguser/cdj;->e:I

    return v0
.end method

.method private h()I
    .locals 1

    iget v0, p0, Lcom/kingroot/kinguser/cdj;->d:I

    return v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->f:Ljava/lang/String;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->h:Ljava/lang/String;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->g:Ljava/lang/String;

    return-object v0
.end method

.method private l()I
    .locals 1

    iget v0, p0, Lcom/kingroot/kinguser/cdj;->l:I

    return v0
.end method

.method private m()I
    .locals 3

    invoke-virtual {p0}, Lcom/kingroot/kinguser/cdj;->akO()Lsm/c;

    move-result-object v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/kingroot/kinguser/cdj;->a(Lsm/c;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsm/d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lsm/d;->a:Ljava/lang/String;

    sput-object v0, Lcom/kingroot/kinguser/cdj;->m:Ljava/lang/String;

    sget-object v0, Lcom/kingroot/kinguser/cdj;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/cdj;->m:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, -0x7d1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private n()Z
    .locals 4

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/cdm;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/cdp;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/cdm;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/cdp;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    const-string v3, "2001"

    invoke-static {v0, v3, v1}, Lcom/kingroot/kinguser/cde;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cdj;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    const-string v3, "2002"

    invoke-static {v0, v3, v2}, Lcom/kingroot/kinguser/cde;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cdj;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/kingroot/kinguser/cdj;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingroot/kinguser/cdj;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/kingroot/kinguser/cdj;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/kingroot/kinguser/cdj;->j:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    invoke-static {v0}, Lsm/j;->cq(Landroid/content/Context;)Lsm/j$a;

    move-result-object v0

    sget-object v1, Lsm/j$a;->bXv:Lsm/j$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/cdi;Lcom/kingroot/kinguser/cdv;Lcom/kingroot/kinguser/cdv;)I
    .locals 1

    iget v0, p1, Lcom/kingroot/kinguser/cdi;->a:I

    invoke-virtual {p2, v0}, Lcom/kingroot/kinguser/cdv;->a(I)V

    iget-object v0, p1, Lcom/kingroot/kinguser/cdi;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/kingroot/kinguser/cdv;->b(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/kingroot/kinguser/cdi;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/kingroot/kinguser/cdv;->c(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Lcom/kingroot/kinguser/cdv;->a(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Lcom/kingroot/kinguser/cdv;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kingroot/kinguser/cdj;->afr()I

    move-result v0

    return v0
.end method

.method public a(Lcom/kingroot/kinguser/cdv;Lcom/kingroot/kinguser/cdv;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/kingroot/kinguser/cdj;->a(Lcom/kingroot/kinguser/cdv;Lcom/kingroot/kinguser/cdv;Z)I

    move-result v0

    return v0
.end method

.method public a(Lcom/kingroot/kinguser/cdv;Lcom/kingroot/kinguser/cdv;Z)I
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/cdv;->a()[B

    move-result-object v0

    if-eqz p3, :cond_8

    invoke-static {v0}, Lcom/kingroot/kinguser/cdk;->a([B)[B

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/cdl;->a()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/cdl;->a([B[B)[B

    move-result-object v3

    array-length v4, v3

    iget-boolean v0, p0, Lcom/kingroot/kinguser/cdj;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "http://wuptest.cs0309.3g.qq.com"

    :goto_1
    if-eqz v2, :cond_0

    const-string v5, "%s?mc=2"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v5, Lsm/j;

    iget-object v6, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Lsm/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0, v3}, Lsm/j;->d(Ljava/lang/String;[B)I

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    :goto_2
    return v0

    :cond_2
    move-object v0, v2

    move v2, v3

    goto :goto_0

    :cond_3
    const-string v0, "http://pmir.3g.qq.com"

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v5, v0, v3}, Lsm/j;->a(ZLjava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_6

    array-length v3, v0

    if-lez v3, :cond_6

    array-length v3, v0

    add-int/2addr v3, v4

    invoke-static {}, Lcom/kingroot/kinguser/cdl;->a()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/cdl;->b([B[B)[B

    move-result-object v0

    if-eqz v2, :cond_5

    invoke-static {v0}, Lcom/kingroot/kinguser/cdk;->b([B)[B

    move-result-object v2

    if-nez v2, :cond_7

    :cond_5
    :goto_3
    invoke-virtual {p2, v0}, Lcom/kingroot/kinguser/cdv;->a([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception v0

    const/16 v0, -0x17a9

    goto :goto_2

    :catch_1
    move-exception v0

    const/16 v0, -0x1770

    goto :goto_2

    :cond_8
    move v2, v1

    goto :goto_0
.end method

.method public a(Lsm/c;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsm/c;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lsm/d;",
            ">;)I"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/kingroot/kinguser/cdv;

    invoke-direct {v0, v3}, Lcom/kingroot/kinguser/cdv;-><init>(Z)V

    new-instance v2, Lcom/kingroot/kinguser/cdv;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/cdv;-><init>(Z)V

    invoke-static {v1}, Lcom/kingroot/kinguser/cdh;->kW(I)Lcom/kingroot/kinguser/cdi;

    move-result-object v3

    iget v4, v3, Lcom/kingroot/kinguser/cdi;->a:I

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/cdv;->a(I)V

    iget-object v4, v3, Lcom/kingroot/kinguser/cdi;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/cdv;->b(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/kingroot/kinguser/cdi;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/cdv;->c(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/cdv;->a(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/cdv;->a(Ljava/lang/String;)V

    const-string v3, "phonetype"

    invoke-virtual {p0}, Lcom/kingroot/kinguser/cdj;->akM()Lsm/e;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/cdv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "userinfo"

    invoke-virtual {p0}, Lcom/kingroot/kinguser/cdj;->akN()Lsm/h;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/cdv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "deviceinfo"

    invoke-virtual {v0, v3, p1}, Lcom/kingroot/kinguser/cdv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v2}, Lcom/kingroot/kinguser/cdj;->a(Lcom/kingroot/kinguser/cdv;Lcom/kingroot/kinguser/cdv;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lsm/d;

    invoke-direct {v0}, Lsm/d;-><init>()V

    const-string v3, "guidinfo"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/cdv;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsm/d;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public akM()Lsm/e;
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXA:Lsm/e;

    if-nez v0, :cond_0

    new-instance v0, Lsm/e;

    invoke-direct {v0}, Lsm/e;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXA:Lsm/e;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXA:Lsm/e;

    const/4 v1, 0x2

    iput v1, v0, Lsm/e;->a:I

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXA:Lsm/e;

    invoke-direct {p0}, Lcom/kingroot/kinguser/cdj;->l()I

    move-result v1

    iput v1, v0, Lsm/e;->b:I

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXA:Lsm/e;

    return-object v0
.end method

.method public akN()Lsm/h;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    if-nez v0, :cond_0

    new-instance v0, Lsm/h;

    invoke-direct {v0}, Lsm/h;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    invoke-direct {p0}, Lcom/kingroot/kinguser/cdj;->h()I

    move-result v2

    iput v2, v0, Lsm/h;->i:I

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    invoke-direct {p0}, Lcom/kingroot/kinguser/cdj;->g()I

    move-result v2

    iput v2, v0, Lsm/h;->p:I

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    invoke-direct {p0}, Lcom/kingroot/kinguser/cdj;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lsm/h;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    invoke-direct {p0}, Lcom/kingroot/kinguser/cdj;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lsm/h;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/cdj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[\\.]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget-object v4, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    new-instance v5, Lsm/f;

    invoke-direct {v5}, Lsm/f;-><init>()V

    iput-object v5, v4, Lsm/h;->j:Lsm/f;

    iget-object v4, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    iget-object v4, v4, Lsm/h;->j:Lsm/f;

    iput v3, v4, Lsm/f;->a:I

    iget-object v3, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    iget-object v3, v3, Lsm/h;->j:Lsm/f;

    iput v2, v3, Lsm/f;->b:I

    iget-object v2, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    iget-object v2, v2, Lsm/h;->j:Lsm/f;

    iput v0, v2, Lsm/f;->c:I

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    invoke-direct {p0}, Lcom/kingroot/kinguser/cdj;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lsm/h;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    invoke-direct {p0}, Lcom/kingroot/kinguser/cdj;->f()I

    move-result v2

    iput v2, v0, Lsm/h;->m:I

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    invoke-static {}, Lcom/kingroot/kinguser/cdm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/cdp;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lsm/h;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    invoke-static {}, Lcom/kingroot/kinguser/cdm;->c()I

    move-result v2

    iput v2, v0, Lsm/h;->o:I

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    iget-object v2, p0, Lcom/kingroot/kinguser/cdj;->i:Ljava/lang/String;

    iput-object v2, v0, Lsm/h;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    sget-object v2, Lcom/kingroot/kinguser/cdj;->m:Ljava/lang/String;

    iput-object v2, v0, Lsm/h;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    iput v1, v0, Lsm/h;->n:I

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/cdj;->a()I

    move-result v1

    iput v1, v0, Lsm/h;->h:I

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXz:Lsm/h;

    return-object v0

    :cond_1
    move v0, v1

    move v2, v1

    move v3, v1

    goto :goto_0
.end method

.method public akO()Lsm/c;
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    if-nez v0, :cond_0

    new-instance v0, Lsm/c;

    invoke-direct {v0}, Lsm/c;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    invoke-direct {p0}, Lcom/kingroot/kinguser/cdj;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lsm/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    iget-object v1, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/kingroot/kinguser/cdm;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/cdp;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lsm/c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    iget-object v1, p0, Lcom/kingroot/kinguser/cdj;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/kingroot/kinguser/cdm;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/cdp;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lsm/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    invoke-static {}, Lcom/kingroot/kinguser/cdm;->c()I

    move-result v1

    iput v1, v0, Lsm/c;->f:I

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    invoke-static {}, Lcom/kingroot/kinguser/cdm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/cdp;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lsm/c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    invoke-static {}, Lcom/kingroot/kinguser/cdm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/cdp;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lsm/c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    const-string v1, ""

    iput-object v1, v0, Lsm/c;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    iget-object v1, p0, Lcom/kingroot/kinguser/cdj;->i:Ljava/lang/String;

    iput-object v1, v0, Lsm/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    iget-object v1, p0, Lcom/kingroot/kinguser/cdj;->j:Ljava/lang/String;

    iput-object v1, v0, Lsm/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    sget-object v1, Lcom/kingroot/kinguser/cdj;->m:Ljava/lang/String;

    iput-object v1, v0, Lsm/c;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/cdj;->bXB:Lsm/c;

    return-object v0
.end method
