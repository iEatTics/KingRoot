.class public abstract Lcom/kingroot/kinguser/bhs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bhs$a;,
        Lcom/kingroot/kinguser/bhs$b;
    }
.end annotation


# instance fields
.field protected bqV:Lcom/kingroot/kinguser/bhs$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhs;->bqV:Lcom/kingroot/kinguser/bhs$b;

    .line 22
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bhs;->acG()Lcom/kingroot/kinguser/bhs$b;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhs;->bqV:Lcom/kingroot/kinguser/bhs$b;

    .line 23
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bhs;->acF()V

    .line 24
    return-void
.end method

.method private a(Lcom/kingroot/kinguser/bhs$b;ILcom/kingroot/kinguser/bhs$a;)V
    .locals 3
    .param p1    # Lcom/kingroot/kinguser/bhs$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/bhs$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    iget v0, p1, Lcom/kingroot/kinguser/bhs$b;->mId:I

    if-ne v0, p2, :cond_1

    .line 84
    invoke-virtual {p1, p3}, Lcom/kingroot/kinguser/bhs$b;->a(Lcom/kingroot/kinguser/bhs$a;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/bhs$b;->a(Lcom/kingroot/kinguser/bhs$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bhs$a;

    .line 88
    iget v2, v0, Lcom/kingroot/kinguser/bhs$a;->mId:I

    if-ne v2, p2, :cond_3

    instance-of v2, v0, Lcom/kingroot/kinguser/bhs$b;

    if-eqz v2, :cond_3

    .line 89
    check-cast v0, Lcom/kingroot/kinguser/bhs$b;

    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/bhs$b;->a(Lcom/kingroot/kinguser/bhs$a;)V

    goto :goto_0

    .line 92
    :cond_3
    instance-of v2, v0, Lcom/kingroot/kinguser/bhs$b;

    if-eqz v2, :cond_2

    .line 93
    check-cast v0, Lcom/kingroot/kinguser/bhs$b;

    invoke-direct {p0, v0, p2, p3}, Lcom/kingroot/kinguser/bhs;->a(Lcom/kingroot/kinguser/bhs$b;ILcom/kingroot/kinguser/bhs$a;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bhs$a;I)Lcom/kingroot/kinguser/bhs$a;
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/bhs$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    iget v0, p1, Lcom/kingroot/kinguser/bhs$a;->mId:I

    if-ne v0, p2, :cond_0

    .line 75
    :goto_0
    return-object p1

    .line 65
    :cond_0
    instance-of v0, p1, Lcom/kingroot/kinguser/bhs$b;

    if-eqz v0, :cond_2

    .line 66
    check-cast p1, Lcom/kingroot/kinguser/bhs$b;

    invoke-static {p1}, Lcom/kingroot/kinguser/bhs$b;->a(Lcom/kingroot/kinguser/bhs$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bhs$a;

    .line 67
    invoke-virtual {p0, v0, p2}, Lcom/kingroot/kinguser/bhs;->a(Lcom/kingroot/kinguser/bhs$a;I)Lcom/kingroot/kinguser/bhs$a;

    move-result-object p1

    .line 68
    if-eqz p1, :cond_1

    goto :goto_0

    .line 75
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public a(ILcom/kingroot/kinguser/bhs$a;)V
    .locals 1
    .param p2    # Lcom/kingroot/kinguser/bhs$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/bhs;->bqV:Lcom/kingroot/kinguser/bhs$b;

    invoke-direct {p0, v0, p1, p2}, Lcom/kingroot/kinguser/bhs;->a(Lcom/kingroot/kinguser/bhs$b;ILcom/kingroot/kinguser/bhs$a;)V

    .line 80
    return-void
.end method

.method protected abstract acF()V
.end method

.method protected abstract acG()Lcom/kingroot/kinguser/bhs$b;
.end method

.method protected clearAll()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bhs;->bqV:Lcom/kingroot/kinguser/bhs$b;

    invoke-static {v0}, Lcom/kingroot/kinguser/bhs$b;->a(Lcom/kingroot/kinguser/bhs$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    return-void
.end method

.method public iR(I)Z
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bhs;->refresh()V

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/bhs;->bqV:Lcom/kingroot/kinguser/bhs$b;

    invoke-virtual {p0, v0, p1}, Lcom/kingroot/kinguser/bhs;->a(Lcom/kingroot/kinguser/bhs$a;I)Lcom/kingroot/kinguser/bhs$a;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhs$a;->acK()Z

    move-result v0

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bhs;->acF()V

    .line 31
    return-void
.end method
