.class Lcom/kingroot/kinguser/abm$b;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/abm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private Zc:Ljava/lang/Process;

.field private Zg:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Process;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    .line 394
    iput-object p1, p0, Lcom/kingroot/kinguser/abm$b;->Zc:Ljava/lang/Process;

    .line 395
    iput-object p2, p0, Lcom/kingroot/kinguser/abm$b;->Zg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 396
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/abm$b;->Zc:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/abm$b;->Zg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 407
    return-void

    .line 402
    :catch_0
    move-exception v0

    goto :goto_0
.end method
