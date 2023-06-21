.class Lcom/kingroot/kinguser/agd$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agd$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akW:Lcom/kingroot/kinguser/agd$c;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agd$c;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/kingroot/kinguser/agd$c$1;->akW:Lcom/kingroot/kinguser/agd$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c$1;->akW:Lcom/kingroot/kinguser/agd$c;

    invoke-static {v0}, Lcom/kingroot/kinguser/agd$c;->a(Lcom/kingroot/kinguser/agd$c;)Lcom/kingroot/kinguser/agd$a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c$1;->akW:Lcom/kingroot/kinguser/agd$c;

    invoke-static {v0}, Lcom/kingroot/kinguser/agd$c;->b(Lcom/kingroot/kinguser/agd$c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 199
    :goto_1
    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/kingroot/kinguser/agd$c$1;->akW:Lcom/kingroot/kinguser/agd$c;

    invoke-static {v1}, Lcom/kingroot/kinguser/agd$c;->a(Lcom/kingroot/kinguser/agd$c;)Lcom/kingroot/kinguser/agd$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/agd$b;->a(Lcom/kingroot/kinguser/agd$a;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/agd$c$1;->akW:Lcom/kingroot/kinguser/agd$c;

    invoke-static {v0}, Lcom/kingroot/kinguser/agd$c;->b(Lcom/kingroot/kinguser/agd$c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agd$b;

    goto :goto_1
.end method
