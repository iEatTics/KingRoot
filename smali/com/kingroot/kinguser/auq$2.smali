.class Lcom/kingroot/kinguser/auq$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/auq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aRV:Lcom/kingroot/kinguser/auq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auq;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/kingroot/kinguser/auq$2;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/auq$2;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-static {v0}, Lcom/kingroot/kinguser/auq;->c(Lcom/kingroot/kinguser/auq;)Lcom/kingroot/kinguser/auh$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/kingroot/kinguser/bgl;->ea(Z)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/auq$2;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-static {v2}, Lcom/kingroot/kinguser/auq;->e(Lcom/kingroot/kinguser/auq;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/auh$b;->k(Ljava/util/List;Z)V

    .line 142
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auq$2;->aRV:Lcom/kingroot/kinguser/auq;

    invoke-static {v1}, Lcom/kingroot/kinguser/auq;->b(Lcom/kingroot/kinguser/auq;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 147
    return-void

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method
