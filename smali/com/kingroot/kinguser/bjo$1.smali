.class Lcom/kingroot/kinguser/bjo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjo;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxv:Lcom/kingroot/kinguser/bjo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjo;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/kingroot/kinguser/bjo$1;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$1;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjo;->a(Lcom/kingroot/kinguser/bjo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$1;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjo;->b(Lcom/kingroot/kinguser/bjo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$1;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjo;->b(Lcom/kingroot/kinguser/bjo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 162
    if-eqz v0, :cond_0

    .line 163
    new-instance v1, Lcom/kingroot/kinguser/aex$a;

    invoke-direct {v1}, Lcom/kingroot/kinguser/aex$a;-><init>()V

    .line 164
    iput-object v0, v1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 165
    const-string v0, ""

    iput-object v0, v1, Lcom/kingroot/kinguser/aex$a;->description:Ljava/lang/String;

    .line 166
    new-instance v0, Lcom/kingroot/kinguser/bjp;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjo$1;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bjo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/kingroot/kinguser/bjp;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/aex$a;)V

    .line 167
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjp;->show()V

    .line 168
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjp;->aej()V

    .line 169
    iget-object v1, p0, Lcom/kingroot/kinguser/bjo$1;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-static {v1}, Lcom/kingroot/kinguser/bjo;->c(Lcom/kingroot/kinguser/bjo;)Lcom/kingroot/kinguser/bjp$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjp;->a(Lcom/kingroot/kinguser/bjp$a;)V

    goto :goto_0
.end method
