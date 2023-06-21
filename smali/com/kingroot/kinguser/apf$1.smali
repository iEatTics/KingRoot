.class Lcom/kingroot/kinguser/apf$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/apf;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aHy:Lcom/kingroot/kinguser/apf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apf;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/ape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ape;->fU(I)V

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/ape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ape;->fV(I)V

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->b(Lcom/kingroot/kinguser/apf;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;I)V

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->b(Lcom/kingroot/kinguser/apf;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v1}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/ape;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->getOffscreenPageLimit()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 128
    sub-int v1, p1, v0

    .line 129
    add-int v2, p1, v0

    .line 130
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v3}, Lcom/kingroot/kinguser/apf;->b(Lcom/kingroot/kinguser/apf;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    iget-object v3, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v3, v1}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;I)V

    .line 132
    iget-object v3, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v3}, Lcom/kingroot/kinguser/apf;->b(Lcom/kingroot/kinguser/apf;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v1}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/ape;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->KU()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v1}, Lcom/kingroot/kinguser/apf;->b(Lcom/kingroot/kinguser/apf;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;I)V

    .line 136
    iget-object v1, p0, Lcom/kingroot/kinguser/apf$1;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v1}, Lcom/kingroot/kinguser/apf;->b(Lcom/kingroot/kinguser/apf;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_3
    return-void
.end method
