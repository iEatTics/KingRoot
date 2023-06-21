.class Lcom/kingroot/kinguser/alg$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alg$b;-><init>(Lcom/kingroot/kinguser/alg;Landroid/view/View;Lcom/kingroot/kinguser/alg$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awM:Lcom/kingroot/kinguser/alg;

.field final synthetic awN:Lcom/kingroot/kinguser/alg$b;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alg$b;Lcom/kingroot/kinguser/alg;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/kingroot/kinguser/alg$b$1;->awN:Lcom/kingroot/kinguser/alg$b;

    iput-object p2, p0, Lcom/kingroot/kinguser/alg$b$1;->awM:Lcom/kingroot/kinguser/alg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/alg$b$1;->awN:Lcom/kingroot/kinguser/alg$b;

    invoke-static {v0}, Lcom/kingroot/kinguser/alg$b;->a(Lcom/kingroot/kinguser/alg$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/alg$b$1;->awN:Lcom/kingroot/kinguser/alg$b;

    invoke-static {v0}, Lcom/kingroot/kinguser/alg$b;->a(Lcom/kingroot/kinguser/alg$b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/alg$b$1;->awN:Lcom/kingroot/kinguser/alg$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/alg$b;->awL:Lcom/kingroot/kinguser/alg;

    invoke-static {v0}, Lcom/kingroot/kinguser/alg;->a(Lcom/kingroot/kinguser/alg;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alg$b$1;->awN:Lcom/kingroot/kinguser/alg$b;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alg$b;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aml;

    .line 84
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/kingroot/kinguser/alg$b$1;->awN:Lcom/kingroot/kinguser/alg$b;

    invoke-static {v1}, Lcom/kingroot/kinguser/alg$b;->a(Lcom/kingroot/kinguser/alg$b;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/alg$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/aml;->azM:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/alg$b$1;->awN:Lcom/kingroot/kinguser/alg$b;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/alg$b;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/alg$a;->y(Ljava/lang/String;I)V

    goto :goto_0
.end method
