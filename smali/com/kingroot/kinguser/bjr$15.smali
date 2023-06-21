.class Lcom/kingroot/kinguser/bjr$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bjm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjr;->e(Lcom/kingroot/kinguser/aex$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byr:Lcom/kingroot/kinguser/bjr;

.field final synthetic byx:Lcom/kingroot/kinguser/aex$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr;Lcom/kingroot/kinguser/aex$a;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$15;->byr:Lcom/kingroot/kinguser/bjr;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjr$15;->byx:Lcom/kingroot/kinguser/aex$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 574
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186d9

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 575
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$15;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjr;->aeo()Ljava/util/HashSet;

    move-result-object v0

    .line 576
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 577
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$15;->byx:Lcom/kingroot/kinguser/aex$a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$15;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->l(Lcom/kingroot/kinguser/bjr;)V

    .line 580
    if-eqz p2, :cond_0

    .line 581
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$15;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->m(Lcom/kingroot/kinguser/bjr;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 582
    const-string v1, "checkbox_config"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 583
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 585
    :cond_0
    return-void
.end method
