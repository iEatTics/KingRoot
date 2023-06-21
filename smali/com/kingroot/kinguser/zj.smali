.class public Lcom/kingroot/kinguser/zj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Ww:Landroid/widget/Toast;

.field private static Wx:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/zj;->Wx:Ljava/lang/Boolean;

    return-void
.end method

.method public static b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 48
    return-void
.end method

.method private static b(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/zj;->Ww:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 118
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/zj;->Ww:Landroid/widget/Toast;

    .line 125
    :goto_1
    sget-object v0, Lcom/kingroot/kinguser/zj;->Ww:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/kingroot/kinguser/zj;->Ww:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0

    .line 121
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/zj;->Ww:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 122
    sget-object v0, Lcom/kingroot/kinguser/zj;->Ww:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static c(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Lcom/kingroot/kinguser/zj;->pt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 251
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/kingroot/kinguser/zj$1;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/zj$1;-><init>(Ljava/lang/CharSequence;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method static synthetic d(Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static ps()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 220
    sget-object v1, Lcom/kingroot/kinguser/zj;->Wx:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 222
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 223
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/kingroot/kinguser/zj;->Wx:Ljava/lang/Boolean;

    .line 224
    sget-object v1, Lcom/kingroot/kinguser/zj;->Wx:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 230
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 223
    goto :goto_0

    .line 230
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/zj;->Wx:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 225
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static pt()Z
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ih()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/zj;->ps()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static show(I)V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 39
    return-void
.end method
