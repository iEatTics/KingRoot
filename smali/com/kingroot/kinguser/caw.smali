.class Lcom/kingroot/kinguser/caw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# instance fields
.field final synthetic bWC:Lcom/kingroot/kinguser/cav;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cav;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/kingroot/kinguser/caw;->bWC:Lcom/kingroot/kinguser/cav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 130
    instance-of v0, p5, Lcom/kingroot/kinguser/ck;

    if-eqz v0, :cond_0

    .line 131
    check-cast p5, Lcom/kingroot/kinguser/ck;

    .line 136
    iget v0, p5, Lcom/kingroot/kinguser/ck;->lJ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ol;->fZ()Lcom/kingroot/kinguser/ol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ol;->gd()Lcom/kingroot/kinguser/cas;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 148
    iget v1, p5, Lcom/kingroot/kinguser/ck;->lT:I

    if-ne v1, v2, :cond_2

    .line 150
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/cas;->dm(Z)V

    .line 152
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cas;->Tk()Lcom/kingroot/kinguser/cg;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    new-instance v1, Lcom/kingroot/kinguser/cax;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/cax;-><init>(Lcom/kingroot/kinguser/caw;Lcom/kingroot/kinguser/cg;)V

    .line 160
    invoke-virtual {v1}, Lcom/kingroot/kinguser/cax;->ny()Z

    goto :goto_0

    .line 162
    :cond_2
    iget v1, p5, Lcom/kingroot/kinguser/ck;->lT:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cas;->dm(Z)V

    goto :goto_0
.end method
