.class Lcom/kingroot/kinguser/awv$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVI:Lcom/kingroot/kinguser/awv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awv;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/kingroot/kinguser/awv$1;->aVI:Lcom/kingroot/kinguser/awv;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 3
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 138
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 144
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/kingroot/kinguser/awv$1;->aVI:Lcom/kingroot/kinguser/awv;

    invoke-static {v1}, Lcom/kingroot/kinguser/awv;->a(Lcom/kingroot/kinguser/awv;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 148
    iget-object v1, p0, Lcom/kingroot/kinguser/awv$1;->aVI:Lcom/kingroot/kinguser/awv;

    invoke-static {}, Lcom/kingroot/kinguser/ahe;->wL()Lcom/kingroot/kinguser/ahe;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/ahe;->fN(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/awv;->a(Lcom/kingroot/kinguser/awv;Ljava/util/List;)V

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/awv$1;->aVI:Lcom/kingroot/kinguser/awv;

    invoke-static {v0}, Lcom/kingroot/kinguser/awv;->b(Lcom/kingroot/kinguser/awv;)V

    goto :goto_0
.end method
