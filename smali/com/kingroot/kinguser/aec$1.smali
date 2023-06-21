.class Lcom/kingroot/kinguser/aec$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeL:Lcom/kingroot/kinguser/aec;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aec;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kingroot/kinguser/aec$1;->aeL:Lcom/kingroot/kinguser/aec;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 117
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/kingroot/kinguser/aec$1;->aeL:Lcom/kingroot/kinguser/aec;

    invoke-static {v1}, Lcom/kingroot/kinguser/aec;->a(Lcom/kingroot/kinguser/aec;)V

    .line 121
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    .line 123
    monitor-enter v1

    .line 124
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 125
    monitor-exit v1

    .line 128
    :cond_0
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
