.class Lcom/kingroot/kinguser/aww$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aww;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVP:Lcom/kingroot/kinguser/aww;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aww;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 144
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->a(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->b(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->c(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    invoke-static {}, Lcom/kingroot/kinguser/ahe;->wL()Lcom/kingroot/kinguser/ahe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahe;->wJ()Ljava/util/Map;

    move-result-object v8

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Eq()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move v3, v6

    .line 155
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    .line 156
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/kingroot/kinguser/arv;->getAllRiskApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/awc;->SB()Lcom/kingroot/kinguser/awc;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/awc;->hn(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 164
    iget-object v2, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move v3, v7

    .line 153
    goto :goto_0

    .line 167
    :cond_2
    invoke-static {v8}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    :goto_2
    return-void

    .line 171
    :cond_3
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/aww;->a(Lcom/kingroot/kinguser/aww;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;Ljava/util/Map;)Lcom/kingroot/kinguser/aga$a;

    goto :goto_3

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->a(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->a(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v1}, Lcom/kingroot/kinguser/aww;->d(Lcom/kingroot/kinguser/aww;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->a(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aga$c;

    .line 178
    iput-boolean v6, v0, Lcom/kingroot/kinguser/aga$c;->ajE:Z

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->e(Lcom/kingroot/kinguser/aww;)Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070021

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v2}, Lcom/kingroot/kinguser/aww;->a(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/kingroot/kinguser/aga$e;->fo(Ljava/lang/String;)Lcom/kingroot/kinguser/aga$e;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v1}, Lcom/kingroot/kinguser/aww;->c(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->c(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v1}, Lcom/kingroot/kinguser/aww;->a(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->b(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->b(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v1}, Lcom/kingroot/kinguser/aww;->d(Lcom/kingroot/kinguser/aww;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->b(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aga$c;

    .line 190
    iput-boolean v6, v0, Lcom/kingroot/kinguser/aga$c;->ajE:Z

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->e(Lcom/kingroot/kinguser/aww;)Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v2}, Lcom/kingroot/kinguser/aww;->b(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/kingroot/kinguser/aga$e;->fo(Ljava/lang/String;)Lcom/kingroot/kinguser/aga$e;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v1}, Lcom/kingroot/kinguser/aww;->c(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v0}, Lcom/kingroot/kinguser/aww;->c(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aww$3;->aVP:Lcom/kingroot/kinguser/aww;

    invoke-static {v1}, Lcom/kingroot/kinguser/aww;->b(Lcom/kingroot/kinguser/aww;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    :cond_6
    new-instance v0, Lcom/kingroot/kinguser/aww$3$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aww$3$1;-><init>(Lcom/kingroot/kinguser/aww$3;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_2
.end method
