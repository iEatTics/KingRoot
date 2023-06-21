.class Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;->onComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic adh:Ljava/util/ArrayList;

.field final synthetic adi:Ljava/util/ArrayList;

.field final synthetic adj:Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1850
    iput-object p1, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$1;->adj:Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;

    iput-object p2, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$1;->adh:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$1;->adi:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$1;->adh:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$1;->adi:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1856
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1857
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1862
    return-void
.end method
