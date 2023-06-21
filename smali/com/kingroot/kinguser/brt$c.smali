.class Lcom/kingroot/kinguser/brt$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/brt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic bKZ:Lcom/kingroot/kinguser/brt;

.field final bLc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/brt;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/kingroot/kinguser/brt$c;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/kingroot/kinguser/brt$c;->bLc:Ljava/lang/String;

    .line 286
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 291
    const-string v0, "DisplayControl"

    const-string v1, "showRunnable()"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$c;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v0}, Lcom/kingroot/kinguser/brt;->d(Lcom/kingroot/kinguser/brt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brt$c;->bLc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 293
    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$c;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v0}, Lcom/kingroot/kinguser/brt;->e(Lcom/kingroot/kinguser/brt;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$c;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v0}, Lcom/kingroot/kinguser/brt;->f(Lcom/kingroot/kinguser/brt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brt$c;->bLc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/discovery/AdDisplayModel;

    .line 296
    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/kingroot/kinguser/brt$c;->bKZ:Lcom/kingroot/kinguser/brt;

    sget-object v2, Lcom/kingroot/kinguser/btd;->bMU:Lcom/kingroot/kinguser/btd;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/btd;->ordinal()I

    move-result v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/brt;->a(Lcom/tencent/qqpim/discovery/AdDisplayModel;I)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/brt;->a(Lcom/kingroot/kinguser/brt;Z)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 303
    const/4 v1, 0x0

    .line 304
    if-eqz v0, :cond_3

    .line 305
    invoke-static {v0}, Lcom/kingroot/kinguser/btg;->O(Landroid/view/View;)Lcom/kingroot/kinguser/btd;

    move-result-object v3

    .line 306
    const-string v0, "DisplayControl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "showRunnable() AD_UI_ERROR="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMG:Lcom/kingroot/kinguser/btd;

    if-ne v3, v0, :cond_2

    move v1, v2

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$c;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v0}, Lcom/kingroot/kinguser/brt;->e(Lcom/kingroot/kinguser/brt;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$c;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v0}, Lcom/kingroot/kinguser/brt;->f(Lcom/kingroot/kinguser/brt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, p0, Lcom/kingroot/kinguser/brt$c;->bLc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/discovery/AdDisplayModel;

    .line 312
    if-eqz v0, :cond_3

    .line 313
    iget-object v4, p0, Lcom/kingroot/kinguser/brt$c;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/btd;->ordinal()I

    move-result v3

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/brt;->a(Lcom/tencent/qqpim/discovery/AdDisplayModel;I)Z

    move-result v0

    invoke-static {v4, v0}, Lcom/kingroot/kinguser/brt;->a(Lcom/kingroot/kinguser/brt;Z)V

    .line 317
    :cond_3
    if-eqz v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$c;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v0}, Lcom/kingroot/kinguser/brt;->a(Lcom/kingroot/kinguser/brt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brt$c;->bLc:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$c;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v0}, Lcom/kingroot/kinguser/brt;->g(Lcom/kingroot/kinguser/brt;)Lcom/kingroot/kinguser/brt$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$c;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v0}, Lcom/kingroot/kinguser/brt;->f(Lcom/kingroot/kinguser/brt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brt$c;->bLc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/discovery/AdDisplayModel;

    .line 326
    if-nez v0, :cond_4

    .line 327
    const-string v0, "DisplayControl"

    const-string v1, "showRunnable null == model"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/brt$c;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v1}, Lcom/kingroot/kinguser/brt;->g(Lcom/kingroot/kinguser/brt;)Lcom/kingroot/kinguser/brt$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/brt$a;->h(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    goto/16 :goto_0
.end method
