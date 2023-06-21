.class Lcom/kingroot/kinguser/aut$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aut$1;->a(Lcom/kingroot/kinguser/bed$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aSP:Ljava/util/List;

.field final synthetic aSQ:Lcom/kingroot/kinguser/aut$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aut$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/kingroot/kinguser/aut$1$1;->aSQ:Lcom/kingroot/kinguser/aut$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/aut$1$1;->aSP:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$1$1;->aSQ:Lcom/kingroot/kinguser/aut$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aut$1;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-static {v0}, Lcom/kingroot/kinguser/aut;->a(Lcom/kingroot/kinguser/aut;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$1$1;->aSQ:Lcom/kingroot/kinguser/aut$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aut$1;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-static {v0}, Lcom/kingroot/kinguser/aut;->a(Lcom/kingroot/kinguser/aut;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aut$1$1;->aSQ:Lcom/kingroot/kinguser/aut$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/aut$1;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-static {v1}, Lcom/kingroot/kinguser/aut;->b(Lcom/kingroot/kinguser/aut;)Lcom/kingroot/kinguser/bdd;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$1$1;->aSQ:Lcom/kingroot/kinguser/aut$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aut$1;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-static {v0}, Lcom/kingroot/kinguser/aut;->a(Lcom/kingroot/kinguser/aut;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aut$1$1;->aSP:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$1$1;->aSQ:Lcom/kingroot/kinguser/aut$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aut$1;->aSO:Lcom/kingroot/kinguser/aut;

    iget-object v1, p0, Lcom/kingroot/kinguser/aut$1$1;->aSQ:Lcom/kingroot/kinguser/aut$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/aut$1;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-static {v1}, Lcom/kingroot/kinguser/aut;->a(Lcom/kingroot/kinguser/aut;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aut;->b(Lcom/kingroot/kinguser/aut;Ljava/util/List;)V

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/aut$1$1;->aSQ:Lcom/kingroot/kinguser/aut$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aut$1;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-static {v0}, Lcom/kingroot/kinguser/aut;->c(Lcom/kingroot/kinguser/aut;)Lcom/kingroot/kinguser/auk$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aut$1$1;->aSQ:Lcom/kingroot/kinguser/aut$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/aut$1;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-static {v1}, Lcom/kingroot/kinguser/aut;->a(Lcom/kingroot/kinguser/aut;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auk$b;->bm(Ljava/util/List;)V

    .line 150
    return-void
.end method
