.class Lcom/kingroot/kinguser/ajt$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ajt;->b(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic auq:Lcom/kingroot/kinguser/ajt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ajt;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kingroot/kinguser/ajt$1;->auq:Lcom/kingroot/kinguser/ajt;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 4
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 126
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/kingroot/kinguser/ajt$1;->auq:Lcom/kingroot/kinguser/ajt;

    iget-object v2, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRp:Ljava/lang/String;

    iget-object v3, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRo:Ljava/lang/String;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRm:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/kingroot/kinguser/ajt;->e(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
