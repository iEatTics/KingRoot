.class Lcom/kingroot/kinguser/abc$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cbw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/abc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic YS:Lcom/kingroot/kinguser/abc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/abc;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/abc$2;->YS:Lcom/kingroot/kinguser/abc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ad(Z)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/abc$2;->YS:Lcom/kingroot/kinguser/abc;

    invoke-static {v0}, Lcom/kingroot/kinguser/abc;->a(Lcom/kingroot/kinguser/abc;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/abc$2;->YS:Lcom/kingroot/kinguser/abc;

    invoke-static {v0}, Lcom/kingroot/kinguser/abc;->b(Lcom/kingroot/kinguser/abc;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/abc$2;->YS:Lcom/kingroot/kinguser/abc;

    iget-object v0, v0, Lcom/kingroot/kinguser/abc;->YO:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 67
    return-void
.end method
