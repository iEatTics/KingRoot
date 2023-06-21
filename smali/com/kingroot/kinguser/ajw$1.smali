.class Lcom/kingroot/kinguser/ajw$1;
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
    .line 77
    iput-object p1, p0, Lcom/kingroot/kinguser/ajw$1;->auA:Lcom/kingroot/kinguser/ajw;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 8
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 80
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ajw$1;->auA:Lcom/kingroot/kinguser/ajw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajw;->zE()I

    move-result v4

    .line 88
    const/4 v0, 0x3

    if-eq v4, v0, :cond_0

    .line 93
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v1

    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 103
    if-nez v5, :cond_6

    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/kingroot/kinguser/avs;->RY()Lcom/kingroot/kinguser/avs;

    move-result-object v1

    const/16 v6, 0x10

    .line 107
    invoke-virtual {v1, v6}, Lcom/kingroot/kinguser/avs;->ha(I)Ljava/util/List;

    move-result-object v1

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 119
    :goto_1
    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/ajw$1;->auA:Lcom/kingroot/kinguser/ajw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajw;->zI()Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 123
    if-ne v5, v2, :cond_4

    .line 124
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->CJ()V

    .line 128
    :cond_3
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/bgq;->abS()Lcom/kingroot/kinguser/bgq;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bgq;->iK(I)Z

    move-result v1

    .line 129
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 147
    :pswitch_1
    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/kingroot/kinguser/ajw$1;->auA:Lcom/kingroot/kinguser/ajw;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ajw;->p(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 125
    :cond_4
    const/4 v1, 0x2

    if-ne v5, v1, :cond_3

    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->CL()V

    goto :goto_2

    .line 132
    :pswitch_2
    iget-object v1, p0, Lcom/kingroot/kinguser/ajw$1;->auA:Lcom/kingroot/kinguser/ajw;

    invoke-virtual {v1, v0, v7}, Lcom/kingroot/kinguser/ajw;->c(Ljava/util/List;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 136
    :pswitch_3
    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/kingroot/kinguser/ajw$1;->auA:Lcom/kingroot/kinguser/ajw;

    invoke-virtual {v1, v0, v7}, Lcom/kingroot/kinguser/ajw;->c(Ljava/util/List;Ljava/util/Map;)V

    .line 143
    iget-object v1, p0, Lcom/kingroot/kinguser/ajw$1;->auA:Lcom/kingroot/kinguser/ajw;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ajw;->p(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 155
    :pswitch_4
    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/kingroot/kinguser/ajw$1;->auA:Lcom/kingroot/kinguser/ajw;

    invoke-virtual {v1, v0, v7}, Lcom/kingroot/kinguser/ajw;->c(Ljava/util/List;Ljava/util/Map;)V

    .line 163
    iget-object v1, p0, Lcom/kingroot/kinguser/ajw$1;->auA:Lcom/kingroot/kinguser/ajw;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ajw;->p(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
