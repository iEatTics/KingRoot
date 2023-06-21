.class final Lcom/kingroot/kinguser/aiy$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aiy;->a(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic asS:I

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/kingroot/kinguser/aiy$2;->asS:I

    iput-object p2, p0, Lcom/kingroot/kinguser/aiy$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x2

    const/4 v6, 0x1

    .line 182
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 184
    const/4 v2, 0x5

    .line 185
    :try_start_0
    sget v1, Lcom/kingroot/kinguser/aiy;->asQ:I

    .line 187
    iget v4, p0, Lcom/kingroot/kinguser/aiy$2;->asS:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/aix;->q(IZ)I

    move-result v4

    .line 189
    invoke-static {v4}, Lcom/kingroot/kinguser/aix;->dH(I)I

    .line 193
    if-eq v4, v6, :cond_2

    if-eq v4, v0, :cond_2

    .line 194
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/aks;->ET()Z

    move-result v4

    if-nez v4, :cond_2

    .line 197
    const/4 v2, 0x1

    .line 198
    sget-boolean v0, Lcom/kingroot/kinguser/aiy;->asP:Z

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/aiy;->asP:Z

    .line 200
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->c(IIIII)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aiy$2;->val$activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/kingroot/kinguser/activitys/RootProcessActivity;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/kingroot/kinguser/aiy$2;->val$activity:Landroid/app/Activity;

    check-cast v0, Lcom/kingroot/kinguser/activitys/RootProcessActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->cX(I)V

    .line 274
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aiy$2;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->h(Landroid/content/Context;I)V

    .line 213
    new-instance v0, Lcom/kingroot/kinguser/aiy$2$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aiy$2$1;-><init>(Lcom/kingroot/kinguser/aiy$2;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    goto :goto_0

    .line 223
    :cond_2
    iget v4, p0, Lcom/kingroot/kinguser/aiy$2;->asS:I

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 245
    :cond_3
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dr()V

    .line 248
    sget-boolean v0, Lcom/kingroot/kinguser/aiy;->asP:Z

    if-eqz v0, :cond_4

    .line 249
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/aiy;->asP:Z

    .line 250
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->c(IIIII)V

    .line 254
    :cond_4
    new-instance v0, Lcom/kingroot/kinguser/aiy$2$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aiy$2$2;-><init>(Lcom/kingroot/kinguser/aiy$2;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 226
    :cond_5
    iget v4, p0, Lcom/kingroot/kinguser/aiy$2;->asS:I

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v0

    .line 229
    goto :goto_1

    .line 230
    :cond_6
    iget v0, p0, Lcom/kingroot/kinguser/aiy$2;->asS:I

    const/4 v4, 0x4

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 234
    const/4 v2, 0x3

    goto :goto_1

    .line 235
    :cond_7
    iget v0, p0, Lcom/kingroot/kinguser/aiy$2;->asS:I

    const/16 v4, 0x20

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/yx;->B(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move v2, v3

    .line 240
    goto :goto_1
.end method
