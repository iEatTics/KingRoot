.class Lcom/kingroot/kinguser/axd$6;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axd;->f(Lcom/kingroot/kinguser/agd$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akX:Lcom/kingroot/kinguser/agd$a;

.field final synthetic this$0:Lcom/kingroot/kinguser/axd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axd;Lcom/kingroot/kinguser/agd$a;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/kingroot/kinguser/axd$6;->this$0:Lcom/kingroot/kinguser/axd;

    iput-object p2, p0, Lcom/kingroot/kinguser/axd$6;->akX:Lcom/kingroot/kinguser/agd$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const v5, 0x1891c

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 424
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 425
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18911

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v1, p0, Lcom/kingroot/kinguser/axd$6;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->e(Lcom/kingroot/kinguser/axd;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v0, v2}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 437
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$6;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->e(Lcom/kingroot/kinguser/axd;)I

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axd$6;->akX:Lcom/kingroot/kinguser/agd$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/agd$a;->akI:Lcom/kingroot/kinguser/ala$a;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ahg;->a(ILcom/kingroot/kinguser/ala$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18916

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 440
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v1, p0, Lcom/kingroot/kinguser/axd$6;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->e(Lcom/kingroot/kinguser/axd;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v0, v2}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 448
    new-instance v0, Lcom/kingroot/kinguser/axd$6$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axd$6$1;-><init>(Lcom/kingroot/kinguser/axd$6;)V

    .line 487
    :goto_0
    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 488
    return-void

    .line 462
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18917

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v1, p0, Lcom/kingroot/kinguser/axd$6;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->e(Lcom/kingroot/kinguser/axd;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v1, p0, Lcom/kingroot/kinguser/axd$6;->akX:Lcom/kingroot/kinguser/agd$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/agd$a;->akI:Lcom/kingroot/kinguser/ala$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/ala$a;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v1, p0, Lcom/kingroot/kinguser/axd$6;->akX:Lcom/kingroot/kinguser/agd$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/agd$a;->akI:Lcom/kingroot/kinguser/ala$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/ala$a;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v1}, Lcom/kingroot/kinguser/ala;->b(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v1, p0, Lcom/kingroot/kinguser/axd$6;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->i(Lcom/kingroot/kinguser/axd;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/ala;->h(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v0, v2}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 475
    new-instance v0, Lcom/kingroot/kinguser/axd$6$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axd$6$2;-><init>(Lcom/kingroot/kinguser/axd$6;)V

    goto :goto_0
.end method
