.class public Lcom/kingroot/kinguser/bhs$b;
.super Lcom/kingroot/kinguser/bhs$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bhs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private bqW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bhs$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bhs$a;-><init>(I)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bhs$b;->bqW:Ljava/util/List;

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bhs$b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kingroot/kinguser/bhs$b;->bqW:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bhs$a;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/bhs$b;->bqW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public acK()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/bhs$b;->bqW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bhs$a;

    .line 112
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhs$a;->acK()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
