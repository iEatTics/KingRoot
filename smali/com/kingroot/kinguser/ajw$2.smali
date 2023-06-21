.class Lcom/kingroot/kinguser/ajw$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ajw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic auA:Lcom/kingroot/kinguser/ajw;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ajw;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/kingroot/kinguser/ajw$2;->auA:Lcom/kingroot/kinguser/ajw;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 175
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 178
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v1

    .line 184
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 192
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 196
    invoke-static {}, Lcom/kingroot/kinguser/avs;->RY()Lcom/kingroot/kinguser/avs;

    move-result-object v1

    const/16 v4, 0x20

    .line 197
    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/avs;->ha(I)Ljava/util/List;

    move-result-object v1

    .line 198
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/ajw$2;->auA:Lcom/kingroot/kinguser/ajw;

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/ajw;->a(Lcom/kingroot/kinguser/ajw;II)V

    goto :goto_0
.end method
