.class Lcom/kingroot/kinguser/bbe$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic beM:Lcom/kingroot/kinguser/bbe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbe;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/kingroot/kinguser/bbe$2;->beM:Lcom/kingroot/kinguser/bbe;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/bbe$2;->beM:Lcom/kingroot/kinguser/bbe;

    invoke-static {v0}, Lcom/kingroot/kinguser/bbe;->a(Lcom/kingroot/kinguser/bbe;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->d(Ljava/lang/Runnable;)V

    .line 141
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiv;->yz()Z

    move-result v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v1

    .line 145
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/akl;->ed(I)V

    .line 146
    invoke-virtual {v1, v4, v5}, Lcom/kingroot/kinguser/akl;->aA(J)V

    .line 147
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/akl;->ec(I)V

    .line 148
    invoke-virtual {v1, v4, v5}, Lcom/kingroot/kinguser/akl;->az(J)V

    .line 152
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/baj;->Vv()Lcom/kingroot/kinguser/baj;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/baj;->pullPluginOrderAsync(Z)V

    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aii;->xO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ahl;->xo()Z

    move-result v1

    .line 157
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/akr;->BL()Lcom/kingroot/kinguser/akr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/akr;->BM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adm;->sy()V

    .line 163
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aon;->Kg()Lcom/kingroot/kinguser/aon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aon;->Ki()V

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/bct;->Yf()V

    .line 168
    invoke-static {}, Lcom/kingroot/kinguser/aih;->xI()Lcom/kingroot/kinguser/aih;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aih;->aK(Z)V

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/avd;->Rq()Lcom/kingroot/kinguser/ave;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/ave;->Rl()V

    .line 173
    invoke-static {}, Lcom/kingroot/kinguser/ahg;->wT()Lcom/kingroot/kinguser/ahg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahg;->refresh()V

    .line 176
    invoke-static {}, Lcom/kingroot/kinguser/bfo;->aau()Lcom/kingroot/kinguser/bfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfo;->aav()V

    .line 179
    invoke-static {}, Lcom/kingroot/kinguser/bfp;->aay()Lcom/kingroot/kinguser/bfp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfp;->aaz()V

    .line 182
    invoke-static {}, Lcom/kingroot/kinguser/ama;->HV()Lcom/kingroot/kinguser/ama;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ama;->rW()V

    .line 185
    invoke-static {}, Lcom/kingroot/kinguser/bfm;->aah()Lcom/kingroot/kinguser/bfi;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/bfi;->ZU()V

    .line 189
    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/amu;->Hu()V

    .line 191
    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/amu;->Ht()V

    .line 193
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->BG()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    .line 195
    if-eqz v0, :cond_2

    .line 196
    invoke-static {}, Lcom/kingroot/kinguser/als;->Hi()Lcom/kingroot/kinguser/amt;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/amt;->Hm()V

    .line 197
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->aG(J)V

    .line 200
    :cond_2
    return-void
.end method
