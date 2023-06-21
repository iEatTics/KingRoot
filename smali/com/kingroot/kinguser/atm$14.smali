.class Lcom/kingroot/kinguser/atm$14;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$14;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 1142
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 1143
    invoke-static {}, Lcom/kingroot/kinguser/asx;->OK()Lcom/kingroot/kinguser/asx;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atm$14;->this$0:Lcom/kingroot/kinguser/atm;

    .line 1144
    invoke-static {v1}, Lcom/kingroot/kinguser/atm;->x(Lcom/kingroot/kinguser/atm;)Ljava/lang/String;

    move-result-object v1

    .line 1143
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/asx;->iU(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1145
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1147
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1148
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 1149
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$14;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->i(Lcom/kingroot/kinguser/atm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 1154
    const-wide/16 v4, 0xa

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1155
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$14;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;Ljava/util/List;)V

    .line 1161
    :cond_2
    return-void
.end method
