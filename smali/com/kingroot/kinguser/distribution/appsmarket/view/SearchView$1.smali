.class Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/anh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->fN(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$1;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$1;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->a(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;Ljava/util/List;)Ljava/util/List;

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$1;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->a(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->d(Ljava/lang/Runnable;)V

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$1;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->a(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
