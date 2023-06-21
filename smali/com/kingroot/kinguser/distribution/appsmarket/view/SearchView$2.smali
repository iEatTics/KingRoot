.class Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;
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
    .line 77
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->b(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->c(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->a(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;I)I

    .line 81
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->c(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->d(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->a(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->e(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->f(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->e(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView$2;->aFK:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->a(Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 87
    return-void
.end method
