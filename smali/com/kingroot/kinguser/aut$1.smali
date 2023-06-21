.class Lcom/kingroot/kinguser/aut$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aSO:Lcom/kingroot/kinguser/aut;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aut;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/kingroot/kinguser/aut$1;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 134
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 136
    iget-object v1, p0, Lcom/kingroot/kinguser/aut$1;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/aut;->a(Lcom/kingroot/kinguser/aut;Z)Ljava/util/List;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/kingroot/kinguser/aut$1;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/aut;->a(Lcom/kingroot/kinguser/aut;Ljava/util/List;)V

    .line 139
    new-instance v1, Lcom/kingroot/kinguser/aut$1$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/aut$1$1;-><init>(Lcom/kingroot/kinguser/aut$1;Ljava/util/List;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method
