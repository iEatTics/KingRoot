.class public Lcom/kingroot/kinguser/ass;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static Oq()V
    .locals 9

    .prologue
    .line 181
    new-instance v7, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    const-string v0, "extra_start_from"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingroot/kinguser/ast;->bd(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070164

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070163

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070162

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v0 .. v8}, Lcom/kingroot/kinguser/adm;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/content/Intent;Z)V

    .line 192
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DS()V

    .line 193
    return-void
.end method

.method public static bb(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 78
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 96
    :goto_0
    return v0

    .line 83
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 85
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 88
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 91
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 93
    if-ne v5, v3, :cond_2

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 94
    goto :goto_0

    :cond_2
    move v0, v2

    .line 96
    goto :goto_0
.end method

.method public static bc(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGuideActivityDialog;->bg(Ljava/util/List;)V

    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bg(J)V

    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DQ()V

    .line 118
    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DO()J

    move-result-wide v0

    .line 214
    const-wide/32 v4, 0xf731400

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    .line 216
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->DP()I

    move-result v1

    .line 219
    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-lt v1, v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/ass;->iK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    if-nez v1, :cond_3

    .line 226
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187b0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 231
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/kingroot/kinguser/ass;->bc(Ljava/util/List;)V

    .line 233
    invoke-static {p0}, Lcom/kingroot/kinguser/ass;->iJ(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/kingroot/kinguser/asz;->OL()Lcom/kingroot/kinguser/asz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asz;->OM()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ate;->iX(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_3
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 229
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187b2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1
.end method

.method public static iI(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/kingroot/kinguser/asz;->OL()Lcom/kingroot/kinguser/asz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asz;->OM()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ate;->iZ(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static iJ(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/asz;->OL()Lcom/kingroot/kinguser/asz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asz;->OM()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ate;->jb(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static iK(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/asz;->OL()Lcom/kingroot/kinguser/asz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asz;->OM()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ate;->ja(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const-string v1, "com.tencent.qqpimsecure"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static iL(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DR()I

    move-result v0

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->DO()J

    move-result-wide v2

    .line 166
    invoke-static {v2, v3}, Lcom/kingroot/kinguser/ass;->isToday(J)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/ass;->iK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/kingroot/kinguser/ass;->Oq()V

    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187ae

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 174
    invoke-static {p0}, Lcom/kingroot/kinguser/ass;->iJ(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/kingroot/kinguser/asz;->OL()Lcom/kingroot/kinguser/asz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asz;->OM()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ate;->iX(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static iM(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcom/kingroot/kinguser/asz;->OL()Lcom/kingroot/kinguser/asz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asz;->OM()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    .line 201
    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ate;->iW(Ljava/lang/String;)V

    .line 202
    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ate;->iY(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 205
    invoke-static {v0}, Lcom/kingroot/kinguser/ass;->bb(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {p0}, Lcom/kingroot/kinguser/ass;->iI(Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method private static isToday(J)Z
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x1

    .line 239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 240
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 242
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 243
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 245
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 247
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 248
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 249
    if-ne v2, v4, :cond_0

    if-ne v3, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized l(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 121
    const-class v2, Lcom/kingroot/kinguser/ass;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    if-nez p0, :cond_1

    .line 160
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 125
    :cond_1
    :try_start_1
    const-string v0, "app_info"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 126
    const-string v1, "last_app"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 127
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 130
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 137
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/aks;->ha(Ljava/lang/String;)V

    .line 143
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aks;->DT()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OH()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 147
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OH()Ljava/util/List;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 150
    invoke-static {v0}, Lcom/kingroot/kinguser/ass;->iM(Ljava/lang/String;)V

    .line 153
    :cond_3
    if-eqz v3, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {v1, v3}, Lcom/kingroot/kinguser/ass;->d(Ljava/lang/String;Ljava/util/List;)V

    .line 155
    invoke-static {v1}, Lcom/kingroot/kinguser/ass;->iL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
