.class public final Lcom/kingroot/kinguser/boz;
.super Ljava/lang/Object;


# static fields
.field private static j:Ljava/lang/String;


# instance fields
.field public a:Z

.field public b:I

.field public bGi:Lcom/kingroot/kinguser/bpf;

.field public c:I

.field public volatile d:J

.field public volatile e:J

.field public volatile f:J

.field public volatile g:J

.field public volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    sput-object v0, Lcom/kingroot/kinguser/boz;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/bpf;JJJJ)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/boz;->a:Z

    iput v1, p0, Lcom/kingroot/kinguser/boz;->b:I

    iput v1, p0, Lcom/kingroot/kinguser/boz;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/boz;->h:Z

    iput-object p1, p0, Lcom/kingroot/kinguser/boz;->bGi:Lcom/kingroot/kinguser/bpf;

    iput-wide p2, p0, Lcom/kingroot/kinguser/boz;->d:J

    iput-wide p8, p0, Lcom/kingroot/kinguser/boz;->g:J

    iput-wide p4, p0, Lcom/kingroot/kinguser/boz;->e:J

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/boz;->f:J

    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/bpf;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/kingroot/kinguser/boz;->a:Z

    iput v0, p0, Lcom/kingroot/kinguser/boz;->b:I

    iput v0, p0, Lcom/kingroot/kinguser/boz;->c:I

    iput-boolean v3, p0, Lcom/kingroot/kinguser/boz;->h:Z

    iput-object p1, p0, Lcom/kingroot/kinguser/boz;->bGi:Lcom/kingroot/kinguser/bpf;

    sget-object v0, Lcom/kingroot/kinguser/boz;->j:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/boz;->b:I

    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/boz;->c:I

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/boz;->d:J

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/boz;->e:J

    iget-wide v2, p0, Lcom/kingroot/kinguser/boz;->e:J

    iput-wide v2, p0, Lcom/kingroot/kinguser/boz;->f:J

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/boz;->g:J

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/kingroot/kinguser/boz;->a:Z

    goto :goto_0
.end method


# virtual methods
.method public final H(IZ)Lcom/kingroot/kinguser/boa$a;
    .locals 10

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/kingroot/kinguser/boz;->g:J

    if-lez p1, :cond_3

    iget-wide v4, p0, Lcom/kingroot/kinguser/boz;->g:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/kingroot/kinguser/boz;->f:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    :cond_0
    :goto_0
    new-instance v2, Lcom/kingroot/kinguser/boa$a;

    iget-wide v4, p0, Lcom/kingroot/kinguser/boz;->f:J

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/kingroot/kinguser/boa$a;-><init>(JJ)V

    return-object v2

    :cond_1
    int-to-long v4, p1

    iget-wide v6, p0, Lcom/kingroot/kinguser/boz;->g:J

    iget-wide v8, p0, Lcom/kingroot/kinguser/boz;->f:J

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    iget-wide v0, p0, Lcom/kingroot/kinguser/boz;->f:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/kingroot/kinguser/boz;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boz;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/boz;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boz;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/boz;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boz;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/boz;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boz;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/boz;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cD(J)J
    .locals 5

    iget-wide v0, p0, Lcom/kingroot/kinguser/boz;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/boz;->g:J

    iget-wide v2, p0, Lcom/kingroot/kinguser/boz;->f:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/boz;->f:J

    sub-long v0, p1, v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/kingroot/kinguser/boz;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boz;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/boz;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boz;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/boz;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boz;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/boz;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boz;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/boz;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/boz;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/boz;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
