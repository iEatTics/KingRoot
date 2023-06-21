.class public Lcom/kingroot/kinguser/qj$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/qj$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/qj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field final synthetic Em:Lcom/kingroot/kinguser/qj;

.field final En:Lcom/kingroot/kinguser/qj$e;

.field protected final Er:F

.field protected final Es:F

.field Et:I


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/qj;FF)V
    .locals 1

    .prologue
    .line 230
    iput-object p1, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    invoke-virtual {p1}, Lcom/kingroot/kinguser/qj;->hn()Lcom/kingroot/kinguser/qj$e;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/qj$g;->En:Lcom/kingroot/kinguser/qj$e;

    .line 232
    iput p2, p0, Lcom/kingroot/kinguser/qj$g;->Er:F

    .line 233
    iput p3, p0, Lcom/kingroot/kinguser/qj$g;->Es:F

    .line 234
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v0, v0, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    iget v0, v0, Lcom/kingroot/kinguser/qj$f;->Eq:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, v1, Lcom/kingroot/kinguser/qj;->Eb:Lcom/kingroot/kinguser/qj$b;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/qj;->a(Lcom/kingroot/kinguser/qj$c;)V

    .line 286
    :cond_0
    :goto_0
    return v8

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v0, v0, Lcom/kingroot/kinguser/qj;->DY:Lcom/kingroot/kinguser/qm;

    invoke-interface {v0}, Lcom/kingroot/kinguser/qm;->getView()Landroid/view/View;

    move-result-object v1

    .line 254
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->En:Lcom/kingroot/kinguser/qj$e;

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/qj$e;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->En:Lcom/kingroot/kinguser/qj$e;

    iget v2, v0, Lcom/kingroot/kinguser/qj$e;->Eo:F

    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->En:Lcom/kingroot/kinguser/qj$e;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/qj$e;->Ep:Z

    iget-object v3, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v3, v3, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    iget-boolean v3, v3, Lcom/kingroot/kinguser/qj$f;->Ep:Z

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/kingroot/kinguser/qj$g;->Er:F

    :goto_1
    div-float v0, v2, v0

    .line 260
    iget-object v2, p0, Lcom/kingroot/kinguser/qj$g;->En:Lcom/kingroot/kinguser/qj$e;

    iget v2, v2, Lcom/kingroot/kinguser/qj$e;->Eg:F

    add-float/2addr v2, v0

    .line 265
    iget-object v3, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v3, v3, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    iget-boolean v3, v3, Lcom/kingroot/kinguser/qj$f;->Ep:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kingroot/kinguser/qj$g;->En:Lcom/kingroot/kinguser/qj$e;

    iget-boolean v3, v3, Lcom/kingroot/kinguser/qj$e;->Ep:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v3, v3, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    iget v3, v3, Lcom/kingroot/kinguser/qj$f;->Eg:F

    cmpg-float v3, v2, v3

    if-lez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v3, v3, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    iget-boolean v3, v3, Lcom/kingroot/kinguser/qj$f;->Ep:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/kingroot/kinguser/qj$g;->En:Lcom/kingroot/kinguser/qj$e;

    iget-boolean v3, v3, Lcom/kingroot/kinguser/qj$e;->Ep:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v3, v3, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    iget v3, v3, Lcom/kingroot/kinguser/qj$f;->Eg:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_5

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v2, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v2, v2, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    iget v2, v2, Lcom/kingroot/kinguser/qj$f;->Eg:F

    invoke-virtual {v0, v1, v2, p1}, Lcom/kingroot/kinguser/qj;->a(Landroid/view/View;FLandroid/view/MotionEvent;)V

    .line 268
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v0, v0, Lcom/kingroot/kinguser/qj;->Ee:Lcom/kingroot/kinguser/qh;

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget v2, p0, Lcom/kingroot/kinguser/qj$g;->Et:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/qh;->a(Lcom/kingroot/kinguser/qf;IF)V

    .line 270
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, v1, Lcom/kingroot/kinguser/qj;->DZ:Lcom/kingroot/kinguser/qj$d;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/qj;->a(Lcom/kingroot/kinguser/qj$c;)V

    goto :goto_0

    .line 259
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/qj$g;->Es:F

    goto :goto_1

    .line 274
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 275
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 278
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 279
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    .line 280
    iget-object v3, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    long-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, v3, Lcom/kingroot/kinguser/qj;->Ef:F

    .line 283
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/qj;->a(Landroid/view/View;F)V

    .line 284
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v0, v0, Lcom/kingroot/kinguser/qj;->Ee:Lcom/kingroot/kinguser/qh;

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget v3, p0, Lcom/kingroot/kinguser/qj$g;->Et:I

    invoke-interface {v0, v1, v3, v2}, Lcom/kingroot/kinguser/qh;->a(Lcom/kingroot/kinguser/qf;IF)V

    goto/16 :goto_0
.end method

.method public b(Lcom/kingroot/kinguser/qj$c;)V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v0, v0, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/qj$f;->Ep:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/kingroot/kinguser/qj$g;->Et:I

    .line 300
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v0, v0, Lcom/kingroot/kinguser/qj;->Ed:Lcom/kingroot/kinguser/qg;

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    invoke-interface {p1}, Lcom/kingroot/kinguser/qj$c;->hq()I

    move-result v2

    invoke-virtual {p0}, Lcom/kingroot/kinguser/qj$g;->hq()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/qg;->a(Lcom/kingroot/kinguser/qf;II)V

    .line 301
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$g;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, v1, Lcom/kingroot/kinguser/qj;->Eb:Lcom/kingroot/kinguser/qj$b;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/qj;->a(Lcom/kingroot/kinguser/qj$c;)V

    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public hq()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/kingroot/kinguser/qj$g;->Et:I

    return v0
.end method
