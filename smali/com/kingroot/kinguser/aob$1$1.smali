.class Lcom/kingroot/kinguser/aob$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aob$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aES:Ljava/util/ArrayList;

.field final synthetic aET:Lcom/kingroot/kinguser/aob$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aob$1;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/kingroot/kinguser/aob$1$1;->aET:Lcom/kingroot/kinguser/aob$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/aob$1$1;->aES:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/aob$1$1;->aES:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/aob$1$1;->aET:Lcom/kingroot/kinguser/aob$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aob$1;->this$0:Lcom/kingroot/kinguser/aob;

    iget-object v0, v0, Lcom/kingroot/kinguser/aob;->aBC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/aob$1$1;->aET:Lcom/kingroot/kinguser/aob$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aob$1;->this$0:Lcom/kingroot/kinguser/aob;

    iget-object v0, v0, Lcom/kingroot/kinguser/aob;->aBC:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/aob$1$1;->aES:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aob$1$1;->aET:Lcom/kingroot/kinguser/aob$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/aob$1;->this$0:Lcom/kingroot/kinguser/aob;

    invoke-static {v1}, Lcom/kingroot/kinguser/aob;->b(Lcom/kingroot/kinguser/aob;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/amu;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;)V

    .line 122
    :cond_0
    return-void
.end method
