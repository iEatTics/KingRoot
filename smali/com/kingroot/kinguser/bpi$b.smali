.class final Lcom/kingroot/kinguser/bpi$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kingroot/kinguser/bpa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field bHw:Lcom/kingroot/kinguser/bpb;

.field bHx:Lcom/kingroot/kinguser/bpb;

.field private synthetic bHy:Lcom/kingroot/kinguser/bpi;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/bpi;)V
    .locals 0

    iput-object p1, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bpi;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bpi$b;-><init>(Lcom/kingroot/kinguser/bpi;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpf;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/kingroot/kinguser/bpb;Lcom/kingroot/kinguser/bpg;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/boh;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-boolean v2, v2, Lcom/kingroot/kinguser/bpi;->G:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/boe;->b()V

    invoke-static {}, Lcom/kingroot/kinguser/boe;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bpi;->pause()V

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/kingroot/kinguser/bpi;->bHu:Z

    :cond_0
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    if-ne p1, v2, :cond_4

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bpb;->a()Z

    move-result v2

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gtz v2, :cond_5

    :cond_2
    new-instance v2, Lcom/kingroot/kinguser/boh;

    const/4 v3, 0x4

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/boh;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-object v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    :try_start_1
    new-instance v2, Lcom/kingroot/kinguser/boh;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/boh;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v3}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v3}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v3

    iget-object v4, p1, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    iget-object v4, v4, Lcom/kingroot/kinguser/boz;->bGi:Lcom/kingroot/kinguser/bpf;

    if-ne v4, v3, :cond_7

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_8

    :cond_6
    const/4 v3, 0x2

    iput v3, v2, Lcom/kingroot/kinguser/boh;->a:I

    const-string v3, "not the same divider"

    iput-object v3, v2, Lcom/kingroot/kinguser/boh;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    :try_start_2
    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-wide v4, v3, Lcom/kingroot/kinguser/bpi;->g:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-wide v4, v3, Lcom/kingroot/kinguser/bpi;->f:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-wide v4, v3, Lcom/kingroot/kinguser/bpi;->f:J

    cmp-long v3, p4, v4

    if-eqz v3, :cond_d

    const/16 v3, -0xa

    iput v3, v2, Lcom/kingroot/kinguser/boh;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "knownSize:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-wide v4, v4, Lcom/kingroot/kinguser/bpi;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rspLength:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/boh;->b:Ljava/lang/String;

    :cond_9
    :goto_3
    iget v3, v2, Lcom/kingroot/kinguser/boh;->a:I

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v3}, Lcom/kingroot/kinguser/bpi;->c(Lcom/kingroot/kinguser/bpi;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v3, p4, p5}, Lcom/kingroot/kinguser/bpi;->a(Lcom/kingroot/kinguser/bpi;J)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget v5, v5, Lcom/kingroot/kinguser/bpi;->r:I

    iget-object v6, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-object v6, v6, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    sget-object v7, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/kingroot/kinguser/bpi;->a(ZILjava/lang/String;Lcom/kingroot/kinguser/boq;)V

    :cond_a
    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v3}, Lcom/kingroot/kinguser/bpi;->d(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/boy;

    move-result-object v3

    sget-object v4, Lcom/kingroot/kinguser/boy$a;->bGb:Lcom/kingroot/kinguser/boy$a;

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/boy;->a(Lcom/kingroot/kinguser/boy$a;)V

    :cond_b
    :goto_4
    iget v3, v2, Lcom/kingroot/kinguser/boh;->a:I

    if-nez v3, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p2, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    sget-object v4, Lcom/kingroot/kinguser/bpg$a;->bGA:Lcom/kingroot/kinguser/bpg$a;

    if-eq v3, v4, :cond_c

    iget-object v3, p2, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    sget-object v4, Lcom/kingroot/kinguser/bpg$a;->bGB:Lcom/kingroot/kinguser/bpg$a;

    if-ne v3, v4, :cond_16

    :cond_c
    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v3}, Lcom/kingroot/kinguser/bpi;->a(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bph;

    move-result-object v3

    sget-object v4, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, p3}, Lcom/kingroot/kinguser/bph;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iput-wide p4, v3, Lcom/kingroot/kinguser/bpi;->g:J

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iput-boolean p6, v3, Lcom/kingroot/kinguser/bpi;->bGo:Z

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    move-object/from16 v0, p9

    iput-object v0, v3, Lcom/kingroot/kinguser/bpi;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    move-object/from16 v0, p10

    iput-object v0, v3, Lcom/kingroot/kinguser/bpi;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/kingroot/kinguser/bpb;->bGn:Lcom/kingroot/kinguser/bpg;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-object v4, p1, Lcom/kingroot/kinguser/bpb;->bGn:Lcom/kingroot/kinguser/bpg;

    iget v4, v4, Lcom/kingroot/kinguser/bpg;->c:I

    iput v4, v3, Lcom/kingroot/kinguser/bpi;->A:I

    :cond_e
    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-boolean v3, v3, Lcom/kingroot/kinguser/bpi;->bGo:Z

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    new-instance v4, Lcom/kingroot/kinguser/bpf;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/kingroot/kinguser/bpf;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/bpi;->a(Lcom/kingroot/kinguser/bpi;Lcom/kingroot/kinguser/bpf;)Lcom/kingroot/kinguser/bpf;

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v3}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bpf;->agQ()Lcom/kingroot/kinguser/boz;

    move-result-object v3

    iput-object v3, p1, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    :cond_f
    :goto_5
    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v3}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v3

    iput-wide p4, v3, Lcom/kingroot/kinguser/bpf;->a:J

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v3}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v3

    invoke-virtual {v3, p7}, Lcom/kingroot/kinguser/bpf;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v3}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bpf;->b(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    iget v3, v3, Lcom/kingroot/kinguser/boz;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    iget-object v3, p1, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    iget v3, v3, Lcom/kingroot/kinguser/boz;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v3}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v3

    iget-object v4, p1, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/bpf;->a(Lcom/kingroot/kinguser/boz;)Z

    goto/16 :goto_3

    :cond_10
    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v3}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v3

    iget-wide v4, v3, Lcom/kingroot/kinguser/bpf;->a:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_f

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v4}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v4

    iget-wide v4, v4, Lcom/kingroot/kinguser/bpf;->a:J

    iget-object v6, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-wide v6, v6, Lcom/kingroot/kinguser/bpi;->g:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_12

    const/4 v3, 0x1

    :cond_11
    :goto_6
    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    new-instance v4, Lcom/kingroot/kinguser/bpf;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/kingroot/kinguser/bpf;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/bpi;->a(Lcom/kingroot/kinguser/bpi;Lcom/kingroot/kinguser/bpf;)Lcom/kingroot/kinguser/bpf;

    const/4 v3, 0x3

    iput v3, v2, Lcom/kingroot/kinguser/boh;->a:I

    const-string v3, "can not resume from cfg, start over now"

    iput-object v3, v2, Lcom/kingroot/kinguser/boh;->b:Ljava/lang/String;

    goto :goto_5

    :cond_12
    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bpi$b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v3, 0x1

    goto :goto_6

    :cond_13
    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-wide v4, v3, Lcom/kingroot/kinguser/bpi;->g:J

    cmp-long v3, p4, v4

    if-eqz v3, :cond_14

    const/16 v3, -0x2b

    iput v3, v2, Lcom/kingroot/kinguser/boh;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "detectLength:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-wide v4, v4, Lcom/kingroot/kinguser/bpi;->g:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rspLength:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/boh;->b:Ljava/lang/String;

    goto/16 :goto_4

    :cond_14
    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-boolean v3, v3, Lcom/kingroot/kinguser/bpi;->bGo:Z

    if-nez v3, :cond_15

    const/4 v3, 0x1

    iput v3, v2, Lcom/kingroot/kinguser/boh;->a:I

    const-string v3, "not support range"

    iput-object v3, v2, Lcom/kingroot/kinguser/boh;->b:Ljava/lang/String;

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bpi$b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, -0x44

    iput v3, v2, Lcom/kingroot/kinguser/boh;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cur:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v4}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/bpf;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",rsp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/boh;->b:Ljava/lang/String;

    goto/16 :goto_4

    :cond_16
    iget-object v3, p2, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    sget-object v4, Lcom/kingroot/kinguser/bpg$a;->bGG:Lcom/kingroot/kinguser/bpg$a;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v3}, Lcom/kingroot/kinguser/bpi;->a(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bph;

    move-result-object v3

    sget-object v4, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, p3}, Lcom/kingroot/kinguser/bph;->aP(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public final a(Lcom/kingroot/kinguser/bpb;)Lcom/kingroot/kinguser/boz;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    if-ne p1, v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_3

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-boolean v1, v1, Lcom/kingroot/kinguser/bpi;->bGo:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpf;->agQ()Lcom/kingroot/kinguser/boz;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lcom/kingroot/kinguser/bpb;J[BIZ)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v8

    :goto_0
    if-nez v0, :cond_2

    move v0, v7

    :goto_1
    return v0

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    if-lez p5, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-object v0, v0, Lcom/kingroot/kinguser/bpi;->bGW:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-object v0, v0, Lcom/kingroot/kinguser/bpi;->bGX:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    iget-object v1, v1, Lcom/kingroot/kinguser/boz;->bGi:Lcom/kingroot/kinguser/bpf;

    if-ne v1, v0, :cond_5

    move v0, v8

    :goto_2
    if-nez v0, :cond_6

    :cond_4
    move v0, v7

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_2

    :cond_6
    if-eqz p6, :cond_7

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iput v7, v0, Lcom/kingroot/kinguser/bpi;->w:I

    iget-object v0, p1, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    iget v0, v0, Lcom/kingroot/kinguser/boz;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bpf;->a(Lcom/kingroot/kinguser/boz;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v7

    goto :goto_1

    :cond_7
    if-lez p5, :cond_a

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpi;->isPaused()Z

    move-result v0

    if-nez v0, :cond_a

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->e(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bov;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    iget v1, v1, Lcom/kingroot/kinguser/boz;->b:I

    int-to-long v5, p5

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/bov;->a(IJ[BJ)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p1, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    iget-wide v2, v0, Lcom/kingroot/kinguser/boz;->f:J

    int-to-long v4, p5

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/kingroot/kinguser/boz;->f:J

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpf;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_8

    iget-wide v0, v0, Lcom/kingroot/kinguser/bpf;->a:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_8

    move v7, v8

    :cond_8
    if-eqz v7, :cond_9

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->f(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bou;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bou;->b()V

    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bot;->b()V

    :cond_9
    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bot;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0, v8}, Lcom/kingroot/kinguser/bpi;->a(Lcom/kingroot/kinguser/bpi;Z)Z

    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bot;->b()V

    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;Z)Z

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->g(Lcom/kingroot/kinguser/bpi;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->g(Lcom/kingroot/kinguser/bpi;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    :goto_3
    move v0, v8

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    const/16 v1, -0x13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "append size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bot;->f()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/kingroot/kinguser/bpi;->a(ZILjava/lang/String;Lcom/kingroot/kinguser/boq;)V

    move v0, v7

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public final declared-synchronized ahc()Lcom/kingroot/kinguser/boh;
    .locals 11

    monitor-enter p0

    :try_start_0
    new-instance v10, Lcom/kingroot/kinguser/boh;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {v10, v0, v1}, Lcom/kingroot/kinguser/boh;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/kingroot/kinguser/bpb;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->a(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bph;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-wide v4, v0, Lcom/kingroot/kinguser/bpi;->f:J

    iget-object v6, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-object v8, v0, Lcom/kingroot/kinguser/bpi;->e:Ljava/util/Map;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-boolean v9, v0, Lcom/kingroot/kinguser/bpi;->C:Z

    move-object v7, p0

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/bpb;-><init>(Lcom/kingroot/kinguser/bph;ZJLcom/kingroot/kinguser/bog;Lcom/kingroot/kinguser/bpa;Ljava/util/Map;Z)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/bpr;->ahd()Lcom/kingroot/kinguser/bpr;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bpr;->i(Ljava/lang/Runnable;)Lcom/kingroot/kinguser/bpj;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget v0, v10, Lcom/kingroot/kinguser/boh;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpi;->aha()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/kingroot/kinguser/bpb;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->a(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bph;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-wide v4, v0, Lcom/kingroot/kinguser/bpi;->f:J

    iget-object v6, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-object v8, v0, Lcom/kingroot/kinguser/bpi;->e:Ljava/util/Map;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-boolean v9, v0, Lcom/kingroot/kinguser/bpi;->C:Z

    move-object v7, p0

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/bpb;-><init>(Lcom/kingroot/kinguser/bph;ZJLcom/kingroot/kinguser/bog;Lcom/kingroot/kinguser/bpa;Ljava/util/Map;Z)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/kingroot/kinguser/bpr;->ahd()Lcom/kingroot/kinguser/bpr;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bpr;->j(Ljava/lang/Runnable;)Lcom/kingroot/kinguser/bpj;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-object v10

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    const/16 v1, -0x43

    iput v1, v10, Lcom/kingroot/kinguser/boh;->a:I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final b(Lcom/kingroot/kinguser/bpb;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    iget-object v0, p1, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    iput-boolean v1, v0, Lcom/kingroot/kinguser/boz;->h:Z

    goto :goto_1
.end method

.method public final b()Z
    .locals 4

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-wide v0, v0, Lcom/kingroot/kinguser/bpi;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/kingroot/kinguser/bpb;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    if-ne p1, v2, :cond_2

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v2}, Lcom/kingroot/kinguser/bpi;->h(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpi$b;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHw:Lcom/kingroot/kinguser/bpb;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bpb;->e()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v1

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v2}, Lcom/kingroot/kinguser/bpi;->i(Lcom/kingroot/kinguser/bpi;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v2}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bpf;->f()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_6

    iget-wide v2, v2, Lcom/kingroot/kinguser/bpf;->a:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_6

    :goto_3
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bpb;->b()I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/bpi;->r:I

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bpb;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget v0, v0, Lcom/kingroot/kinguser/bpi;->r:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    const/16 v1, -0x45

    iput v1, v0, Lcom/kingroot/kinguser/bpi;->r:I

    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readLen:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v2}, Lcom/kingroot/kinguser/bpi;->b(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/bpf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bpf;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/bpi;->s:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpi;->d(Lcom/kingroot/kinguser/bpi;)Lcom/kingroot/kinguser/boy;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/boy;->c(Lcom/kingroot/kinguser/boq;)V

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHy:Lcom/kingroot/kinguser/bpi;

    iget-boolean v2, v2, Lcom/kingroot/kinguser/bpi;->C:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/kingroot/kinguser/bpi$b;->bHx:Lcom/kingroot/kinguser/bpb;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bpb;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v2, v0

    goto/16 :goto_2
.end method
