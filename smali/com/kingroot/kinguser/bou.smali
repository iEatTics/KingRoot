.class public Lcom/kingroot/kinguser/bou;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bou$a;
    }
.end annotation


# instance fields
.field private a:J

.field private bFN:Lcom/kingroot/kinguser/bpi;

.field private bFO:Lcom/kingroot/kinguser/bou$a;

.field private c:J

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bpi;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/kingroot/kinguser/bou;->a:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/bou;->c:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/bou;->d:J

    iput v2, p0, Lcom/kingroot/kinguser/bou;->e:I

    new-instance v0, Lcom/kingroot/kinguser/bou$a;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/bou$a;-><init>(B)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bou;->bFO:Lcom/kingroot/kinguser/bou$a;

    iput-object p1, p0, Lcom/kingroot/kinguser/bou;->bFN:Lcom/kingroot/kinguser/bpi;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bou;->a:J

    iput-wide v2, p0, Lcom/kingroot/kinguser/bou;->c:J

    iput-wide v2, p0, Lcom/kingroot/kinguser/bou;->d:J

    return-void
.end method

.method public final a(II)V
    .locals 6

    iget v0, p0, Lcom/kingroot/kinguser/bou;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/kingroot/kinguser/bou;->e:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/bou;->a:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/kingroot/kinguser/bou;->a:J

    iget-object v0, p0, Lcom/kingroot/kinguser/bou;->bFN:Lcom/kingroot/kinguser/bpi;

    iget-wide v4, v0, Lcom/kingroot/kinguser/bpi;->j:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/kingroot/kinguser/bpi;->j:J

    iget-object v0, p0, Lcom/kingroot/kinguser/bou;->bFO:Lcom/kingroot/kinguser/bou$a;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bou$a;->a(I)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bou;->bFN:Lcom/kingroot/kinguser/bpi;

    iget-object v1, p0, Lcom/kingroot/kinguser/bou;->bFO:Lcom/kingroot/kinguser/bou$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bou$a;->a()I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/bpi;->q:I

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bou;->c:J

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bou;->d:J

    return-void
.end method

.method public final d()J
    .locals 4

    iget-wide v0, p0, Lcom/kingroot/kinguser/bou;->d:J

    iget-wide v2, p0, Lcom/kingroot/kinguser/bou;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
