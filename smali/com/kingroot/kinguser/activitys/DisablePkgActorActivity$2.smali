.class Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 12
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 86
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 88
    :try_start_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v10, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->a(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)I

    move-result v1

    if-nez v1, :cond_4

    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/ajv;->zD()Lcom/kingroot/kinguser/ajv;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/kingroot/kinguser/ajv;->c(Ljava/util/List;Ljava/util/Map;)V

    .line 114
    :cond_2
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->a(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)I

    move-result v1

    if-ne v1, v11, :cond_7

    .line 116
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_c

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->b(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;

    .line 129
    iget-object v2, v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->pkgName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 130
    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->appName:Ljava/lang/String;

    :goto_3
    move-object v1, v0

    .line 132
    goto :goto_2

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->a(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)I

    move-result v1

    if-ne v1, v10, :cond_5

    .line 101
    invoke-static {}, Lcom/kingroot/kinguser/ajv;->zD()Lcom/kingroot/kinguser/ajv;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/kingroot/kinguser/ajv;->a(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_1

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0

    .line 102
    :cond_5
    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->a(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)I

    move-result v1

    if-ne v1, v11, :cond_2

    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v4

    .line 105
    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->b(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;

    .line 106
    if-eqz v1, :cond_6

    iget-object v6, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->pkgName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 107
    iget-object v6, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 109
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "pm enable %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v1, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->pkgName:Ljava/lang/String;

    aput-object v1, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    goto :goto_4

    .line 118
    :cond_7
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 120
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 121
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 133
    :cond_9
    if-eqz v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->a(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    .line 135
    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->a(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)I

    move-result v0

    if-ne v0, v11, :cond_b

    .line 136
    :cond_a
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f0700ce

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wk;->do(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_b
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f07009a

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wk;->do(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->b(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;

    .line 144
    iget-object v2, v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->pkgName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 145
    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->appName:Ljava/lang/String;

    :goto_7
    move-object v1, v0

    .line 147
    goto :goto_6

    .line 148
    :cond_d
    if-eqz v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->a(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;->ais:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;

    .line 150
    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->a(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)I

    move-result v0

    if-ne v0, v11, :cond_f

    .line 151
    :cond_e
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f0700cf

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wk;->do(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_f
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f07009b

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wk;->do(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    goto :goto_7

    :cond_11
    move-object v0, v1

    goto/16 :goto_3
.end method
