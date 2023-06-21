.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10;->onState(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aDr:I

.field final synthetic aDs:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10$1;->aDs:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10;

    iput p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10$1;->aDr:I

    iput-object p3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10$1;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 710
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10$1;->aDs:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->e(Lcom/kingroot/kinguser/anq;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10$1;->aDs:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->e(Lcom/kingroot/kinguser/anq;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10$1;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10$1;->aDr:I

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/and;->b(Ljava/util/List;Ljava/lang/String;I)V

    .line 712
    monitor-exit v1

    .line 714
    return-void

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
