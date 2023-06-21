.class Lcom/kingroot/kinguser/awb$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aUG:Lcom/kingroot/kinguser/awb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awb;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/kingroot/kinguser/awb$2;->aUG:Lcom/kingroot/kinguser/awb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 7
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 162
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 165
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 166
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 171
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 172
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 179
    :cond_2
    const/4 v3, -0x1

    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/bbt;->getRuleType(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 184
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v6, v4, v5}, Lcom/kingroot/kinguser/bbt;->updateRule(Ljava/lang/String;IJ)V

    .line 185
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v3, 0x1882d

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 189
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/awb;->d(Ljava/util/Set;)V

    goto :goto_0
.end method
