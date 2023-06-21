.class Lcom/kingroot/kinguser/anb$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bug;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anb$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aAh:I

.field final synthetic aAi:Ljava/util/concurrent/CountDownLatch;

.field final synthetic aAj:Lcom/kingroot/kinguser/anb$4;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anb$4;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/kingroot/kinguser/anb$4$1;->aAj:Lcom/kingroot/kinguser/anb$4;

    iput p2, p0, Lcom/kingroot/kinguser/anb$4$1;->aAh:I

    iput-object p3, p0, Lcom/kingroot/kinguser/anb$4$1;->aAi:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fD(I)V
    .locals 5

    .prologue
    .line 340
    if-nez p1, :cond_3

    .line 342
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$4$1;->aAj:Lcom/kingroot/kinguser/anb$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/anb$4;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->c(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 343
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$4$1;->aAj:Lcom/kingroot/kinguser/anb$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/anb$4;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->c(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 347
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$4$1;->aAj:Lcom/kingroot/kinguser/anb$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/anb$4;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->b(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 348
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 350
    iget-boolean v4, v1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->hadReportedForExposure:Z

    if-nez v4, :cond_1

    .line 351
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->hadReportedForExposure:Z

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$4$1;->aAj:Lcom/kingroot/kinguser/anb$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/anb$4;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->b(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$4$1;->aAi:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 360
    return-void
.end method
