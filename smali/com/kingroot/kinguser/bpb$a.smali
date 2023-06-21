.class final Lcom/kingroot/kinguser/bpb$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kingroot/kinguser/bnv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bpb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public bFl:Ljava/util/List;

.field private bGu:Lcom/kingroot/kinguser/bnv;

.field private bGv:Ljava/util/concurrent/CountDownLatch;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bpb;Lcom/kingroot/kinguser/bnv;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/kingroot/kinguser/bpb$a;->e:I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpb$a;->bGv:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/kingroot/kinguser/bpb$a;->bGu:Lcom/kingroot/kinguser/bnv;

    iput-object p3, p0, Lcom/kingroot/kinguser/bpb$a;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/kingroot/kinguser/bpb$a;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/kingroot/kinguser/bpb$a;->bGu:Lcom/kingroot/kinguser/bnv;

    iget-object v1, p0, Lcom/kingroot/kinguser/bpb$a;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/kingroot/kinguser/bpb$a;->d:J

    iget v4, p0, Lcom/kingroot/kinguser/bpb$a;->e:I

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/bnv;->a(Ljava/lang/String;JILcom/kingroot/kinguser/bnv$a;)V

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpb$a;->bGv:Ljava/util/concurrent/CountDownLatch;

    iget v1, p0, Lcom/kingroot/kinguser/bpb$a;->e:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
