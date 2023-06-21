.class Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/high16 v8, 0x43610000    # 225.0f

    const/high16 v7, 0x42340000    # 45.0f

    const v2, 0x3b03126f    # 0.002f

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v5, 0x43340000    # 180.0f

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v0

    cmpg-float v0, v0, v6

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    .line 178
    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v0

    const/high16 v1, 0x43870000    # 270.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    .line 179
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->XG()F

    move-result v0

    add-float/2addr v0, v2

    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->B(F)F

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v1

    invoke-static {}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->XG()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;F)F

    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;F)F

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_6

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->b(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    .line 193
    invoke-static {v2}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v2

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v3}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->b(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v3

    iget-object v4, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v4}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->c(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 192
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->b(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;F)F

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    .line 199
    invoke-static {v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v2}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->d(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)I

    move-result v2

    iget-object v3, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    .line 200
    invoke-static {v3}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->e(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)I

    move-result v3

    .line 198
    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/bce;->a(FII)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;I)I

    .line 214
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v0

    cmpg-float v0, v7, v0

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v0

    const/high16 v1, 0x43070000    # 135.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    .line 216
    invoke-static {v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v1

    sub-float/2addr v1, v7

    div-float/2addr v1, v6

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    .line 217
    invoke-static {v2}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->f(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)I

    move-result v2

    iget-object v3, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v3}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->g(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)I

    move-result v3

    .line 215
    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/bce;->a(FII)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->b(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;I)I

    .line 225
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->invalidate()V

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 230
    :cond_4
    return-void

    .line 181
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->XG()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->B(F)F

    goto/16 :goto_0

    .line 203
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->c(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    .line 204
    invoke-static {v2}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v2

    sub-float/2addr v2, v5

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v3}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->b(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v3

    iget-object v4, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v4}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->c(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 203
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->b(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;F)F

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    .line 210
    invoke-static {v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v1

    sub-float/2addr v1, v5

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    .line 211
    invoke-static {v2}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->e(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)I

    move-result v2

    iget-object v3, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v3}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->d(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)I

    move-result v3

    .line 209
    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/bce;->a(FII)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;I)I

    goto/16 :goto_1

    .line 219
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v0

    cmpg-float v0, v8, v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v0

    const v1, 0x439d8000    # 315.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    .line 221
    invoke-static {v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F

    move-result v1

    sub-float/2addr v1, v8

    div-float/2addr v1, v6

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    .line 222
    invoke-static {v2}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->g(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)I

    move-result v2

    iget-object v3, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;->bic:Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;

    invoke-static {v3}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->f(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)I

    move-result v3

    .line 220
    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/bce;->a(FII)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->b(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;I)I

    goto/16 :goto_2
.end method
