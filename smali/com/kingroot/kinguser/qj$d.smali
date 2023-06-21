.class public Lcom/kingroot/kinguser/qj$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic Em:Lcom/kingroot/kinguser/qj;

.field final En:Lcom/kingroot/kinguser/qj$e;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/qj;)V
    .locals 1

    .prologue
    .line 166
    iput-object p1, p0, Lcom/kingroot/kinguser/qj$d;->Em:Lcom/kingroot/kinguser/qj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-virtual {p1}, Lcom/kingroot/kinguser/qj;->hn()Lcom/kingroot/kinguser/qj$e;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/qj$d;->En:Lcom/kingroot/kinguser/qj$e;

    .line 168
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lcom/kingroot/kinguser/qj$d;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, v1, Lcom/kingroot/kinguser/qj;->DY:Lcom/kingroot/kinguser/qm;

    invoke-interface {v1}, Lcom/kingroot/kinguser/qm;->getView()Landroid/view/View;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/kingroot/kinguser/qj$d;->En:Lcom/kingroot/kinguser/qj$e;

    invoke-virtual {v2, v1, p1}, Lcom/kingroot/kinguser/qj$e;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/qj$d;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, v1, Lcom/kingroot/kinguser/qj;->DY:Lcom/kingroot/kinguser/qm;

    invoke-interface {v1}, Lcom/kingroot/kinguser/qm;->hs()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$d;->En:Lcom/kingroot/kinguser/qj$e;

    iget-boolean v1, v1, Lcom/kingroot/kinguser/qj$e;->Ep:Z

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/qj$d;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, v1, Lcom/kingroot/kinguser/qj;->DY:Lcom/kingroot/kinguser/qm;

    .line 185
    invoke-interface {v1}, Lcom/kingroot/kinguser/qm;->ht()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$d;->En:Lcom/kingroot/kinguser/qj$e;

    iget-boolean v1, v1, Lcom/kingroot/kinguser/qj$e;->Ep:Z

    if-nez v1, :cond_0

    .line 188
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/qj$d;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, v1, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/qj$f;->Eq:I

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$d;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v0, v0, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$d;->En:Lcom/kingroot/kinguser/qj$e;

    iget v1, v1, Lcom/kingroot/kinguser/qj$e;->Eg:F

    iput v1, v0, Lcom/kingroot/kinguser/qj$f;->Eg:F

    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$d;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v0, v0, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$d;->En:Lcom/kingroot/kinguser/qj$e;

    iget-boolean v1, v1, Lcom/kingroot/kinguser/qj$e;->Ep:Z

    iput-boolean v1, v0, Lcom/kingroot/kinguser/qj$f;->Ep:Z

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$d;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$d;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, v1, Lcom/kingroot/kinguser/qj;->Ea:Lcom/kingroot/kinguser/qj$g;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/qj;->a(Lcom/kingroot/kinguser/qj$c;)V

    .line 193
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$d;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v0, v0, Lcom/kingroot/kinguser/qj;->Ea:Lcom/kingroot/kinguser/qj$g;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qj$g;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lcom/kingroot/kinguser/qj$c;)V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$d;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v0, v0, Lcom/kingroot/kinguser/qj;->Ed:Lcom/kingroot/kinguser/qg;

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$d;->Em:Lcom/kingroot/kinguser/qj;

    invoke-interface {p1}, Lcom/kingroot/kinguser/qj$c;->hq()I

    move-result v2

    invoke-virtual {p0}, Lcom/kingroot/kinguser/qj$d;->hq()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/qg;->a(Lcom/kingroot/kinguser/qf;II)V

    .line 208
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public hq()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method
