.class Lcom/kingroot/kinguser/apv$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/apv;->a(Ljava/util/List;Lcom/kingroot/kinguser/apv$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aJC:Lcom/kingroot/kinguser/apv;

.field final synthetic aJD:Ljava/util/List;

.field final synthetic aJE:Lcom/kingroot/kinguser/apv$b;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apv;Ljava/util/List;Lcom/kingroot/kinguser/apv$b;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/kingroot/kinguser/apv$4;->aJC:Lcom/kingroot/kinguser/apv;

    iput-object p2, p0, Lcom/kingroot/kinguser/apv$4;->aJD:Ljava/util/List;

    iput-object p3, p0, Lcom/kingroot/kinguser/apv$4;->aJE:Lcom/kingroot/kinguser/apv$b;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 192
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/apv$4;->aJD:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/apv$4;->aJE:Lcom/kingroot/kinguser/apv$b;

    if-nez v0, :cond_1

    .line 202
    :cond_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/apv$4;->aJC:Lcom/kingroot/kinguser/apv;

    iget-object v1, p0, Lcom/kingroot/kinguser/apv$4;->aJD:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apv;->aY(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 198
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    iget-object v4, p0, Lcom/kingroot/kinguser/apv$4;->aJE:Lcom/kingroot/kinguser/apv$b;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v4, v0, v1}, Lcom/kingroot/kinguser/apv$b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
