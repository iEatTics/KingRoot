.class Lcom/kingroot/kinguser/agz$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/agz;->dj(I)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ant:Ljava/util/List;

.field final synthetic anu:Lcom/kingroot/kinguser/agz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agz;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/kingroot/kinguser/agz$2;->anu:Lcom/kingroot/kinguser/agz;

    iput-object p2, p0, Lcom/kingroot/kinguser/agz$2;->ant:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/agz$2;->ant:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    invoke-static {v0}, Lcom/kingroot/kinguser/ahb;->fI(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method
