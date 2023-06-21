.class Lcom/kingroot/kinguser/bjd$2;
.super Lcom/kingroot/kinguser/bjd$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjd;->K(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwa:Lcom/kingroot/kinguser/bjd;

.field final synthetic bwb:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 953
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$2;->bwa:Lcom/kingroot/kinguser/bjd;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjd$2;->bwb:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjd$a;-><init>(Lcom/kingroot/kinguser/bjd$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/animation/Animation;I)V
    .locals 3

    .prologue
    .line 957
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$2;->bwa:Lcom/kingroot/kinguser/bjd;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjd$2;->bwb:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/kinguser/bjd;Ljava/util/Collection;Z)V

    .line 960
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$2;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->f(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/common/uilib/KBaseListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/KBaseListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 961
    new-instance v1, Lcom/kingroot/kinguser/bjd$2$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/kingroot/kinguser/bjd$2$1;-><init>(Lcom/kingroot/kinguser/bjd$2;Landroid/view/ViewTreeObserver;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 994
    return-void
.end method
