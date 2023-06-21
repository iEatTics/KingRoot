.class public final Lcom/kingroot/kinguser/bpi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kingroot/kinguser/bog;
.implements Lcom/kingroot/kinguser/bom;
.implements Lcom/kingroot/kinguser/box;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bpi$b;,
        Lcom/kingroot/kinguser/bpi$a;
    }
.end annotation


# instance fields
.field public A:I

.field public B:J

.field public C:Z

.field public D:Ljava/lang/String;

.field public F:I

.field public G:Z

.field private K:Z

.field private O:Ljava/lang/String;

.field private volatile Y:I

.field public a:I

.field private ac:I

.field private volatile ag:Z

.field private am:J

.field private an:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private bGR:Lcom/kingroot/kinguser/bph;

.field private bGS:Lcom/kingroot/kinguser/bon;

.field private bGT:Z

.field private volatile bGU:Lcom/kingroot/kinguser/bop;

.field private volatile bGV:J

.field public bGW:Ljava/util/concurrent/atomic/AtomicLong;

.field public bGX:Ljava/util/concurrent/atomic/AtomicLong;

.field private bGY:Z

.field private bGZ:J

.field public volatile bGo:Z

.field public bHa:J

.field private bHb:Lcom/kingroot/kinguser/bpf;

.field private bHc:Lcom/kingroot/kinguser/bov;

.field private bHd:Ljava/io/File;

.field private bHe:Ljava/io/RandomAccessFile;

.field private bHf:Ljava/io/File;

.field private bHg:Ljava/io/RandomAccessFile;

.field private volatile bHh:Z

.field private bHi:Lcom/kingroot/kinguser/boy;

.field private bHj:Z

.field private bHk:Lcom/kingroot/kinguser/bou;

.field private volatile bHl:Z

.field private bHm:Ljava/util/concurrent/atomic/AtomicInteger;

.field private bHn:Ljava/lang/Object;

.field private bHo:Z

.field private bHp:Lcom/kingroot/kinguser/bpi$b;

.field private bHq:Lcom/kingroot/kinguser/bpd;

.field private bHr:Lcom/kingroot/kinguser/bpj;

.field private bHs:Z

.field public bHt:Ljava/lang/String;

.field public bHu:Z

.field private volatile bHv:Ljava/util/HashMap;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/Map;

.field public f:J

.field public volatile g:J

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public volatile j:J

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public volatile q:I

.field public volatile r:I

.field public s:Ljava/lang/String;

.field public u:J

.field public v:J

.field public volatile w:I

.field public x:Z

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/kingroot/kinguser/bph;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/boo;J)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/bpi;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->d:Ljava/lang/String;

    sget-object v0, Lcom/kingroot/kinguser/bon;->bFq:Lcom/kingroot/kinguser/bon;

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGS:Lcom/kingroot/kinguser/bon;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->K:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bGT:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->e:Ljava/util/Map;

    sget-object v0, Lcom/kingroot/kinguser/bop;->bFw:Lcom/kingroot/kinguser/bop;

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGU:Lcom/kingroot/kinguser/bop;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpi;->f:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpi;->g:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpi;->bGV:J

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpi;->j:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bGo:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->n:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGW:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGX:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bpi;->q:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bGY:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bpi;->r:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpi;->bGZ:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpi;->bHa:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpi;->u:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpi;->v:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHh:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bpi;->w:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bpi;->Y:I

    new-instance v0, Lcom/kingroot/kinguser/boy;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/boy;-><init>(Lcom/kingroot/kinguser/bpi;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHj:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bpi;->ac:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHl:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHm:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHn:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->ag:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->x:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->y:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHo:Z

    new-instance v0, Lcom/kingroot/kinguser/bpi$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/bpi$b;-><init>(Lcom/kingroot/kinguser/bpi;B)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHp:Lcom/kingroot/kinguser/bpi$b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/bpi;->A:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpi;->B:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpi;->am:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->C:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->an:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->D:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHs:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bpi;->F:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->G:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHu:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHv:Ljava/util/HashMap;

    iput p1, p0, Lcom/kingroot/kinguser/bpi;->a:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/kingroot/kinguser/bpi;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/bpi;->bGR:Lcom/kingroot/kinguser/bph;

    iput-object p4, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/kingroot/kinguser/bpi;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0, p6}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boo;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_1

    :goto_0
    iput-wide p7, p0, Lcom/kingroot/kinguser/bpi;->f:J

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHt:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->D:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kingroot/kinguser/bok;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kingroot/kinguser/bok;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->bGR:Lcom/kingroot/kinguser/bph;

    iget-object v1, v1, Lcom/kingroot/kinguser/bph;->bGL:Lcom/kingroot/kinguser/bpg;

    iget-object v1, v1, Lcom/kingroot/kinguser/bpg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kingroot/kinguser/bok;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bny;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->n:Ljava/lang/String;

    return-void

    :cond_1
    const-wide/16 p7, -0x1

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private B()Ljava/lang/String;
    .locals 5

    const-string v1, ""

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->an:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->an:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->an:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentCfg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->an:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHg:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHg:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bpi;Lcom/kingroot/kinguser/bpf;)Lcom/kingroot/kinguser/bpf;
    .locals 0

    iput-object p1, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bph;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGR:Lcom/kingroot/kinguser/bph;

    return-object v0
.end method

.method private a(J)Z
    .locals 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHv:Ljava/util/HashMap;

    const-string v1, "point0"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnz;->mL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGR:Lcom/kingroot/kinguser/bph;

    iget-object v0, v0, Lcom/kingroot/kinguser/bph;->bGL:Lcom/kingroot/kinguser/bpg;

    iget-object v0, v0, Lcom/kingroot/kinguser/bpg;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->m:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v0, v1, v4, v7}, Lcom/kingroot/kinguser/boh;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/bnz;->mf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-direct {v1, v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const-string v0, ""

    if-lez v4, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v7, v4, 0x1

    if-le v1, v7, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v4, 0x2

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    invoke-static {v7}, Lcom/kingroot/kinguser/bnz;->mf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    invoke-direct {v9, v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput-object v7, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHv:Ljava/util/HashMap;

    const-string v1, "point1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/bpi;->bGT:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-static {v6}, Lcom/kingroot/kinguser/bnz;->mf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    :goto_3
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-static {v6}, Lcom/kingroot/kinguser/bnz;->mK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHf:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Lcom/kingroot/kinguser/bpi$a;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->bHf:Ljava/io/File;

    const-string v6, "rw"

    invoke-direct {v1, v4, v6}, Lcom/kingroot/kinguser/bpi$a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHg:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHv:Ljava/util/HashMap;

    const-string v4, "point2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    new-instance v1, Lcom/kingroot/kinguser/bpi$a;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    const-string v6, "rw"

    invoke-direct {v1, v4, v6}, Lcom/kingroot/kinguser/bpi$a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHe:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHv:Ljava/util/HashMap;

    const-string v4, "point3"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/bpi;->K:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_5

    :try_start_5
    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHe:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :try_start_6
    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHv:Ljava/util/HashMap;

    const-string v3, "point4"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    monitor-exit v5

    move v0, v2

    :goto_4
    return v0

    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_7
    :try_start_7
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    goto/16 :goto_3

    :catch_0
    move-exception v0

    const/16 v1, -0x31

    iput v1, p0, Lcom/kingroot/kinguser/bpi;->r:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initFileOnDetected...create RandomAccessFile of path:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->bHf:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fail.|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/boh;->e(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, -0xc

    iput v0, p0, Lcom/kingroot/kinguser/bpi;->r:I

    :cond_8
    :goto_5
    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->ae()V

    monitor-exit v5

    move v0, v3

    goto :goto_4

    :cond_9
    invoke-static {v0}, Lcom/kingroot/kinguser/boh;->f(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, -0xd

    iput v0, p0, Lcom/kingroot/kinguser/bpi;->r:I

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x31

    iput v1, p0, Lcom/kingroot/kinguser/bpi;->r:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initFileOnDetected...create RandomAccessFile of path:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fail.|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/boh;->e(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, -0xc

    iput v0, p0, Lcom/kingroot/kinguser/bpi;->r:I

    :cond_a
    :goto_6
    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->ae()V

    monitor-exit v5

    move v0, v3

    goto/16 :goto_4

    :cond_b
    invoke-static {v0}, Lcom/kingroot/kinguser/boh;->f(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, -0xd

    iput v0, p0, Lcom/kingroot/kinguser/bpi;->r:I

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    :goto_7
    if-eqz v1, :cond_11

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    :goto_8
    if-eqz v1, :cond_10

    invoke-static {}, Lcom/kingroot/kinguser/boh;->a()J

    move-result-wide v6

    const-wide/16 v8, 0x3

    mul-long/2addr v8, p1

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    cmp-long v1, v6, v8

    if-gtz v1, :cond_e

    const/16 v1, -0xc

    iput v1, p0, Lcom/kingroot/kinguser/bpi;->r:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDCard free space:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", need space:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    monitor-exit v5

    move v0, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    goto :goto_7

    :cond_d
    move v1, v3

    goto :goto_8

    :cond_e
    invoke-static {v0}, Lcom/kingroot/kinguser/boh;->e(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_f

    monitor-exit v5

    move v0, v2

    goto/16 :goto_4

    :cond_f
    const/16 v1, -0x2d

    iput v1, p0, Lcom/kingroot/kinguser/bpi;->r:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on SDCard, setting file length faill. length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Exception Info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    goto :goto_9

    :cond_10
    const/16 v1, -0x2e

    iput v1, p0, Lcom/kingroot/kinguser/bpi;->r:I

    const-string v1, "SDCard is not ready."

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    goto :goto_9

    :cond_11
    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    invoke-static {}, Lcom/kingroot/kinguser/boi;->agA()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    :goto_a
    if-eqz v1, :cond_16

    invoke-static {}, Lcom/kingroot/kinguser/boh;->b()J

    move-result-wide v6

    const-wide/16 v8, 0x3

    mul-long/2addr v8, p1

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    cmp-long v1, v6, v8

    if-lez v1, :cond_12

    invoke-static {v0}, Lcom/kingroot/kinguser/boh;->e(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_12
    const/16 v1, -0x28

    iput v1, p0, Lcom/kingroot/kinguser/bpi;->r:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Phone data free space:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", need space:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    goto/16 :goto_9

    :cond_13
    move v1, v3

    goto :goto_a

    :cond_14
    invoke-static {v0}, Lcom/kingroot/kinguser/boh;->e(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_15

    monitor-exit v5

    move v0, v2

    goto/16 :goto_4

    :cond_15
    const/16 v1, -0x2d

    iput v1, p0, Lcom/kingroot/kinguser/bpi;->r:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on Phone data, setting file length faill. length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Exception Info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    goto/16 :goto_9

    :cond_16
    const/16 v1, -0x2f

    iput v1, p0, Lcom/kingroot/kinguser/bpi;->r:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save dir not exists, dir:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_9
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bpi;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bpi;->a(J)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bpi;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHl:Z

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    iput-object p1, p0, Lcom/kingroot/kinguser/bpi;->an:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHg:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHg:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized ae()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHe:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHe:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHe:Ljava/io/RandomAccessFile;

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHg:Ljava/io/RandomAccessFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHg:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHg:Ljava/io/RandomAccessFile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private agS()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->KI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private agT()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->agD()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-static {v3}, Lcom/kingroot/kinguser/bnz;->mf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private agV()Z
    .locals 7

    const/4 v0, 0x0

    const/16 v6, -0xc

    const/16 v5, -0xd

    const/16 v4, -0x31

    :try_start_0
    new-instance v1, Lcom/kingroot/kinguser/bpi$a;

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->bHf:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Lcom/kingroot/kinguser/bpi$a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHg:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/kingroot/kinguser/bpi$a;

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Lcom/kingroot/kinguser/bpi$a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHe:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iput v4, p0, Lcom/kingroot/kinguser/bpi;->r:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initFileOnStart...create RandomAccessFile of path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->bHf:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fail.|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/boh;->e(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v6, p0, Lcom/kingroot/kinguser/bpi;->r:I

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->ae()V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/kingroot/kinguser/boh;->f(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v5, p0, Lcom/kingroot/kinguser/bpi;->r:I

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iput v4, p0, Lcom/kingroot/kinguser/bpi;->r:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initFileOnStart...create RandomAccessFile of path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fail.|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/boh;->e(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v6, p0, Lcom/kingroot/kinguser/bpi;->r:I

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->ae()V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/kingroot/kinguser/boh;->f(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v5, p0, Lcom/kingroot/kinguser/bpi;->r:I

    goto :goto_2
.end method

.method private av()Z
    .locals 14

    const/4 v4, 0x0

    const-wide/16 v12, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    iput-object v4, p0, Lcom/kingroot/kinguser/bpi;->bHf:Ljava/io/File;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpf;->d()J

    move-result-wide v4

    cmp-long v0, v4, v12

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bGT:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/bnz;->mf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    :goto_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/bnz;->mK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHf:Ljava/io/File;

    move v0, v1

    :goto_2
    move v3, v0

    move v0, v2

    :goto_3
    if-nez v3, :cond_0

    if-eqz v0, :cond_c

    :cond_0
    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->agV()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_4
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnz;->mL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bGT:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->i:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/bnz;->mf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    :goto_5
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->i:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/bnz;->mK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHf:Ljava/io/File;

    move v0, v1

    move v3, v2

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->i:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    goto :goto_5

    :cond_4
    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->B()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/kingroot/kinguser/bpf;

    invoke-direct {v5, v4}, Lcom/kingroot/kinguser/bpf;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget-boolean v5, v5, Lcom/kingroot/kinguser/bpf;->e:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    if-eqz v0, :cond_7

    iget-object v5, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget-wide v8, v5, Lcom/kingroot/kinguser/bpf;->b:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_7

    iget-object v5, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget-wide v8, v5, Lcom/kingroot/kinguser/bpf;->a:J

    cmp-long v5, v8, v12

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    invoke-virtual {v5}, Lcom/kingroot/kinguser/bpf;->d()J

    move-result-wide v8

    iget-object v5, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget-wide v10, v5, Lcom/kingroot/kinguser/bpf;->a:J

    cmp-long v5, v8, v10

    if-gtz v5, :cond_7

    move v3, v1

    :goto_6
    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->i:Ljava/lang/String;

    iput-object v4, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    :cond_5
    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget-wide v4, v4, Lcom/kingroot/kinguser/bpf;->c:J

    iput-wide v4, p0, Lcom/kingroot/kinguser/bpi;->j:J

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->bGW:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v5, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget-wide v6, v5, Lcom/kingroot/kinguser/bpf;->d:J

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget-wide v4, v0, Lcom/kingroot/kinguser/bpf;->a:J

    cmp-long v0, v4, v12

    if-lez v0, :cond_9

    iput-boolean v1, p0, Lcom/kingroot/kinguser/bpi;->x:Z

    move v0, v3

    :goto_7
    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->ae()V

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/kingroot/kinguser/bpi;->g:J

    const-string v3, ""

    iput-object v3, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    iput-wide v12, p0, Lcom/kingroot/kinguser/bpi;->j:J

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->bGW:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iput-boolean v1, p0, Lcom/kingroot/kinguser/bpi;->bGo:Z

    const-string v3, ""

    iput-object v3, p0, Lcom/kingroot/kinguser/bpi;->l:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/kingroot/kinguser/bpi;->m:Ljava/lang/String;

    iput v2, p0, Lcom/kingroot/kinguser/bpi;->q:I

    iput-boolean v2, p0, Lcom/kingroot/kinguser/bpi;->bGY:Z

    iput v2, p0, Lcom/kingroot/kinguser/bpi;->r:I

    const-string v3, ""

    iput-object v3, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    new-instance v3, Lcom/kingroot/kinguser/bpf;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/kingroot/kinguser/bpf;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iput-boolean v2, p0, Lcom/kingroot/kinguser/bpi;->x:Z

    :cond_6
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHo:Z

    move v2, v1

    goto/16 :goto_4

    :cond_7
    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget-wide v8, v3, Lcom/kingroot/kinguser/bpf;->b:J

    cmp-long v3, v6, v8

    if-ltz v3, :cond_d

    move v3, v1

    goto :goto_6

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "resume failed. cfg:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",flm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_a

    move v0, v2

    :goto_8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->y:Ljava/lang/String;

    :cond_9
    move v0, v3

    goto :goto_7

    :cond_a
    move v0, v1

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "resume failed. cfg:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->y:Ljava/lang/String;

    :cond_c
    move v0, v2

    goto/16 :goto_7

    :cond_d
    move v3, v2

    goto/16 :goto_6

    :cond_e
    move v0, v2

    move v3, v2

    goto/16 :goto_3

    :cond_f
    move v0, v2

    goto/16 :goto_2
.end method

.method private aw()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHn:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHn:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->ag:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ay()V
    .locals 5

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy;->agO()Lcom/kingroot/kinguser/boq;

    move-result-object v0

    sget-object v2, Lcom/kingroot/kinguser/boq;->bFF:Lcom/kingroot/kinguser/boq;

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bGT:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-static {v3}, Lcom/kingroot/kinguser/bnz;->mf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->t()Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    sget-object v2, Lcom/kingroot/kinguser/boq;->bFD:Lcom/kingroot/kinguser/boq;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/boy;->c(Lcom/kingroot/kinguser/boq;)V

    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/16 v2, -0x48

    const-string v3, ""

    sget-object v4, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/kingroot/kinguser/bpi;->a(ZILjava/lang/String;Lcom/kingroot/kinguser/boq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized az()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHf:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/bpf;->b:J

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget-wide v2, p0, Lcom/kingroot/kinguser/bpi;->j:J

    iput-wide v2, v0, Lcom/kingroot/kinguser/bpf;->c:J

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->bGW:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/bpf;->d:J

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpf;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bpi;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bpi;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->ag:Z

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bpi;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHo:Z

    return v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/boy;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bov;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHc:Lcom/kingroot/kinguser/bov;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bou;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHk:Lcom/kingroot/kinguser/bou;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/bpi;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHn:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpi$b;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHp:Lcom/kingroot/kinguser/bpi$b;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/bpi;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHh:Z

    return v0
.end method

.method private t()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-static {v3}, Lcom/kingroot/kinguser/bnz;->mK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()Z
    .locals 13

    const/16 v12, -0x2a

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHh:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->agW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHc:Lcom/kingroot/kinguser/bov;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHc:Lcom/kingroot/kinguser/bov;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bov;->c()V

    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->ae()V

    :goto_0
    return v1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move v0, v1

    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/kingroot/kinguser/bpi;->bHh:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->isPaused()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->agW()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->isFailed()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_4
    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->bHc:Lcom/kingroot/kinguser/bov;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->bHc:Lcom/kingroot/kinguser/bov;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bov;->c()V

    :cond_5
    move v2, v1

    :goto_2
    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->aw()V

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->bHk:Lcom/kingroot/kinguser/bou;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->bHk:Lcom/kingroot/kinguser/bou;

    sub-long v4, v6, v4

    long-to-int v4, v4

    invoke-virtual {v3, v0, v4}, Lcom/kingroot/kinguser/bou;->a(II)V

    :cond_7
    if-lez v0, :cond_8

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->az()V

    :cond_8
    iget-boolean v3, p0, Lcom/kingroot/kinguser/bpi;->bHh:Z

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->isPaused()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->agW()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->isFailed()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_9
    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->ae()V

    :cond_a
    :goto_3
    move v1, v2

    goto :goto_0

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v4

    sget v6, Lcom/kingroot/kinguser/bnz;->f:I

    int-to-long v6, v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_c

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->bHm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_2

    :cond_c
    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->bHc:Lcom/kingroot/kinguser/bov;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bov;->agN()Lcom/kingroot/kinguser/bov$a;

    move-result-object v2

    if-eqz v2, :cond_18

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget v6, v2, Lcom/kingroot/kinguser/bov$a;->a:I

    invoke-virtual {v3, v6}, Lcom/kingroot/kinguser/bpf;->ka(I)Lcom/kingroot/kinguser/boz;

    move-result-object v3

    if-nez v3, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "inner error: getRange null for sectionId:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/kingroot/kinguser/bov$a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    invoke-virtual {p0, v1, v12, v0, v2}, Lcom/kingroot/kinguser/bpi;->a(ZILjava/lang/String;Lcom/kingroot/kinguser/boq;)V

    goto/16 :goto_0

    :cond_d
    iget-wide v6, v3, Lcom/kingroot/kinguser/boz;->e:J

    iget-wide v8, v2, Lcom/kingroot/kinguser/bov$a;->b:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "inner error: check offset fail for section:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",buffer offset:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v2, Lcom/kingroot/kinguser/bov$a;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",sectionId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v2, Lcom/kingroot/kinguser/bov$a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    invoke-virtual {p0, v1, v12, v0, v2}, Lcom/kingroot/kinguser/bpi;->a(ZILjava/lang/String;Lcom/kingroot/kinguser/boq;)V

    goto/16 :goto_0

    :cond_e
    :try_start_0
    iget-object v6, p0, Lcom/kingroot/kinguser/bpi;->bHe:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/kingroot/kinguser/bov$a;->b:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/kingroot/kinguser/bpi;->bHe:Ljava/io/RandomAccessFile;

    iget-wide v8, v2, Lcom/kingroot/kinguser/bov$a;->b:J

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_f
    iget-object v6, p0, Lcom/kingroot/kinguser/bpi;->bHe:Ljava/io/RandomAccessFile;

    iget-object v7, v2, Lcom/kingroot/kinguser/bov$a;->c:[B

    const/4 v8, 0x0

    iget-wide v10, v2, Lcom/kingroot/kinguser/bov$a;->d:J

    long-to-int v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v6, v2, Lcom/kingroot/kinguser/bov$a;->b:J

    iget-wide v8, v2, Lcom/kingroot/kinguser/bov$a;->d:J

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/kingroot/kinguser/boz;->e:J

    int-to-long v6, v0

    iget-wide v8, v2, Lcom/kingroot/kinguser/bov$a;->d:J

    add-long/2addr v6, v8

    long-to-int v0, v6

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/kingroot/kinguser/bov$a;->c:[B

    iget-boolean v2, p0, Lcom/kingroot/kinguser/bpi;->ag:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bot;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->aw()V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    instance-of v2, v3, Ljava/lang/NullPointerException;

    if-nez v2, :cond_18

    const/16 v2, -0x32

    iget-object v6, p0, Lcom/kingroot/kinguser/bpi;->bHd:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_11

    const/16 v2, -0xe

    :cond_10
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "saveData fail.|"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    invoke-virtual {p0, v1, v2, v3, v6}, Lcom/kingroot/kinguser/bpi;->a(ZILjava/lang/String;Lcom/kingroot/kinguser/boq;)V

    move v2, v1

    goto/16 :goto_2

    :cond_11
    invoke-static {v3}, Lcom/kingroot/kinguser/boh;->e(Ljava/lang/Exception;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/16 v2, -0xc

    goto :goto_4

    :cond_12
    invoke-static {v3}, Lcom/kingroot/kinguser/boh;->f(Ljava/lang/Exception;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/16 v2, -0x11

    goto :goto_4

    :cond_13
    iget-wide v4, p0, Lcom/kingroot/kinguser/bpi;->g:J

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bpf;->d()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/kingroot/kinguser/bpi;->am:J

    sub-long v8, v6, v8

    invoke-static {}, Lcom/kingroot/kinguser/bnz;->f()I

    move-result v3

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-gtz v3, :cond_14

    iget-wide v8, p0, Lcom/kingroot/kinguser/bpi;->g:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_16

    :cond_14
    if-lez v0, :cond_15

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->C:Z

    if-nez v0, :cond_15

    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHe:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_15
    :goto_5
    iput-wide v4, p0, Lcom/kingroot/kinguser/bpi;->bGV:J

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    sget-object v3, Lcom/kingroot/kinguser/boq;->bFC:Lcom/kingroot/kinguser/boq;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/boy;->c(Lcom/kingroot/kinguser/boq;)V

    iput-wide v6, p0, Lcom/kingroot/kinguser/bpi;->am:J

    :cond_16
    iget-wide v8, p0, Lcom/kingroot/kinguser/bpi;->g:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHk:Lcom/kingroot/kinguser/bou;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bou;->c()V

    iput-wide v6, p0, Lcom/kingroot/kinguser/bpi;->v:J

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->ay()V

    goto/16 :goto_3

    :cond_17
    iget-wide v6, p0, Lcom/kingroot/kinguser/bpi;->g:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "inner error: receivedLength > detectLength:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/kingroot/kinguser/bpi;->g:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    invoke-virtual {p0, v1, v12, v0, v3}, Lcom/kingroot/kinguser/bpi;->a(ZILjava/lang/String;Lcom/kingroot/kinguser/boq;)V

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->t()Z

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_18
    move v2, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public final KF()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/kingroot/kinguser/bpi;->f:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/bpi;->f:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/kingroot/kinguser/bpi;->g:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    iget-wide v0, p0, Lcom/kingroot/kinguser/bpi;->g:J

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget-wide v0, v2, Lcom/kingroot/kinguser/bpf;->a:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final KG()J
    .locals 2

    iget-wide v0, p0, Lcom/kingroot/kinguser/bpi;->bGV:J

    return-wide v0
.end method

.method public final KH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final KI()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final KJ()Lcom/kingroot/kinguser/boq;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy;->agO()Lcom/kingroot/kinguser/boq;

    move-result-object v0

    return-object v0
.end method

.method public final KK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    return-object v0
.end method

.method public final KL()I
    .locals 6

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->KF()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    iget-wide v0, v0, Lcom/kingroot/kinguser/bpf;->a:J

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/kingroot/kinguser/bpi;->bGV:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    div-long v0, v2, v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public final KN()I
    .locals 1

    iget v0, p0, Lcom/kingroot/kinguser/bpi;->r:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/kingroot/kinguser/bpi;->ac:I

    if-ge v0, p1, :cond_0

    iput p1, p0, Lcom/kingroot/kinguser/bpi;->ac:I

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHq:Lcom/kingroot/kinguser/bpd;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->bHq:Lcom/kingroot/kinguser/bpd;

    new-instance v3, Lcom/kingroot/kinguser/bpd$a;

    iget-wide v4, p0, Lcom/kingroot/kinguser/bpi;->bHa:J

    sub-long/2addr v0, v4

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/kingroot/kinguser/bpd$a;-><init>(JILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bpd;->a(Lcom/kingroot/kinguser/bpd$a;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bon;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/kingroot/kinguser/bpi;->bGS:Lcom/kingroot/kinguser/bon;

    :cond_0
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bop;)V
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGU:Lcom/kingroot/kinguser/bop;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/kingroot/kinguser/bpi;->bGU:Lcom/kingroot/kinguser/bop;

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->agW()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->t()Z

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->agS()Z

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bGT:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->agT()Z

    :cond_1
    if-eqz p1, :cond_2

    iput-boolean p1, p0, Lcom/kingroot/kinguser/bpi;->bHj:Z

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    sget-object v3, Lcom/kingroot/kinguser/boq;->bFG:Lcom/kingroot/kinguser/boq;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bpi;->a(ZILjava/lang/String;Lcom/kingroot/kinguser/boq;)V

    goto :goto_0
.end method

.method public final a(ZILjava/lang/String;Lcom/kingroot/kinguser/boq;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHh:Z

    iput-boolean p1, p0, Lcom/kingroot/kinguser/bpi;->bGY:Z

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bGY:Z

    if-nez v0, :cond_0

    iput p2, p0, Lcom/kingroot/kinguser/bpi;->r:I

    iput-object p3, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0, p4}, Lcom/kingroot/kinguser/boy;->c(Lcom/kingroot/kinguser/boq;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHp:Lcom/kingroot/kinguser/bpi$b;

    :try_start_0
    iget-object v1, v0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bpb;->d()V

    :cond_1
    iget-object v1, v0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpb;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHh:Z

    return v0
.end method

.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "range"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final afq()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHp:Lcom/kingroot/kinguser/bpi$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHp:Lcom/kingroot/kinguser/bpi$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bpb;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, v0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpb;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public final agD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final agE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final agF()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/boy;->agO()Lcom/kingroot/kinguser/boq;

    move-result-object v3

    sget-object v4, Lcom/kingroot/kinguser/boq;->bFB:Lcom/kingroot/kinguser/boq;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/kingroot/kinguser/boq;->bFC:Lcom/kingroot/kinguser/boq;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/kingroot/kinguser/boq;->bFD:Lcom/kingroot/kinguser/boq;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/kingroot/kinguser/boq;->bFA:Lcom/kingroot/kinguser/boq;

    if-ne v3, v4, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return v0

    :cond_1
    sget-object v4, Lcom/kingroot/kinguser/boq;->bFG:Lcom/kingroot/kinguser/boq;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/boy;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingroot/kinguser/bpi;->bGY:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingroot/kinguser/bpi;->bHh:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingroot/kinguser/bpi;->bGo:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/kingroot/kinguser/bpi;->q:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingroot/kinguser/bpi;->bHu:Z

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->b()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final agG()Z
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy;->agO()Lcom/kingroot/kinguser/boq;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFA:Lcom/kingroot/kinguser/boq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final agH()J
    .locals 2

    iget-wide v0, p0, Lcom/kingroot/kinguser/bpi;->j:J

    return-wide v0
.end method

.method public final agI()I
    .locals 6

    iget-wide v0, p0, Lcom/kingroot/kinguser/bpi;->j:J

    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/kingroot/kinguser/bpi;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/kingroot/kinguser/bpi;->bGV:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    div-long v0, v2, v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public final agU()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bGo:Z

    return v0
.end method

.method public final agW()Z
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy;->agO()Lcom/kingroot/kinguser/boq;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFG:Lcom/kingroot/kinguser/boq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized agX()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final agY()J
    .locals 2

    iget-wide v0, p0, Lcom/kingroot/kinguser/bpi;->f:J

    return-wide v0
.end method

.method public final agZ()Lcom/kingroot/kinguser/bon;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGS:Lcom/kingroot/kinguser/bon;

    return-object v0
.end method

.method public final aha()Z
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGS:Lcom/kingroot/kinguser/bon;

    sget-object v1, Lcom/kingroot/kinguser/bon;->bFr:Lcom/kingroot/kinguser/bon;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ahb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHu:Z

    return v0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpi;->bGZ:J

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFA:Lcom/kingroot/kinguser/boq;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/boy;->c(Lcom/kingroot/kinguser/boq;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGS:Lcom/kingroot/kinguser/bon;

    sget-object v1, Lcom/kingroot/kinguser/bon;->bFr:Lcom/kingroot/kinguser/bon;

    if-eq v0, v1, :cond_0

    const-string v0, "Connection"

    const-string v1, "close"

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bpi;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bpr;->ahd()Lcom/kingroot/kinguser/bpr;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->bGS:Lcom/kingroot/kinguser/bon;

    invoke-virtual {v0, p0, v1}, Lcom/kingroot/kinguser/bpr;->a(Ljava/lang/Runnable;Lcom/kingroot/kinguser/bon;)Lcom/kingroot/kinguser/bpj;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHr:Lcom/kingroot/kinguser/bpj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/kingroot/kinguser/bnx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/bnx;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/kingroot/kinguser/bpi;->g:J

    return-wide v0
.end method

.method public final cC()V
    .locals 3

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHs:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi;->O:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/kingroot/kinguser/bny;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHt:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/kingroot/kinguser/bpi;

    iget-object v0, p1, Lcom/kingroot/kinguser/bpi;->bGU:Lcom/kingroot/kinguser/bop;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bop;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->bGU:Lcom/kingroot/kinguser/bop;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bop;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/bpi;->bGZ:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/bpi;->bGZ:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :cond_0
    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnz;->mL(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->x()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy;->f()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/kingroot/kinguser/bpi;->ac:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGR:Lcom/kingroot/kinguser/bph;

    iget-object v0, v0, Lcom/kingroot/kinguser/bph;->bGL:Lcom/kingroot/kinguser/bpg;

    iget-object v0, v0, Lcom/kingroot/kinguser/bpg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHl:Z

    return v0
.end method

.method public final i()J
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHk:Lcom/kingroot/kinguser/bou;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHk:Lcom/kingroot/kinguser/bou;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bou;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final isCompleted()Z
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy;->agO()Lcom/kingroot/kinguser/boq;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFD:Lcom/kingroot/kinguser/boq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFailed()Z
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy;->agO()Lcom/kingroot/kinguser/boq;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPaused()Z
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy;->agO()Lcom/kingroot/kinguser/boq;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFF:Lcom/kingroot/kinguser/boq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy;->agO()Lcom/kingroot/kinguser/boq;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFB:Lcom/kingroot/kinguser/boq;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy;->agO()Lcom/kingroot/kinguser/boq;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFC:Lcom/kingroot/kinguser/boq;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()J
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHc:Lcom/kingroot/kinguser/bov;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHc:Lcom/kingroot/kinguser/bov;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bov;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final k()J
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpf;->g()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHq:Lcom/kingroot/kinguser/bpd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHq:Lcom/kingroot/kinguser/bpd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpd;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGR:Lcom/kingroot/kinguser/bph;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGR:Lcom/kingroot/kinguser/bph;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bph;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final o()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHp:Lcom/kingroot/kinguser/bpi$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHp:Lcom/kingroot/kinguser/bpi$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bpb;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, v0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpb;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public final p()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHp:Lcom/kingroot/kinguser/bpi$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHp:Lcom/kingroot/kinguser/bpi$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bpb;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, v0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpb;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public final pause()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy;->agO()Lcom/kingroot/kinguser/boq;

    move-result-object v0

    sget-object v3, Lcom/kingroot/kinguser/boq;->bFA:Lcom/kingroot/kinguser/boq;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/kingroot/kinguser/boq;->bFB:Lcom/kingroot/kinguser/boq;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/kingroot/kinguser/boq;->bFC:Lcom/kingroot/kinguser/boq;

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpf;->f()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-wide v6, v0, Lcom/kingroot/kinguser/bpf;->a:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const-string v0, ""

    sget-object v3, Lcom/kingroot/kinguser/boq;->bFF:Lcom/kingroot/kinguser/boq;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/kingroot/kinguser/bpi;->a(ZILjava/lang/String;Lcom/kingroot/kinguser/boq;)V

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHr:Lcom/kingroot/kinguser/bpj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHr:Lcom/kingroot/kinguser/bpj;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpj;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public final run()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput v4, p0, Lcom/kingroot/kinguser/bpi;->r:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpi;->bHa:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpi;->u:J

    iput-wide v6, p0, Lcom/kingroot/kinguser/bpi;->am:J

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHp:Lcom/kingroot/kinguser/bpi$b;

    monitor-enter v1

    const-wide/16 v2, -0x1

    :try_start_0
    iput-wide v2, p0, Lcom/kingroot/kinguser/bpi;->g:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v4, p0, Lcom/kingroot/kinguser/bpi;->x:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/bpi;->A:I

    iput v4, p0, Lcom/kingroot/kinguser/bpi;->w:I

    iput v4, p0, Lcom/kingroot/kinguser/bpi;->Y:I

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGX:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHh:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy;->c()V

    new-instance v0, Lcom/kingroot/kinguser/bov;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bov;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHc:Lcom/kingroot/kinguser/bov;

    new-instance v0, Lcom/kingroot/kinguser/bou;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bou;-><init>(Lcom/kingroot/kinguser/bpi;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHk:Lcom/kingroot/kinguser/bou;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHk:Lcom/kingroot/kinguser/bou;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bou;->a()V

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->av()Z

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    sget-object v2, Lcom/kingroot/kinguser/boq;->bFB:Lcom/kingroot/kinguser/boq;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/boy;->c(Lcom/kingroot/kinguser/boq;)V

    new-instance v1, Lcom/kingroot/kinguser/bpd;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bpd;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi;->bHq:Lcom/kingroot/kinguser/bpd;

    invoke-static {}, Lcom/kingroot/kinguser/boe;->f()I

    move-result v1

    sget-object v2, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/kingroot/kinguser/bpi;->a(ILjava/lang/String;)V

    if-nez v0, :cond_4

    iget v0, p0, Lcom/kingroot/kinguser/bpi;->r:I

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    sget-object v2, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/kingroot/kinguser/bpi;->a(ZILjava/lang/String;Lcom/kingroot/kinguser/boq;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHi:Lcom/kingroot/kinguser/boy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boy;->d()V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHc:Lcom/kingroot/kinguser/bov;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHc:Lcom/kingroot/kinguser/bov;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bov;->c()V

    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->ae()V

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bHj:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->t()Z

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->agS()Z

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpi;->bGT:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->agT()Z

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bGX:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iput-object v5, p0, Lcom/kingroot/kinguser/bpi;->bHq:Lcom/kingroot/kinguser/bpd;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHp:Lcom/kingroot/kinguser/bpi$b;

    iput-object v5, v0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    iput-object v5, v0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHb:Lcom/kingroot/kinguser/bpf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpf;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->ay()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi;->bHp:Lcom/kingroot/kinguser/bpi$b;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpi$b;->ahc()Lcom/kingroot/kinguser/boh;

    move-result-object v0

    iget v1, v0, Lcom/kingroot/kinguser/boh;->a:I

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/kingroot/kinguser/boh;->a:I

    iget-object v0, v0, Lcom/kingroot/kinguser/boh;->b:Ljava/lang/String;

    sget-object v2, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    invoke-virtual {p0, v4, v1, v0, v2}, Lcom/kingroot/kinguser/bpi;->a(ZILjava/lang/String;Lcom/kingroot/kinguser/boq;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpi;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpi;->t()Z

    goto :goto_2
.end method
